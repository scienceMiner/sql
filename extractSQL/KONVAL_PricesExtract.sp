
if exists (
	select
		name
	from
		sysobjects
	where
		type = 'P' and
		name = 'KONVAL_PricesExtract' and
		uid = user_id()
	)
begin
	drop procedure KONVAL_PricesExtract
end
go

create procedure KONVAL_PricesExtract
(
	@BusinessDate	datetime
)
as
begin

	declare
		@Message	varchar( 255 )

	exec KONVAL_InsertBatchLog "<Info> Starting bond prices extract."

	insert into KONVAL_Prices
		(
			PriceBid,
			EffectiveDate,
			SecurityId,
			Source
		)
		select
				q.MarketPriceBid,
				q.Date,
				b.Bonds_ShortName,
				'KB'
			from
				kplus..BondsQuotes q,
				kplus..Bonds b
			where
				q.Bonds_Id = b.Bonds_Id
				and q.Date = @BusinessDate
			group by
				q.Bonds_Id,
				b.Bonds_ShortName
			having
				q.Date = max( q.Date )

	select @Message = "<Info> Finished bond prices extract. " + rtrim( convert( char(6), @@rowcount ) ) + " record(s)."
	exec KONVAL_InsertBatchLog @Message

	exec KONVAL_InsertBatchLog "<Info> Starting MBS/ABS prices extract."

	insert into KONVAL_Prices
		(
			PriceBid,
			EffectiveDate,
			SecurityId,
			Source
		)
		select
				m.CleanPriceBid,
				@BusinessDate,
				m.MbsAbsTranches_ShortName,
				'KM'
			from
				kplus..MbsAbsTranches m,
				kplus..MbsAbsIssues i
			where
				i.MbsAbsIssues_Id = m.MbsAbsIssues_Id
				and m.StatedMaturityDate >= @BusinessDate

	select @Message = "<Info> Finished MBS/ABS prices extract. " + rtrim( convert( char(6), @@rowcount ) ) + " record(s)."
	exec KONVAL_InsertBatchLog @Message

	return @@error
end
go

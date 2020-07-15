if exists (
	select
		name
	from
		sysobjects
	where
		type = 'P' and
		name = 'KONVAL_InsertBatchLog' and
		uid = user_id()
	)
begin
	drop procedure KONVAL_InsertBatchLog
end
go

create procedure KONVAL_InsertBatchLog
(
	@LogMessage	varchar( 100 )
)
as
begin

	insert into KONVAL_BatchLog
	(
		LogMessage,
		TimeStamp,
		ReadByMonitorScript
	)
	values
	(
		@LogMessage,
		getdate(),
		'N'
	)

	return @@error
end
go

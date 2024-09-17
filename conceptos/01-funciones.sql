create or replace
function duplicate_records()
returns trigger 
language plpgsql
as $$
begin
insert
	into
	aaab(bbb,
	ccc)
values(new.bbb,
new.ccc);
return new;
end
$$;
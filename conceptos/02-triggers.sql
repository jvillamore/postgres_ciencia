create trigger table_changes
before insert 
on actores 
for each row 
execute procedure duplicate_records()
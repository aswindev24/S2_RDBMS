delimiter //
create trigger triggername after delete phonebook for each row
begin
insert into deletephonebook(pname,city,moddate) values ( old.pname,old.city,sysdate())
end;
//
delete from phonebook where pname="fidha";
Select * from deletephonebook;

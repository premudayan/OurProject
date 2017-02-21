/**
INSERT INTO LookupType (TypeCode, TypeDescription,Status ) VALUES ( 'ADDRESSTYPE', 'Address Type', 'ACTIVE' );
INSERT INTO LookupType (TypeCode, TypeDescription,Status ) VALUES ( 'PHONETYPE', 'Phone Type', 'ACTIVE' );
INSERT INTO LookupType (TypeCode, TypeDescription,Status ) VALUES ( 'EMAILTYPE', 'Email Type', 'ACTIVE' );
	

insert into lookupvalue ( LookupTypeid, valuecode, valuedescription, status ) values ((select id from LookupType where typecode ='ADDRESSTYPE') , 'H', 'Home', 'ACTIVE' );
insert into lookupvalue ( LookupTypeid, valuecode, valuedescription, status ) values ((select id from LookupType where typecode ='ADDRESSTYPE'), 'W', 'Work', 'ACTIVE' );
insert into lookupvalue ( LookupTypeid, valuecode, valuedescription, status ) values ((select id from LookupType where typecode ='ADDRESSTYPE'), 'B', 'Billing', 'ACTIVE' );
insert into lookupvalue ( LookupTypeid, valuecode, valuedescription, status ) values ((select id from LookupType where typecode ='ADDRESSTYPE'), 'S', 'Shipping', 'ACTIVE' );
insert into lookupvalue ( LookupTypeid, valuecode, valuedescription, status ) values ((select id from LookupType where typecode ='ADDRESSTYPE'), 'C', 'Contract', 'ACTIVE' );


insert into lookupvalue ( LookupTypeid, valuecode, valuedescription, status ) values ((select id from LookupType where typecode ='PHONETYPE'), 'H', 'Home', 'ACTIVE' );
insert into lookupvalue ( LookupTypeid, valuecode, valuedescription, status ) values ((select id from LookupType where typecode ='PHONETYPE'), 'W', 'Work', 'ACTIVE' );
insert into lookupvalue ( LookupTypeid, valuecode, valuedescription, status ) values ((select id from LookupType where typecode ='PHONETYPE'), 'C', 'Cell', 'ACTIVE' );
insert into lookupvalue ( LookupTypeid, valuecode, valuedescription, status ) values ((select id from LookupType where typecode ='PHONETYPE'), 'F', 'Fax', 'ACTIVE' );

insert into lookupvalue ( LookupTypeid, valuecode, valuedescription, status ) values ((select id from LookupType where typecode ='EMAILTYPE'), 'H', 'Home', 'ACTIVE' );
insert into lookupvalue ( LookupTypeid, valuecode, valuedescription, status ) values ((select id from LookupType where typecode ='EMAILTYPE'), 'W', 'Work', 'ACTIVE' );

**/
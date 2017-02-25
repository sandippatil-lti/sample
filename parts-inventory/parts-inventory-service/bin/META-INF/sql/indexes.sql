create index IX_DBC67110 on Inventory_Manufacturer (groupId);
create index IX_5E27EFB0 on Inventory_Manufacturer (resourceBlockId);

create index IX_F67A54AE on Inventory_Part (groupId);
create index IX_F67CB96E on Inventory_Part (manufacturerId, groupId);
create index IX_4685554E on Inventory_Part (resourceBlockId);
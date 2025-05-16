select * from General.tblLavanderia
select * from Logistica.tblVehiculo
select * from RRHH.tblPersona

select * from Locker.tblTaquilla
insert into Locker.tblTaquilla (denominacion, idLavanderia)
values ('Taquilla 2', 13)

select * from Locker.tblEstadosCompartimento
insert into Locker.tblEstadosCompartimento (idEstado, nombreEstado)
values(3, 'Lleno')

select * from Locker.tblCompartimento
insert into Locker.tblCompartimento (idTaquilla, numCompartimento, idEstado)
values (1, 10, 1)

select * from Locker.tblAccion
insert into Locker.tblAccion (nombreAccion)
values ('recoger')



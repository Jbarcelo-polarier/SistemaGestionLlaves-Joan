use bdERP_joan
go
//DROP TABLE [Locker].tblTaquilla
select * from Locker.tblTaquilla
CREATE TABLE [Locker].[tblTaquilla](
	idTaquilla int IDENTITY(1,1) PRIMARY KEY,
	denominacion varchar(225),
	idLavanderia int,
FOREIGN KEY(idLavanderia) REFERENCES [General].tblLavanderia(idLavanderia)
)


//DROP TABLE [Locker].tblEstadosCompartimento
select * from Locker.tblEstadosCompartimento

CREATE TABLE  [Locker].[tblEstadosCompartimento](
	idEstado int PRIMARY KEY,
	nombreEstado varchar(225),
)

//DROP TABLE [LOCKER].tblCompartimento
SELECT * FROM [Locker].tblCompartimento
CREATE TABLE [Locker].tblCompartimento (
	idCompartimento int IDENTITY(1,1) PRIMARY KEY,
	idTaquilla int,
	numCompartimento int ,
	idEstado int,
FOREIGN KEY(idEstado) REFERENCES [Locker].tblEstadosCompartimento(idEstado),
FOREIGN KEY(idTaquilla) REFERENCES [Locker].tblTaquilla(idTaquilla)
)

//DROP TABLE [Locker].tblRegistrosTaquilla
SELECT * FROM [Locker].tblRegistrosTaquilla
CREATE TABLE [Locker].tblRegistrosTaquilla(
	idRegistro int IDENTITY(1,1) PRIMARY KEY,
	idTaquilla int ,
	idCompartimentoAnterior int,
	idCompartimentoActual int,
	idVehiculo int,
	idPersona int,
	idAccion int,
	fecha datetime,
FOREIGN KEY(idCompartimentoAnterior) REFERENCES [Locker].tblCompartimento(idCompartimento),
FOREIGN KEY(idCompartimentoActual) REFERENCES [Locker].tblCompartimento(idCompartimento),
FOREIGN KEY(idVehiculo) REFERENCES [Logistica].tblVehiculo(idVehiculo),
FOREIGN KEY(idPersona) REFERENCES [RRHH].tblPersona(idPersona),
FOREIGN KEY(idAccion) REFERENCES [Locker].tblAccion(idAccion),
FOREIGN KEY(idTaquilla) REFERENCES [Locker].tblTaquilla(idTaquilla),
)

//DROP TABLE [Locker].tblAccion
SELECT * FROM [Locker].tblAccion
CREATE TABLE [Locker]. tblAccion (
	idAccion int IDENTITY(1,1) PRIMARY KEY,
	nombreAccion varchar(225),
)

//DROP TABLE [Locker].tblVehiculoCompartimento
SELECT * FROM [Locker].tblVehiculoCompartimento
CREATE TABLE [Locker].tblVehiculoCompartimento(
	idVehiculo int PRIMARY KEY,
	idCompartimento int,
FOREIGN KEY(idVehiculo) REFERENCES [Logistica].tblVehiculo(idVehiculo),
FOREIGN KEY(idCompartimento) REFERENCES [Locker].tblCompartimento(idCompartimento),
)

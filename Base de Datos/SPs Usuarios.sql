use Applibros
select * from Usuarios

CREATE PROCEDURE SeleccionarUsuarios  --CONSULTA   
AS
SELECT * FROM Usuarios 
GO;

CREATE PROCEDURE SeleccUsuario @usr nvarchar(30), @pwd nvarchar (30) --CONSULTA ID
AS
SELECT * FROM Usuarios WHERE Username = @usr and Password = @pwd
GO

 
CREATE PROCEDURE InsertarUsuario (@nombre nvarchar (30), ------INSERTAR USUARIO 
@apellidos nvarchar (30), @correo nvarchar (30), 
@username nvarchar (30),@password nvarchar (30), 
@rol nvarchar (30)) 
AS
BEGIN 
INSERT INTO Usuarios(Nombre, Apellidos, Correo, Username, Password, Rol)
values (@nombre, @apellidos, @correo, @username, @password, @rol)
END




CREATE PROCEDURE  EliminarUsuario -----------ELIMINAR Usuario
(@Id int)
AS
DELETE FROM Usuarios
where @Id = IdUsuario
GO


CREATE PROCEDURE ActualizarUsuario         ----------------ACTUALIZA LIBRO
(@nombre nvarchar(30), @id int,@apellidos nvarchar (30), 
@correo nvarchar (30),@username nvarchar (30), @password nvarchar (30),
@rol nvarchar (30)) 
AS
UPDATE Usuarios SET Nombre = @nombre, @apellidos = Apellidos,
 @correo = Correo, @username = Username, @password =Password,
 @rol=Rol
where IdUsuario = @id
GO




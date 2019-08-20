Use Applibros
select * from Libros

CREATE PROCEDURE SeleccionarLibros  --CONSULTA   
AS
SELECT * FROM Libros 
GO;

CREATE PROCEDURE SeleccLibros @Titulo nvarchar(30) --CONSULTA ID
AS
SELECT * FROM Libros WHERE Titulo = @Titulo


 
 CREATE PROCEDURE InsertarLibros (@LibroTitulo nvarchar (30), ------INSERTAR LIBRO 
 @Autor nvarchar (30), @Descripcion nvarchar (30), 
 @TotalPaginas int) 
AS
BEGIN 
INSERT INTO Libros(Titulo, Autor, Descripcion, TotalPaginas) values (@LibroTitulo, @Autor, @Descripcion, @TotalPaginas)
END



CREATE PROCEDURE  Eliminarlibro -----------ELIMINAR LIBRO
(@Id int)
AS
DELETE FROM Libros
where @Id = IdLibro
GO


CREATE PROCEDURE ActualizarLibro ----------------ACTUALIZA LIBRO
(@titulo nvarchar(30),@autor nvarchar (30), 
@descripcion nvarchar (30),@totalpaginas int, @id int) 
AS
UPDATE Libros SET @titulo = Titulo, @autor = Autor, @descripcion = Descripcion, @totalpaginas = TotalPaginas 
where IdLibro = @id
GO







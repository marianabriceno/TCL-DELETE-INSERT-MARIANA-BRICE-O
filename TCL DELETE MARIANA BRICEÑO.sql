
SET AUTOCOMMIT = 0;

-- se hace un DELETE de resgistroS de la taba artista id 15 -- 

START TRANSACTION;
	DELETE FROM artist
	WHERE id_artist = 15;
-- SE COMPROBO LA ELIMINACION Y SE HIZO EL ROLLBACK este comando deshará todos los cambios realizados en la transacción hecha recientemente, incluyendo la eliminación de los registro --

ROLLBACK; 

-- SE PROCEDE A HACER EL COMMIT el cual guardara permanentemente los cambios realizados en la base de datos -- 

COMMIT;




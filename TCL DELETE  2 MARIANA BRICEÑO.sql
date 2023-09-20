-- se hace un START  TRANSACTION para eliminar resgistros de la taba artista id 1 -- 

START TRANSACTION;
	DELETE FROM artist
	WHERE id_artist = 1;
    
    ROLLBACK;
    
    COMMIT;
    
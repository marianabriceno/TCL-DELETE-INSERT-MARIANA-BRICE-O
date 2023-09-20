-- se insertan 8 registros nuevos en la tabla albumes en conjunto con los savepoint --

START TRANSACTION;
	INSERT INTO albumes VALUES (36, 'SIEMBRA', 'RUBEN BLADES', 1978, '00:42:47');
    INSERT INTO albumes VALUES (34,'OSIRUS', 'OLD DIRTY BASTARD', 2005, '00:57:05');
    INSERT INTO albumes VALUES (33,'TRUE MAGIC', 'MOS DEF', 2006, '00:52:43');
    SAVEPOINT p1;
    INSERT INTO albumes VALUES (28,'THE RETURN OF EL SANTO','KING CHANGO',2000,'00:55:07');
    INSERT INTO albumes VALUES (14,'LET LOVE', 'COMMON',2019, '00:46:43');
    INSERT INTO albumes VALUES (12,'MORE FIRE', 'CAPLETON', 2000, '00:47:21');
    SAVEPOINT p2;
    INSERT INTO albumes VALUES (8, 'G N R LIES', 'GUNS AND ROSES',1988,'00:33:24');
    INSERT INTO albumes VALUES (27,'EL ASTRONAUTA','REKESON',2017, '01:07:00');
    
    -- SE verifica el savepoint creado --     
    SAVEPOINT p1;
    
    -- SE hace una eliminacion de el savepoint p1, (release savepoint p1) para luego hacer el ROLLBACK Y EL COMMIT -- 

	RELEASE SAVEPOINT p1;
    
    ROLLBACK;
    
    COMMIT;
    

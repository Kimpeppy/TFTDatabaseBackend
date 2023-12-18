DELIMITER //
CREATE PROCEDURE showOrigin (IN champ_origin1 VARCHAR(50),
    IN champ_origin2 VARCHAR(50),
    IN champ_origin3 VARCHAR(50),
    IN champ_origin4 VARCHAR(50),
    IN champ_origin5 VARCHAR(50),
    IN champ_origin6 VARCHAR(50),
    IN champ_origin7 VARCHAR(50),
    IN champ_origin8 VARCHAR(50),
    IN champ_origin9 VARCHAR(50),
    IN champ_origin10 VARCHAR(50),
    IN champ_origin11 VARCHAR(50),
    IN champ_origin12 VARCHAR(50),
    IN champ_origin13 VARCHAR(50),
    IN champ_origin14 VARCHAR(50),
    IN champ_origin15 VARCHAR(50))
BEGIN
    CREATE TABLE origins (
        name VARCHAR(50) NOT NULL,
        cost INT,
        origin VARCHAR(50),
        className1 VARCHAR(50),
        className2 VARCHAR(50)
    );

    INSERT INTO origins (name, cost, origin, className1, className2)
    SELECT name, cost, origin, className1, className2
    FROM Champions
    WHERE origin = champ_origin1
    OR origin = champ_origin2
    OR origin = champ_origin3
    OR origin = champ_origin4
    OR origin = champ_origin5
    OR origin = champ_origin6
    OR origin = champ_origin7
    OR origin = champ_origin8
    OR origin = champ_origin9
    OR origin = champ_origin10
    OR origin = champ_origin11
    OR origin = champ_origin12
    OR origin = champ_origin13
    OR origin = champ_origin14
    OR origin = champ_origin15;

    SELECT * FROM origins;

    DROP TABLE origins;
END //
DELIMITER ;

 
DELIMITER //
CREATE PROCEDURE showCOC (IN champ_cost1 INT, 
    IN champ_cost2 INT, 
    IN champ_cost3 INT, 
    IN champ_cost4 INT, 
    IN champ_cost5 INT,
    IN champ_origin1 VARCHAR(50),
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
    IN champ_origin15 VARCHAR(50),
    IN champ_class1 VARCHAR(50),
    IN champ_class2 VARCHAR(50),
    IN champ_class3 VARCHAR(50),
    IN champ_class4 VARCHAR(50),
    IN champ_class5 VARCHAR(50),
    IN champ_class6 VARCHAR(50),
    IN champ_class7 VARCHAR(50),
    IN champ_class8 VARCHAR(50),
    IN champ_class9 VARCHAR(50),
    IN champ_class10 VARCHAR(50),
    IN champ_class11 VARCHAR(50),
    IN champ_class12 VARCHAR(50),
    IN champ_class13 VARCHAR(50))

BEGIN
    CREATE TABLE COC (
        name VARCHAR(50) NOT NULL,
        cost INT,
        origin VARCHAR(50),
        className1 VARCHAR(50),
        className2 VARCHAR(50)
    );

    INSERT INTO COC (name, cost, origin, className1, className2)
    SELECT name, cost, origin, className1, className2
    FROM Champions
    WHERE (cost = champ_cost1 
    OR cost = champ_cost2 
    OR cost = champ_cost3
    OR cost = champ_cost4
    OR cost = champ_cost5) AND 
    (origin = champ_origin1
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
    OR origin = champ_origin15) AND
    (className1 = champ_class1 OR className2 = champ_class1
    OR className1 = champ_class2 OR className2 = champ_class2
    OR className1 = champ_class3 OR className2 = champ_class3
    OR className1 = champ_class4 OR className2 = champ_class4
    OR className1 = champ_class5 OR className2 = champ_class5
    OR className1 = champ_class6 OR className2 = champ_class6
    OR className1 = champ_class7 OR className2 = champ_class7
    OR className1 = champ_class8 OR className2 = champ_class8
    OR className1 = champ_class9 OR className2 = champ_class9
    OR className1 = champ_class10 OR className2 = champ_class10
    OR className1 = champ_class11 OR className2 = champ_class11
    OR className1 = champ_class12 OR className2 = champ_class12
    OR className1 = champ_class13 OR className2 = champ_class13);

    SELECT * FROM COC;

    DROP TABLE COC;
END //
DELIMITER ;
CALL showCOC(1, 0, 0, 0, 0, 'K/DA', '', '', '', '', '', '', '', '', '', '', '', '', '', '','Crowd Diver' , '', '', '', '', '', '', '', '', '', '', '', '');
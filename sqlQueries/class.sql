DELIMITER //
CREATE PROCEDURE showClass (IN champ_class1 VARCHAR(50),
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
     CREATE TABLE classes (
        name VARCHAR(50) NOT NULL,
        cost INT,
        origin VARCHAR(50),
        className1 VARCHAR(50),
        className2 VARCHAR(50)
    );

    INSERT INTO classes (name, cost, origin, className1, className2)
    SELECT name, cost, origin, className1, className2
    FROM Champions
    WHERE className1 = champ_class1 OR className2 = champ_class1
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
    OR className1 = champ_class13 OR className2 = champ_class13;

   SELECT * FROM classes;

   DROP TABLE classes;

END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE showCOC (IN champ_cost1 INT, 
    IN champ_cost2 INT, 
    IN champ_cost3 INT, 
    IN champ_cost4 INT, 
    IN champ_cost5 INT)

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
    WHERE cost = champ_cost1 
    OR cost = champ_cost2 
    OR cost = champ_cost3
    OR cost = champ_cost4
    OR cost = champ_cost5;

    SELECT * FROM COC;

    DROP TABLE COC;
END //
DELIMITER ;
CALL showCOC(1, 0, 0, 0, 0, 'K/DA', '', '', '', '', '', '', '', '', '', '', '', '', '', '','Crowd Diver' , '', '', '', '', '', '', '', '', '', '', '', '');
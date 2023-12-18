DELIMITER //
CREATE PROCEDURE showGbyP (pID VARCHAR(80), 
                            filterPlace1 INT, 
                            filterPlace2 INT, 
                            filterPlace3 INT, 
                            filterPlace4 INT, 
                            filterPlace5 INT, 
                            filterPlace6 INT, 
                            filterPlace7 INT, 
                            filterPlace8 INT)

BEGIN
    SELECT * FROM pInGT JOIN teamComps ON pInGT.teamID = teamComps.teamID WHERE pID = pInGT.participantID and filterPlace = teamComps.place;
END //
DELIMITER ;

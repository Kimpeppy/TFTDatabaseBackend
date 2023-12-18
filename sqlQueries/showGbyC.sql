DELIMITER //
CREATE PROCEDURE showGbyC (pID VARCHAR(80), 
    champ1 VARCHAR(50), champ2 VARCHAR(50), champ3 VARCHAR(50), champ4 VARCHAR(50), champ5 VARCHAR(50),
    champ6 VARCHAR(50), champ7 VARCHAR(50), champ8 VARCHAR(50), champ9 VARCHAR(50), champ10 VARCHAR(50),
    champ11 VARCHAR(50), champ12 VARCHAR(50), champ13 VARCHAR(50), champ14 VARCHAR(50), champ15 VARCHAR(50),
    champ16 VARCHAR(50), champ17 VARCHAR(50), champ18 VARCHAR(50), champ19 VARCHAR(50), champ20 VARCHAR(50),
    champ21 VARCHAR(50), champ22 VARCHAR(50), champ23 VARCHAR(50), champ24 VARCHAR(50), champ25 VARCHAR(50),
    champ26 VARCHAR(50), champ27 VARCHAR(50), champ28 VARCHAR(50), champ29 VARCHAR(50), champ30 VARCHAR(50),
    champ31 VARCHAR(50), champ32 VARCHAR(50), champ33 VARCHAR(50), champ34 VARCHAR(50), champ35 VARCHAR(50),
    champ36 VARCHAR(50), champ37 VARCHAR(50), champ38 VARCHAR(50), champ39 VARCHAR(50), champ40 VARCHAR(50),
    champ41 VARCHAR(50), champ42 VARCHAR(50), champ43 VARCHAR(50), champ44 VARCHAR(50), champ45 VARCHAR(50),
    champ46 VARCHAR(50), champ47 VARCHAR(50), champ48 VARCHAR(50), champ49 VARCHAR(50), champ50 VARCHAR(50),
    champ51 VARCHAR(50), champ52 VARCHAR(50), champ53 VARCHAR(50), champ54 VARCHAR(50), champ55 VARCHAR(50),
    champ56 VARCHAR(50), champ57 VARCHAR(50), champ58 VARCHAR(50), champ59 VARCHAR(50), champ60 VARCHAR(50))

BEGIN
    SELECT * FROM pInGT JOIN teamComps ON pInGT.teamID = teamComps.teamID WHERE pID = pInGT.participantID 
    AND (champion_name1 = champ1 OR champion_name1 = champ2 OR champion_name1 = champ3 OR champion_name1 = champ4 OR champion_name1 = champ5 OR
        champion_name1 = champ6 OR champion_name1 = champ7 OR champion_name1 = champ8 OR champion_name1 = champ9 OR champion_name1 = champ10 OR
        champion_name1 = champ11 OR champion_name1 = champ12 OR champion_name1 = champ13 OR champion_name1 = champ14 OR champion_name1 = champ15 OR
        champion_name1 = champ16 OR champion_name1 = champ17 OR champion_name1 = champ18 OR champion_name1 = champ19 OR champion_name1 = champ20 OR
        champion_name1 = champ21 OR champion_name1 = champ22 OR champion_name1 = champ23 OR champion_name1 = champ24 OR champion_name1 = champ25 OR
        champion_name1 = champ26 OR champion_name1 = champ27 OR champion_name1 = champ28 OR champion_name1 = champ29 OR champion_name1 = champ30 OR
        champion_name1 = champ31 OR champion_name1 = champ32 OR champion_name1 = champ33 OR champion_name1 = champ34 OR champion_name1 = champ35 OR
        champion_name1 = champ36 OR champion_name1 = champ37 OR champion_name1 = champ38 OR champion_name1 = champ39 OR champion_name1 = champ40 OR
        champion_name1 = champ41 OR champion_name1 = champ42 OR champion_name1 = champ43 OR champion_name1 = champ44 OR champion_name1 = champ45 OR
        champion_name1 = champ46 OR champion_name1 = champ47 OR champion_name1 = champ48 OR champion_name1 = champ49 OR champion_name1 = champ50 OR
        champion_name1 = champ51 OR champion_name1 = champ52 OR champion_name1 = champ53 OR champion_name1 = champ54 OR champion_name1 = champ55 OR
        champion_name1 = champ56 OR champion_name1 = champ57 OR champion_name1 = champ58 OR champion_name1 = champ59 OR champion_name1 = champ60)
    OR (champion_name2 = champ1 OR champion_name2 = champ2 OR champion_name2 = champ3 OR champion_name2 = champ4 OR champion_name2 = champ5 OR
        champion_name2 = champ6 OR champion_name2 = champ7 OR champion_name2 = champ8 OR champion_name2 = champ9 OR champion_name2 = champ10 OR
        champion_name2 = champ11 OR champion_name2 = champ12 OR champion_name2 = champ13 OR champion_name2 = champ14 OR champion_name2 = champ15 OR
        champion_name2 = champ16 OR champion_name2 = champ17 OR champion_name2 = champ18 OR champion_name2 = champ19 OR champion_name2 = champ20 OR
        champion_name2 = champ21 OR champion_name2 = champ22 OR champion_name2 = champ23 OR champion_name2 = champ24 OR champion_name2 = champ25 OR
        champion_name2 = champ26 OR champion_name2 = champ27 OR champion_name2 = champ28 OR champion_name2 = champ29 OR champion_name2 = champ30 OR
        champion_name2 = champ31 OR champion_name2 = champ32 OR champion_name2 = champ33 OR champion_name2 = champ34 OR champion_name2 = champ35 OR
        champion_name2 = champ36 OR champion_name2 = champ37 OR champion_name2 = champ38 OR champion_name2 = champ39 OR champion_name2 = champ40 OR
        champion_name2 = champ41 OR champion_name2 = champ42 OR champion_name2 = champ43 OR champion_name2 = champ44 OR champion_name2 = champ45 OR
        champion_name2 = champ46 OR champion_name2 = champ47 OR champion_name2 = champ48 OR champion_name2 = champ49 OR champion_name2 = champ50 OR
        champion_name2 = champ51 OR champion_name2 = champ52 OR champion_name2 = champ53 OR champion_name2 = champ54 OR champion_name2 = champ55 OR
        champion_name2 = champ56 OR champion_name2 = champ57 OR champion_name2 = champ58 OR champion_name2 = champ59 OR champion_name2 = champ60)
    OR (champion_name3 = champ1 OR champion_name3 = champ2 OR champion_name3 = champ3 OR champion_name3 = champ4 OR champion_name3 = champ5 OR
        champion_name3 = champ6 OR champion_name3 = champ7 OR champion_name3 = champ8 OR champion_name3 = champ9 OR champion_name3 = champ10 OR
        champion_name3 = champ11 OR champion_name3 = champ12 OR champion_name3 = champ13 OR champion_name3 = champ14 OR champion_name3 = champ15 OR
        champion_name3 = champ16 OR champion_name3 = champ17 OR champion_name3 = champ18 OR champion_name3 = champ19 OR champion_name3 = champ20 OR
        champion_name3 = champ21 OR champion_name3 = champ22 OR champion_name3 = champ23 OR champion_name3 = champ24 OR champion_name3 = champ25 OR
        champion_name3 = champ26 OR champion_name3 = champ27 OR champion_name3 = champ28 OR champion_name3 = champ29 OR champion_name3 = champ30 OR
        champion_name3 = champ31 OR champion_name3 = champ32 OR champion_name3 = champ33 OR champion_name3 = champ34 OR champion_name3 = champ35 OR
        champion_name3 = champ36 OR champion_name3 = champ37 OR champion_name3 = champ38 OR champion_name3 = champ39 OR champion_name3 = champ40 OR
        champion_name3 = champ41 OR champion_name3 = champ42 OR champion_name3 = champ43 OR champion_name3 = champ44 OR champion_name3 = champ45 OR
        champion_name3 = champ46 OR champion_name3 = champ47 OR champion_name3 = champ48 OR champion_name3 = champ49 OR champion_name3 = champ50 OR
        champion_name3 = champ51 OR champion_name3 = champ52 OR champion_name3 = champ53 OR champion_name3 = champ54 OR champion_name3 = champ55 OR
        champion_name3 = champ56 OR champion_name3 = champ57 OR champion_name3 = champ58 OR champion_name3 = champ59 OR champion_name3 = champ60)
    OR(champion_name4 = champ1 OR champion_name4 = champ2 OR champion_name4 = champ3 OR champion_name4 = champ4 OR champion_name4 = champ5 OR
        champion_name4 = champ6 OR champion_name4 = champ7 OR champion_name4 = champ8 OR champion_name4 = champ9 OR champion_name4 = champ10 OR
        champion_name4 = champ11 OR champion_name4 = champ12 OR champion_name4 = champ13 OR champion_name4 = champ14 OR champion_name4 = champ15 OR
        champion_name4 = champ16 OR champion_name4 = champ17 OR champion_name4 = champ18 OR champion_name4 = champ19 OR champion_name4 = champ20 OR
        champion_name4 = champ21 OR champion_name4 = champ22 OR champion_name4 = champ23 OR champion_name4 = champ24 OR champion_name4 = champ25 OR
        champion_name4 = champ26 OR champion_name4 = champ27 OR champion_name4 = champ28 OR champion_name4 = champ29 OR champion_name4 = champ30 OR
        champion_name4 = champ31 OR champion_name4 = champ32 OR champion_name4 = champ33 OR champion_name4 = champ34 OR champion_name4 = champ35 OR
        champion_name4 = champ36 OR champion_name4 = champ37 OR champion_name4 = champ38 OR champion_name4 = champ39 OR champion_name4 = champ40 OR
        champion_name4 = champ41 OR champion_name4 = champ42 OR champion_name4 = champ43 OR champion_name4 = champ44 OR champion_name4 = champ45 OR
        champion_name4 = champ46 OR champion_name4 = champ47 OR champion_name4 = champ48 OR champion_name4 = champ49 OR champion_name4 = champ50 OR
        champion_name4 = champ51 OR champion_name4 = champ52 OR champion_name4 = champ53 OR champion_name4 = champ54 OR champion_name4 = champ55 OR
        champion_name4 = champ56 OR champion_name4 = champ57 OR champion_name4 = champ58 OR champion_name4 = champ59 OR champion_name4 = champ60)
    OR(champion_name5 = champ1 OR champion_name5 = champ2 OR champion_name5 = champ3 OR champion_name5 = champ4 OR champion_name5 = champ5 OR
        champion_name5 = champ6 OR champion_name5 = champ7 OR champion_name5 = champ8 OR champion_name5 = champ9 OR champion_name5 = champ10 OR
        champion_name5 = champ11 OR champion_name5 = champ12 OR champion_name5 = champ13 OR champion_name5 = champ14 OR champion_name5 = champ15 OR
        champion_name5 = champ16 OR champion_name5 = champ17 OR champion_name5 = champ18 OR champion_name5 = champ19 OR champion_name5 = champ20 OR
        champion_name5 = champ21 OR champion_name5 = champ22 OR champion_name5 = champ23 OR champion_name5 = champ24 OR champion_name5 = champ25 OR
        champion_name5 = champ26 OR champion_name5 = champ27 OR champion_name5 = champ28 OR champion_name5 = champ29 OR champion_name5 = champ30 OR
        champion_name5 = champ31 OR champion_name5 = champ32 OR champion_name5 = champ33 OR champion_name5 = champ34 OR champion_name5 = champ35 OR
        champion_name5 = champ36 OR champion_name5 = champ37 OR champion_name5 = champ38 OR champion_name5 = champ39 OR champion_name5 = champ40 OR
        champion_name5 = champ41 OR champion_name5 = champ42 OR champion_name5 = champ43 OR champion_name5 = champ44 OR champion_name5 = champ45 OR
        champion_name5 = champ46 OR champion_name5 = champ47 OR champion_name5 = champ48 OR champion_name5 = champ49 OR champion_name5 = champ50 OR
        champion_name5 = champ51 OR champion_name5 = champ52 OR champion_name5 = champ53 OR champion_name5 = champ54 OR champion_name5 = champ55 OR
        champion_name5 = champ56 OR champion_name5 = champ57 OR champion_name5 = champ58 OR champion_name5 = champ59 OR champion_name5 = champ60)
    OR(champion_name6 = champ1 OR champion_name6 = champ2 OR champion_name6 = champ3 OR champion_name6 = champ4 OR champion_name6 = champ5 OR
        champion_name6 = champ6 OR champion_name6 = champ7 OR champion_name6 = champ8 OR champion_name6 = champ9 OR champion_name6 = champ10 OR
        champion_name6 = champ11 OR champion_name6 = champ12 OR champion_name6 = champ13 OR champion_name6 = champ14 OR champion_name6 = champ15 OR
        champion_name6 = champ16 OR champion_name6 = champ17 OR champion_name6 = champ18 OR champion_name6 = champ19 OR champion_name6 = champ20 OR
        champion_name6 = champ21 OR champion_name6 = champ22 OR champion_name6 = champ23 OR champion_name6 = champ24 OR champion_name6 = champ25 OR
        champion_name6 = champ26 OR champion_name6 = champ27 OR champion_name6 = champ28 OR champion_name6 = champ29 OR champion_name6 = champ30 OR
        champion_name6 = champ31 OR champion_name6 = champ32 OR champion_name6 = champ33 OR champion_name6 = champ34 OR champion_name6 = champ35 OR
        champion_name6 = champ36 OR champion_name6 = champ37 OR champion_name6 = champ38 OR champion_name6 = champ39 OR champion_name6 = champ40 OR
        champion_name6 = champ41 OR champion_name6 = champ42 OR champion_name6 = champ43 OR champion_name6 = champ44 OR champion_name6 = champ45 OR
        champion_name6 = champ46 OR champion_name6 = champ47 OR champion_name6 = champ48 OR champion_name6 = champ49 OR champion_name6 = champ50 OR
        champion_name6 = champ51 OR champion_name6 = champ52 OR champion_name6 = champ53 OR champion_name6 = champ54 OR champion_name6 = champ55 OR
        champion_name6 = champ56 OR champion_name6 = champ57 OR champion_name6 = champ58 OR champion_name6 = champ59 OR champion_name6 = champ60)
    OR(champion_name7 = champ1 OR champion_name7 = champ2 OR champion_name7 = champ3 OR champion_name7 = champ4 OR champion_name7 = champ5 OR
        champion_name7 = champ6 OR champion_name7 = champ7 OR champion_name7 = champ8 OR champion_name7 = champ9 OR champion_name7 = champ10 OR
        champion_name7 = champ11 OR champion_name7 = champ12 OR champion_name7 = champ13 OR champion_name7 = champ14 OR champion_name7 = champ15 OR
        champion_name7 = champ16 OR champion_name7 = champ17 OR champion_name7 = champ18 OR champion_name7 = champ19 OR champion_name7 = champ20 OR
        champion_name7 = champ21 OR champion_name7 = champ22 OR champion_name7 = champ23 OR champion_name7 = champ24 OR champion_name7 = champ25 OR
        champion_name7 = champ26 OR champion_name7 = champ27 OR champion_name7 = champ28 OR champion_name7 = champ29 OR champion_name7 = champ30 OR
        champion_name7 = champ31 OR champion_name7 = champ32 OR champion_name7 = champ33 OR champion_name7 = champ34 OR champion_name7 = champ35 OR
        champion_name7 = champ36 OR champion_name7 = champ37 OR champion_name7 = champ38 OR champion_name7 = champ39 OR champion_name7 = champ40 OR
        champion_name7 = champ41 OR champion_name7 = champ42 OR champion_name7 = champ43 OR champion_name7 = champ44 OR champion_name7 = champ45 OR
        champion_name7 = champ46 OR champion_name7 = champ47 OR champion_name7 = champ48 OR champion_name7 = champ49 OR champion_name7 = champ50 OR
        champion_name7 = champ51 OR champion_name7 = champ52 OR champion_name7 = champ53 OR champion_name7 = champ54 OR champion_name7 = champ55 OR
        champion_name7 = champ56 OR champion_name7 = champ57 OR champion_name7 = champ58 OR champion_name7 = champ59 OR champion_name7 = champ60)
    OR(champion_name8 = champ1 OR champion_name8 = champ2 OR champion_name8 = champ3 OR champion_name8 = champ4 OR champion_name8 = champ5 OR
        champion_name8 = champ6 OR champion_name8 = champ7 OR champion_name8 = champ8 OR champion_name8 = champ9 OR champion_name8 = champ10 OR
        champion_name8 = champ11 OR champion_name8 = champ12 OR champion_name8 = champ13 OR champion_name8 = champ14 OR champion_name8 = champ15 OR
        champion_name8 = champ16 OR champion_name8 = champ17 OR champion_name8 = champ18 OR champion_name8 = champ19 OR champion_name8 = champ20 OR
        champion_name8 = champ21 OR champion_name8 = champ22 OR champion_name8 = champ23 OR champion_name8 = champ24 OR champion_name8 = champ25 OR
        champion_name8 = champ26 OR champion_name8 = champ27 OR champion_name8 = champ28 OR champion_name8 = champ29 OR champion_name8 = champ30 OR
        champion_name8 = champ31 OR champion_name8 = champ32 OR champion_name8 = champ33 OR champion_name8 = champ34 OR champion_name8 = champ35 OR
        champion_name8 = champ36 OR champion_name8 = champ37 OR champion_name8 = champ38 OR champion_name8 = champ39 OR champion_name8 = champ40 OR
        champion_name8 = champ41 OR champion_name8 = champ42 OR champion_name8 = champ43 OR champion_name8 = champ44 OR champion_name8 = champ45 OR
        champion_name8 = champ46 OR champion_name8 = champ47 OR champion_name8 = champ48 OR champion_name8 = champ49 OR champion_name8 = champ50 OR
        champion_name8 = champ51 OR champion_name8 = champ52 OR champion_name8 = champ53 OR champion_name8 = champ54 OR champion_name8 = champ55 OR
        champion_name8 = champ56 OR champion_name8 = champ57 OR champion_name8 = champ58 OR champion_name8 = champ59 OR champion_name8 = champ60)
    OR(champion_name9 = champ1 OR champion_name9 = champ2 OR champion_name9 = champ3 OR champion_name9 = champ4 OR champion_name9 = champ5 OR
        champion_name9 = champ6 OR champion_name9 = champ7 OR champion_name9 = champ8 OR champion_name9 = champ9 OR champion_name9 = champ10 OR
        champion_name9 = champ11 OR champion_name9 = champ12 OR champion_name9 = champ13 OR champion_name9 = champ14 OR champion_name9 = champ15 OR
        champion_name9 = champ16 OR champion_name9 = champ17 OR champion_name9 = champ18 OR champion_name9 = champ19 OR champion_name9 = champ20 OR
        champion_name9 = champ21 OR champion_name9 = champ22 OR champion_name9 = champ23 OR champion_name9 = champ24 OR champion_name9 = champ25 OR
        champion_name9 = champ26 OR champion_name9 = champ27 OR champion_name9 = champ28 OR champion_name9 = champ29 OR champion_name9 = champ30 OR
        champion_name9 = champ31 OR champion_name9 = champ32 OR champion_name9 = champ33 OR champion_name9 = champ34 OR champion_name9 = champ35 OR
        champion_name9 = champ36 OR champion_name9 = champ37 OR champion_name9 = champ38 OR champion_name9 = champ39 OR champion_name9 = champ40 OR
        champion_name9 = champ41 OR champion_name9 = champ42 OR champion_name9 = champ43 OR champion_name9 = champ44 OR champion_name9 = champ45 OR
        champion_name9 = champ46 OR champion_name9 = champ47 OR champion_name9 = champ48 OR champion_name9 = champ49 OR champion_name9 = champ50 OR
        champion_name9 = champ51 OR champion_name9 = champ52 OR champion_name9 = champ53 OR champion_name9 = champ54 OR champion_name9 = champ55 OR
        champion_name9 = champ56 OR champion_name9 = champ57 OR champion_name9 = champ58 OR champion_name9 = champ59 OR champion_name9 = champ60 )
    OR(champion_name10 = champ1 OR champion_name10 = champ2 OR champion_name10 = champ3 OR champion_name10 = champ4 OR champion_name10 = champ5 OR
        champion_name10 = champ6 OR champion_name10 = champ7 OR champion_name10 = champ8 OR champion_name10 = champ9 OR champion_name10 = champ10 OR
        champion_name10 = champ11 OR champion_name10 = champ12 OR champion_name10 = champ13 OR champion_name10 = champ14 OR champion_name10 = champ15 OR
        champion_name10 = champ16 OR champion_name10 = champ17 OR champion_name10 = champ18 OR champion_name10 = champ19 OR champion_name10 = champ20 OR
        champion_name10 = champ21 OR champion_name10 = champ22 OR champion_name10 = champ23 OR champion_name10 = champ24 OR champion_name10 = champ25 OR
        champion_name10 = champ26 OR champion_name10 = champ27 OR champion_name10 = champ28 OR champion_name10 = champ29 OR champion_name10 = champ30 OR
        champion_name10 = champ31 OR champion_name10 = champ32 OR champion_name10 = champ33 OR champion_name10 = champ34 OR champion_name10 = champ35 OR
        champion_name10 = champ36 OR champion_name10 = champ37 OR champion_name10 = champ38 OR champion_name10 = champ39 OR champion_name10 = champ40 OR
        champion_name10 = champ41 OR champion_name10 = champ42 OR champion_name10 = champ43 OR champion_name10 = champ44 OR champion_name10 = champ45 OR
        champion_name10 = champ46 OR champion_name10 = champ47 OR champion_name10 = champ48 OR champion_name10 = champ49 OR champion_name10 = champ50 OR
        champion_name10 = champ51 OR champion_name10 = champ52 OR champion_name10 = champ53 OR champion_name10 = champ54 OR champion_name10 = champ55 OR
        champion_name10 = champ56 OR champion_name10 = champ57 OR champion_name10 = champ58 OR champion_name10 = champ59 OR champion_name10 = champ60 )
    OR(champion_name11 = champ1 OR champion_name11 = champ2 OR champion_name11 = champ3 OR champion_name11 = champ4 OR champion_name11 = champ5 OR
        champion_name11 = champ6 OR champion_name11 = champ7 OR champion_name11 = champ8 OR champion_name11 = champ9 OR champion_name11 = champ10 OR
        champion_name11 = champ11 OR champion_name11 = champ12 OR champion_name11 = champ13 OR champion_name11 = champ14 OR champion_name11 = champ15 OR
        champion_name11 = champ16 OR champion_name11 = champ17 OR champion_name11 = champ18 OR champion_name11 = champ19 OR champion_name11 = champ20 OR
        champion_name11 = champ21 OR champion_name11 = champ22 OR champion_name11 = champ23 OR champion_name11 = champ24 OR champion_name11 = champ25 OR
        champion_name11 = champ26 OR champion_name11 = champ27 OR champion_name11 = champ28 OR champion_name11 = champ29 OR champion_name11 = champ30 OR
        champion_name11 = champ31 OR champion_name11 = champ32 OR champion_name11 = champ33 OR champion_name11 = champ34 OR champion_name11 = champ35 OR
        champion_name11 = champ36 OR champion_name11 = champ37 OR champion_name11 = champ38 OR champion_name11 = champ39 OR champion_name11 = champ40 OR
        champion_name11 = champ41 OR champion_name11 = champ42 OR champion_name11 = champ43 OR champion_name11 = champ44 OR champion_name11 = champ45 OR
        champion_name11 = champ46 OR champion_name11 = champ47 OR champion_name11 = champ48 OR champion_name11 = champ49 OR champion_name11 = champ50 OR
        champion_name11 = champ51 OR champion_name11 = champ52 OR champion_name11 = champ53 OR champion_name11 = champ54 OR champion_name11 = champ55 OR
        champion_name11 = champ56 OR champion_name11 = champ57 OR champion_name11 = champ58 OR champion_name11 = champ59 OR champion_name11 = champ60)
    OR(champion_name12 = champ1 OR champion_name12 = champ2 OR champion_name12 = champ3 OR champion_name12 = champ4 OR champion_name12 = champ5 OR
        champion_name12 = champ6 OR champion_name12 = champ7 OR champion_name12 = champ8 OR champion_name12 = champ9 OR champion_name12 = champ10 OR
        champion_name12 = champ11 OR champion_name12 = champ12 OR champion_name12 = champ13 OR champion_name12 = champ14 OR champion_name12 = champ15 OR
        champion_name12 = champ16 OR champion_name12 = champ17 OR champion_name12 = champ18 OR champion_name12 = champ19 OR champion_name12 = champ20 OR
        champion_name12 = champ21 OR champion_name12 = champ22 OR champion_name12 = champ23 OR champion_name12 = champ24 OR champion_name12 = champ25 OR
        champion_name12 = champ26 OR champion_name12 = champ27 OR champion_name12 = champ28 OR champion_name12 = champ29 OR champion_name12 = champ30 OR
        champion_name12 = champ31 OR champion_name12 = champ32 OR champion_name12 = champ33 OR champion_name12 = champ34 OR champion_name12 = champ35 OR
        champion_name12 = champ36 OR champion_name12 = champ37 OR champion_name12 = champ38 OR champion_name12 = champ39 OR champion_name12 = champ40 OR
        champion_name12 = champ41 OR champion_name12 = champ42 OR champion_name12 = champ43 OR champion_name12 = champ44 OR champion_name12 = champ45 OR
        champion_name12 = champ46 OR champion_name12 = champ47 OR champion_name12 = champ48 OR champion_name12 = champ49 OR champion_name12 = champ50 OR
        champion_name12 = champ51 OR champion_name12 = champ52 OR champion_name12 = champ53 OR champion_name12 = champ54 OR champion_name12 = champ55 OR
        champion_name12 = champ56 OR champion_name12 = champ57 OR champion_name12 = champ58 OR champion_name12 = champ59 OR champion_name12 = champ60);
END //
DELIMITER ;

CALL showGbyC('_8ECIDmY3r4hqwAiFwmT4k-Y2PpkZ3Np6ORC_Nx3_fpjrxOIsHZUGGhFXHatF_sIB8OePNlJ54jGmA','Annie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
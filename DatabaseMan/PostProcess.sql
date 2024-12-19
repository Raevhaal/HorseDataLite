

DELETE FROM Moves;

-- Move data into production table
Insert INTO Moves
    (ID, Command, Character, MoveCategory, MoveName, Stance, HitLevel, Impact, Damage, DamageDec, [Block], BlockDec, Hit, HitDec, CounterHit, CounterHitDeci, GuardBurst, Notes)
SELECT 
    ID, Command, [Character], [Move Category], [Move Name], Stance, [Hit Level], Impact, Damage, DamageDec, [Block], BlockDec, Hit, HitDec, [Counter Hit], CounterHitDeci, [Guard Burst], Notes
FROM UnicornData AS UD;

-- Drop the temporary table
--DELETE FROM UnicornData;

-- Update UA flag
UPDATE Moves as M
SET isUB = 1
WHERE
	M.Notes like '%:UA:%'
	AND M.ID not in (
		2852 -- Raphael 214B
	)
;

-- Update is BA flag
UPDATE Moves as M
SET isBA = 1
WHERE
	M.Notes like '%:BA:%'
	AND M.ID not in (
		2852 -- Raphael 214B
	)
;

-- Update GI flag
UPDATE Moves as M
SET isGI = 1
WHERE
	M.Notes like '%:GI:%'
;

-- Update TH flag
UPDATE Moves as M
SET isTH = 1
WHERE
	M.Notes like '%:TH:%'
;

-- Update SS flag
UPDATE Moves as M
SET isSS = 1
WHERE
	M.Notes like '%:SS:%'
;

-- Update RE flag
UPDATE Moves as M
SET isRE = 1
WHERE
	M.Notes like '%:RE:%'
	OR Stance like '%RE%'
;

-- Update LH flag
UPDATE Moves as M
SET isLH = 1
WHERE
	M.Notes like '%:LH:%'
;




Select Animaltype AS 'Animal', count(AnimalID)AS'Number in Shelter'
from PETS
group by AnimalType
ORDER BY count(AnimalID)DESC;

Select Gender AS 'Spay Status', Count(AnimalID) AS "Number in Shelter"
from PETS
where (Animaltype='Dog' AND Gender='Female')
    OR (Animaltype='Dog'AND Gender like 'Spayed%')
group by Gender;

SELECT Gender AS 'Neuter Status', Count(AnimalID) AS 'Number in Shelter'
from PETS
Where (Animaltype='Dog' AND Gender='Male')
    or (Animaltype='Dog' AND Gender like 'Neutered%')
Group by Gender;

Select TOP 5
    IntakeReason AS 'Intake Reason', Count(AnimalID) AS 'Number in Shelter'
from PETS
Group by IntakeReason
Order by Count(IntakeReason) DESC;

Select TOP 3
    PrimaryBreed AS "Breed", Count(AnimalID) AS "Number in Shelter"
FROM PETS
Where AnimalType='Dog'
Group by PrimaryBreed
ORDER BY COUNT(PrimaryBreed) DESC;

SELECT Top 5
    Count(PrimaryBreed) As "Number in Shelter", Intaketype as " Pitbull Intake Reason"
from Pets
Where Primarybreed='PIT BULL TERRIER'
Group by intaketype
ORDER BY Count(Intaketype) DESC;

Select top 3
    outcometype AS "Outcome", Count(AnimalID) AS "Number of Events"
from PETS
Where Animaltype='Dog'
Group by Outcometype
Order by Count(outcometype) DESC;

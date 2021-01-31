USE wca;        
SELECT JSON_OBJECT(
        "data",
        JSON_ARRAYAGG(JSON_OBJECT(
                "eventId", RanksAverage.eventId,
                "best", RanksAverage.best,
                "worldRank", RanksAverage.worldRank,
                "continentRank", RanksAverage.continentRank,
                "countryRank", RanksAverage.countryRank,
                "personId", RanksAverage.personId,
                "country", Countries.id,
                "continent", Countries.continentId,
                "iso2", Countries.iso2
        )) 
) FROM RanksAverage, Countries, Persons
        WHERE 
                RanksAverage.eventId=@event AND 
                Countries.id=Persons.countryId AND
                Persons.id=RanksAverage.personId
        ORDER BY RanksAverage.worldRank;
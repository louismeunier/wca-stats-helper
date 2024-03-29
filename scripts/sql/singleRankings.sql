USE wca;        
ALTER DATABASE wca CHARACTER SET utf8 COLLATE utf8mb4_general_ci;
ALTER TABLE RanksSingle
CONVERT TO CHARACTER SET utf8 COLLATE utf8mb4_general_ci;
SELECT JSON_OBJECT(
        "data",
        JSON_ARRAYAGG(JSON_OBJECT(
                "eventId", RanksSingle.eventId,
                "best", RanksSingle.best,
                "worldRank", RanksSingle.worldRank,
                "continentRank", RanksSingle.continentRank,
                "countryRank", RanksSingle.countryRank,
                "personId", RanksSingle.personId,
                "country", Countries.id,
                "continent", Countries.continentId,
                "iso2", Countries.iso2
        )) 
) FROM RanksSingle, Countries, Persons
        WHERE 
                RanksSingle.eventId=@event AND 
                Countries.id=Persons.countryId AND 
                Persons.id=RanksSingle.personId
        ORDER BY RanksSingle.worldRank;
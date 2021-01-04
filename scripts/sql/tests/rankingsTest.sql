USE wca;
SELECT JSON_OBJECT(
        "data",
        JSON_ARRAYAGG(JSON_OBJECT(
        "personId",personId,
        "eventId", eventId,
        "best", best,
        "worldRank", worldRank,
        "continentRank", continentRank,
        "countryRank", countryRank
        )) 
) FROM RanksAverage  WHERE eventId=@event AND worldRank<=5 ORDER BY worldRank ;

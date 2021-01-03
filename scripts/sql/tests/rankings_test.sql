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
        FROM RanksAverage  WHERE eventId="333" AND worldRank<=10 ORDER BY worldRank 
) ;

USE wca;
SELECT JSON_OBJECT(
        "data",
        JSON_ARRAYAGG(JSON_OBJECT(
                "eventId", eventId,
                "best", best,
                "worldRank", worldRank,
                "continentRank", continentRank,
                "countryRank", countryRank,
                "personId",personId
        )) 
) FROM RanksAverage  WHERE eventId=@event AND best IS NOT NULL ORDER BY worldRank ;

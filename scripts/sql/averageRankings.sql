USE wca;
SELECT JSON_OBJECT(
        "data",
        JSON_ARRAYAGG(JSON_OBJECT(
                "eventId", eventId,
                "best", best,
                "worldRank", worldRank,
                "continentRank", continentRank,
                "countryRank", countryRank,
                "personId",JSON_QUOTE(personId)
        )) 
) FROM RanksAverage  WHERE eventId=@event ORDER BY worldRank ;

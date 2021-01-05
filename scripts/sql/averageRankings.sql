USE wca;
SELECT JSON_OBJECT(
        "data",
        JSON_ARRAYAGG(JSON_OBJECT(
                "eventId", eventId,
                "best", best,
                "worldRank", worldRank,
                "continentRank", continentRank,
                "countryRank", countryRank,
                "personId", IFNULL(personId, "no id")
        )) 
) FROM RanksAverage  WHERE eventId=@event ORDER BY worldRank ;

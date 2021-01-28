USE wca;
SELECT JSON_OBJECT(
        "data",
        JSON_ARRAYAGG(JSON_OBJECT(
                "eventId", eventId,
                "best", best,
                "worldRank", worldRank,
                "continentRank", continentRank,
                "countryRank", countryRank,
                "personId", personId
        )) 
) FROM RanksSingle  WHERE eventId=@event ORDER BY worldRank ;

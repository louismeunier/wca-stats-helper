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
) FROM RanksSingle  WHERE eventId=@event ORDER BY worldRank ;

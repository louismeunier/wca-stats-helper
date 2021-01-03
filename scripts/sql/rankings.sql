USE wca; 
JSON_ARRAY( JSON_OBJECT(
        "personId",personId,
        "eventId", eventId,
        "best", best,
        "worldRank", worldRank,
        "continentRank", continentRank,
        "countryRank", countryRank
        )
)
FROM RanksAverage  WHERE eventId="333" ORDER BY worldRank;
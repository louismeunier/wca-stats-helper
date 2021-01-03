USE wca;
SELECT JSON_ARRAY(JSON_OBJECT(
    "eventId", eventId,
    "personName", personName,
    "personId", personId,
    "best", best,
    "worldRank", worldRank,
    "continentRank", continentRank,
    "countryRank", countryRank
    )) 
FROM RanksAverage  WHERE eventId="333" ORDER BY worldRank;
USE wca;
SELECT * FROM RanksAverage WHERE eventId="333" AND 
SELECT JSON_ARRAY(JSON_OBJECT(
    "eventId", eventId,
    "personId", personId,
    "best", best,
    "worldRank", worldRank,
    "continentRank", continentRank,
    "countryRank", countryRank
    )) 
FROM RanksAverage  WHERE eventId="333" ORDER BY worldRank;
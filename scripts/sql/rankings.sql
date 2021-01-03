USE wca;
SELECT * FROM RanksAverage WHERE eventId="333" AND 
SELECT JSON_ARRAYAGG(JSON_OBJECT(
    "eventId", eventId,
    "best", best,
    "worldRank", worldRank,
    "continentRank", continentRank,
    "countryRank", countryRank
    )) 
FROM RanksAverage  WHERE eventId="333" ORDER BY worldRank;
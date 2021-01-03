USE wca;
SELECT JSON_ARRAYAGG(JSON_OBJECT(
    "eventId",eventId,
    "best",best,
    "worldRank",worldRank,
    "continentRank",continentRank,
    "countryRank",countryRank
    )) 
FROM RanksAverage  WHERE eventId="333" ORDER BY worldRank INTO OUTFILE "res.json";
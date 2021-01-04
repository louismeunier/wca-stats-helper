USE wca;
SELECT * FROM RanksAverage  WHERE eventId=@event AND worldRank<=5 ORDER BY worldRank ;

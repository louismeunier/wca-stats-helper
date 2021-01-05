USE wca;
SELECT personId FROM RanksAverage WHERE eventId="333" AND personId NOT IN (SELECT personId FROM RanksAverage WHERE eventId="222");
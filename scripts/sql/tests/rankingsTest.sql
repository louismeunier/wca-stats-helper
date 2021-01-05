USE wca;
SELECT personId FROM RanksAverage WHERE eventId="333" HAVING COUNT(personId)>1;
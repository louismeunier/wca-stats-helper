USE wca;
SELECT personId FROM RanksAverage WHERE eventId="333" AND personId NOT_REGEXP(/\d{4}\w{4}\d{2}/);
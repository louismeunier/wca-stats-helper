USE wca;
SELECT average, personName, personId, formatId FROM RanksAverage WHERE eventId="333" AND personId="2016MEUN01" OR personId="2017ZHEN10" ORDER BY average;
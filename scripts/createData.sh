#scripts/createData.sh

#create ranks
mysql -u root --password="" < scripts/sql/averageRankings.sql -ss > stats/rank/averageRank.json
mysql -u root --password="" < scripts/sql/singleRankings.sql -ss > stats/rank/singleRank.json
mysql -u root --password="" < scripts/sql/tests/rankings_test.sql -ss > stats/test/test.json
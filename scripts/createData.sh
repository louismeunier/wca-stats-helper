mysql -u root --password="" < scripts/sql/averageRankings.sql > stats/rank/averageRank.json
mysql -u root --password="" < scripts/sql/singleRankings.sql > stats/rank/singleRank.json
mysql -u root --password="" < scripts/sql/tests/rankings_test.sql -ss > stats/test/test.json
#scripts/createData.sh
#"demos"
#mysql -u root --password="" < scripts/sql/tests/rankings_test.sql -ss > stats/test/test.json
export event=333
#create ranks
mysql -u root --password="" -e "set @event='${event};'" < scripts/sql/averageRankings.sql -ss > stats/rank/averageRank.json
mysql -u root --password="" -e "set @event='${event};'" < scripts/sql/singleRankings.sql -ss > stats/rank/singleRank.json

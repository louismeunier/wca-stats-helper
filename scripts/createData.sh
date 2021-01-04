#scripts/createData.sh
#"demos"


#create ranks
events=("222" "333" "333bld" "333fm" "333oh" "444" "555" "666" "777" "sq1" "skewb" "pyram" "minx" "clock" "444bld" "555bld")

for i in "${events[@]}"
do
    export event=$i
    echo $event
    mysql -u root --password="" \
    -e "set @event='${event}'; source scripts/sql/averageRankings.sql ;" -ss > stats/rank/averages/$i.json
    mysql -u root --password="" \
    -e "set @event='${event}'; source scripts/sql/singleRankings.sql ;" -ss > stats/rank/singles/$i.json
   # mysql -u root --password="" \
    #-e "set @event='${event}'; source scripts/sql/tests/rankingsTest.sql ;" -ss
    
done
mysql -u root --password="" \
    -e "USE wca; SELECT * FROM RanksAverage WHERE eventId=\"333bld\" AND worldRank<=5;" 
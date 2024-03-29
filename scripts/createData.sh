#scripts/createData.sh

#create ranks
export MYSQL_PWD="";
events=("222" "333" "333bf" "333fm" "333oh" "444" "555" "666" "777" "sq1" "skewb" "pyram" "minx" "clock" "444bf" "555bf")
#mysql -u root < scripts/sql/tests/rankingsTest.sql > stats/test.json
for i in "${events[@]}"
do
    export event=$i
    echo $event
    mysql -h 127.0.0.1 --port 8888 --max_allowed_packet=200m -u root -ppassword \
    -e "set @event='${event}'; source scripts/sql/averageRankings.sql ;" -ss > stats/rank/averages/$i.json
    mysql -h 127.0.0.1 --port 8888 --max_allowed_packet=200m -u root  -ppassword \
    -e "set @event='${event}'; source scripts/sql/singleRankings.sql ;" -ss > stats/rank/singles/$i.json
done

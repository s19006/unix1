stations=$1
curl "http://express.heartrails.com/api/json?method=getStations&line=${stations}" 2> /dev/null | jq '.response.station[].name'


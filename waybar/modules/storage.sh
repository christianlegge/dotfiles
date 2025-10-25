#!/bin/sh

mount="/"
warning=20
critical=10

percentage() { 
	df -h -P -l "$1" | awk -v warning=$warning -v critical=$critical '
/\/.*/ {
  text=$4
  tooltip="Filesystem: "$1"\rSize: "$2"\rUsed: "$3"\rAvail: "$4"\rUse%: "$5"\rMounted on: "$6
  use=$5
  exit 0
}
END {
  class=""
  gsub(/%$/,"",use)
  if ((100 - use) < critical) {
    class="critical"
  } else if ((100 - use) < warning) {
    class="warning"
  }
  # print "{\"text\":\""text"\", \"percentage\":"use",\"tooltip\":\""tooltip"\", \"class\":\""class"\"}"
  print use
}
'
}

freespace() { 
	df -h -P -l "$1" | awk -v warning=$warning -v critical=$critical '
/\/.*/ {
  text=$4
  tooltip="Filesystem: "$1"\rSize: "$2"\rUsed: "$3"\rAvail: "$4"\rUse%: "$5"\rMounted on: "$6
  use=$5
  exit 0
}
END {
  class=""
  gsub(/%$/,"",use)
  if ((100 - use) < critical) {
    class="critical"
  } else if ((100 - use) < warning) {
    class="warning"
  }
  # print "{\"text\":\""text"\", \"percentage\":"use",\"tooltip\":\""tooltip"\", \"class\":\""class"\"}"
  print text
}
'
}

echo "{\"text\": \"$( freespace "/" ) | $( freespace "/c" ) | $( freespace "/d" ) | $( freespace "/e" )\", \"alt\": \"$( percentage "/" )% | $( percentage "/c" )% | $( percentage "/d" )% | $( percentage "/e" )%\"}"

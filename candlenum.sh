#!/bin/bash

# GPL v3 License

year=$(date +%Y)
today=$(date +%s)
christmas=$(date -d $year-12-24 +%s)

i=0
while [ $(date +%u --date "$year-12-24 -$i days") != "7" ]; do
  let "i=i+1"
  fourthad_day=$(date +%d --date "$year-12-24 -$i days")
done

thirdad_day=$(date +%d --date "$year-12-$fourthad_day -1 week")

secondad_day=$(date +%d --date "$year-12-$thirdad_day -1 week")
secondad_month=$(date +%m --date "$year-12-$thirdad_day -1 week")

firstad_day=$(date +%d --date "$year-$secondad_month-$secondad_day -1 week")
firstad_month=$(date +%m --date "$year-$secondad_month-$secondad_day -1 week")


if [ $today -ge $christmas ]; then
  echo 0
elif [ $today -lt $christmas ] && [ $today -ge $(date --date $year-12-$fourthad_day +%s) ]; then
  echo 4
elif [ $today -lt $(date --date $year-12-$fourthad_day +%s) ] && [ $today -ge $(date --date $year-12-$thirdad_day +%s) ]; then
  echo 3
elif [ $today -lt $(date --date $year-12-$thirdad_day +%s) ] && [ $today -ge $(date --date $year-$secondad_month-$secondad_day +%s) ]; then
  echo 2
elif [ $today -lt $(date --date $year-$secondad_month-$secondad_day +%s) ] && [ $today -ge $(date --date $year-$firstad_month-$firstad_day +%s) ]; then
  echo 1
elif [ $today -lt $(date --date $year-$firstad_month-$secondad_day +%s) ]; then
  echo 0
fi

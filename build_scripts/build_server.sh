#!/bin/sh

cd OneLife/server
./configure 1
make

ln -s ../../OneLifeData7/categories .
ln -s ../../OneLifeData7/objects .
ln -s ../../OneLifeData7/transitions .

echo 0 > settings/requireTicketServerCheck.ini
echo 0 > settings/useStatsServer.ini
echo 0 > settings/allowBugReports.ini
echo 0 > settings/apocalypsePossible.ini
echo 1 > settings/forceEveLocation.ini

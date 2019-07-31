#!/bin/sh
echo 0 > settings/useCurserServer.ini
> settings/curseServerURL.ini
echo 0 > settings/requireTicketServerCheck.ini
> settings/ticketServerURL.ini
echo 0 > settings/useLifeTokenServer.ini.ini
> settings/lifeTokenServerURL.ini
echo 0 > settings/useStatsServer.ini
> settings/reflectorURL.ini
echo 0 > settings/useLineageServer.ini
> settings/lineageServerURL.ini
echo 0 > settings/useLifeTokenServer.ini
> settings/lifeTokenServerURL.ini
echo 0 > settings/useFitnessServer.ini
> settings/fitnessServerURL.ini
echo 0 > settings/allowBugReports.ini
echo 0 > settings/useArcServer.ini
> settings/arcServerURL.ini
echo 0 > settings/apocalypsePossible.ini
echo 0 > settings/babyApocalypsePossible.ini 
echo 0 > settings/mapCellForgottenSeconds.ini
echo 1 > settings/skipLookTimeCleanup.ini
#echo 1 > settings/flushLookTimes.ini // blocks dummy recall (remembering use counts)
echo 0 > settings/longTermNoLookCullEnabled.ini
echo 0 > settings/barrierOn.ini
echo 1 > settings/forceEveLocation.ini
echo 1 > settings/allowMapRequests.ini
echo "a@b.c" > settings/vogAllowAccounts.ini
echo "a@b.c" > settings/mapRequestAllowAccounts.ini
echo 20.0 > settings/minFoodDecrementSeconds.ini
echo 200.0 > settings/maxFoodDecrementSeconds.ini

echo 723 > biomeRandSeed.txt

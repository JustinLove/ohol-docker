#!/bin/sh
echo 0 > settings/useCurserServer.ini
> settings/curseServerURL.ini
echo 0 > settings/requireTicketServerCheck.ini
> settings/ticketServerURL.ini
echo 0 > settings/useStatsServer.ini
> settings/reflectorURL.ini
echo 0 > settings/useLineageServer.ini
> settings/lineageServerURL.ini
echo 0 > settings/allowBugReports.ini
echo 0 > settings/apocalypsePossible.ini
echo 0 > settings/mapCellForgottenSeconds.ini
echo 1 > settings/skipLookTimeCleanup.ini
echo 1 > settings/flushLookTimes.ini
echo 1 > settings/forceEveLocation.ini
echo 20.0 > settings/minFoodDecrementSeconds.ini
echo 200.0 > settings/maxFoodDecrementSeconds.ini

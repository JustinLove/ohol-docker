#!/bin/sh

# Jason Rohrer's terms require open servers to check for registration. But otherwise, we don't want to bother him with invalid requests
echo 0 > settings/useCurserServer.ini
> settings/curseServerURL.ini
#echo 0 > settings/requireTicketServerCheck.ini
#> settings/ticketServerURL.ini
echo 0 > settings/useStatsServer.ini
> settings/statsServerURL.ini
> settings/reflectorURL.ini
echo 0 > settings/useLineageServer.ini
> settings/lineageServerURL.ini
echo 0 > settings/useLifeTokenServer.ini
> settings/lifeTokenServerURL.ini
> settings/fitnessServerURL.ini
echo 0 > settings/allowBugReports.ini

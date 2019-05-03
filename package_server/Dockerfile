FROM alpine
RUN apk --no-cache --update add libstdc++

COPY . /ohol/

WORKDIR /ohol/server

COPY --from=ohol-build /ohol/source/OneLifeData7/dataVersionNumber.txt .
COPY --from=ohol-build /ohol/source/OneLifeData7/categories categories
COPY --from=ohol-build /ohol/source/OneLifeData7/objects objects
COPY --from=ohol-build /ohol/source/OneLifeData7/transitions transitions
COPY --from=ohol-build /ohol/source/OneLife/server/firstNames.txt .
COPY --from=ohol-build /ohol/source/OneLife/server/lastNames.txt .
COPY --from=ohol-build /ohol/source/OneLife/server/serverCodeVersionNumber.txt .
COPY --from=ohol-build /ohol/source/OneLife/server/OneLifeServer .
COPY --from=ohol-build /ohol/source/OneLife/server/settings settings

WORKDIR /ohol/db

EXPOSE 8005
CMD ["/ohol/run.sh"]

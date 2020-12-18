ARG SERVER_TAG
ARG DATA_TAG
FROM ohol-build:s${SERVER_TAG}d${DATA_TAG} as build


FROM alpine
RUN apk --no-cache --update add libstdc++

COPY . /ohol/

WORKDIR /ohol/server

COPY --from=build /ohol/source/OneLifeData7/dataVersionNumber.txt .
COPY --from=build /ohol/source/OneLifeData7/categories categories
COPY --from=build /ohol/source/OneLifeData7/objects objects
COPY --from=build /ohol/source/OneLifeData7/transitions transitions
COPY --from=build /ohol/source/OneLifeData7/tutorialMaps tutorialMaps
COPY --from=build \
  /ohol/source/OneLife/server/*Names.txt \
  /ohol/source/OneLife/server/serverCodeVersionNumber.txt \
  /ohol/source/OneLife/server/OneLifeServer ./
COPY --from=build /ohol/source/OneLife/server/settings settings

WORKDIR /ohol/db

EXPOSE 8005
CMD ["/ohol/run.sh"]

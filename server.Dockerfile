FROM alpine
RUN apk --no-cache --update add libstdc++

EXPOSE 8005
WORKDIR /ohol/source/OneLife/server
CMD ["/ohol/source/OneLife/server/OneLifeServer"]

FROM alpine
RUN apk --no-cache --update add libstdc++

EXPOSE 8005
WORKDIR /ohol/OneLife/server
CMD ["/ohol/OneLife/server/OneLifeServer"]

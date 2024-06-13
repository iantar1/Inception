FROM alpine:3.14
RUN apk --update add python3
COPY ./tools .
EXPOSE 8000
CMD python3 -m http.server

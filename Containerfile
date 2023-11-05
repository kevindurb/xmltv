FROM docker.io/library/debian:12

RUN apt update
RUN apt install -y jq

ADD ./fetch_listings ./

ENTRYPOINT [ "./fetch_listings" ]

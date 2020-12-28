FROM python:2
ARG OFFLINEIMAP_VERSION

RUN wget "https://raw.githubusercontent.com/OfflineIMAP/offlineimap/${OFFLINEIMAP_VERSION}/requirements.txt" -O requirements.txt \
    && pip install -r ./requirements.txt \
    && rm requirements.txt \
    && pip install offlineimap==${OFFLINEIMAP_VERSION}

ENTRYPOINT ["/usr/local/bin/offlineimap"]

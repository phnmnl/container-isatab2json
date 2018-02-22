FROM isatools/isatools:3.6-alpine-0.9.5

LABEL maintainer="PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )"
LABEL description="Convert ISA-Tab to ISA JSON file"
LABEL software.version="0.9.5"
LABEL version="0.6"
LABEL software="isatab2json"

RUN apk add --no-cache --virtual git-deps git openssh \
    && git clone --depth 1 --single-branch -b feature/integrate_all_tools https://github.com/ISA-tools/isatools-galaxy /files/galaxy \
    && apk del git-deps \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/* /var/tmp/*

ENV PATH=$PATH:/files/galaxy

ADD run_test.sh /usr/local/bin/run_test.sh
RUN chmod +x /usr/local/bin/run_test.sh

RUN cp /files/galaxy/tools/converters/run_tab2json.py /usr/local/bin/run_tab2json.py
RUN chmod a+x /usr/local/bin/run_tab2json.py

ENTRYPOINT ["run_tab2json.py"]

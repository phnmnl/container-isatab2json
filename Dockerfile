FROM isatools/isatools:3.6-alpine-0.9.4

LABEL maintainer="PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )"
LABEL description="Convert ISA-Tab to ISA JSON file"
LABEL software.version="0.9.4"
LABEL version="0.5"
LABEL software="isatab2json"


ADD run_test.sh /usr/local/bin/run_test.sh
RUN chmod +x /usr/local/bin/run_test.sh

ADD run_tab2json.py /usr/local/bin/run_tab2json.py
RUN chmod a+x /usr/local/bin/run_tab2json.py

ENTRYPOINT ["run_tab2json.py"]

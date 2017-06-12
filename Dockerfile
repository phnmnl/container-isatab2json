FROM ubuntu:16.04

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL Description="Convert ISA-Tab to ISA JSON file"
LABEL software.version="0.8.0"
LABEL version="0.2"
LABEL software="isatab2json"

RUN apt-get update && apt-get install -y --no-install-recommends python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install -U setuptools && \
    pip3 install isatools==0.5.0 && \
    apt-get purge -y python3-pip gcc libxml2-dev libxslt-dev python3-lxml && \
    apt-get install --no-install-recommends python3 && \
    apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD run_test.sh /usr/local/bin/run_test.sh
RUN chmod +x /usr/local/bin/run_test.sh

ADD run_tab2json.py /usr/local/bin/run_tab2json.py
RUN chmod a+x /usr/local/bin/run_tab2json.py

ENTRYPOINT ["run_tab2json.py"]

#!/bin/bash

apt-get update && apt-get install -y --no-install-recommends wget zip
wget --no-check-certificate https://raw.githubusercontent.com/ISA-tools/ISAdatasets/master/tab/BII-I-1/i_investigation.txt -P /tmp/
wget --no-check-certificate https://raw.githubusercontent.com/ISA-tools/ISAdatasets/master/tab/BII-I-1/s_BII-S-1.txt -P /tmp/
wget --no-check-certificate https://raw.githubusercontent.com/ISA-tools/ISAdatasets/master/tab/BII-I-1/s_BII-S-2.txt -P /tmp/
wget --no-check-certificate https://raw.githubusercontent.com/ISA-tools/ISAdatasets/master/tab/BII-I-1/a_metabolome.txt -P /tmp/
wget --no-check-certificate https://raw.githubusercontent.com/ISA-tools/ISAdatasets/master/tab/BII-I-1/a_microarray.txt -P /tmp/
wget --no-check-certificate https://raw.githubusercontent.com/ISA-tools/ISAdatasets/master/tab/BII-I-1/a_proteome.txt -P /tmp/
wget --no-check-certificate https://raw.githubusercontent.com/ISA-tools/ISAdatasets/master/tab/BII-I-1/a_transcriptome.txt -P /tmp/

zip -r /BII-I-1.zip /tmp/
rm -r /tmp/

run_tab2json.py /BII-I-1.zip

# check that files were created
if ! [ -e "/out.json" ]; then
	echo "Output ISA JSON file doesn't exist"
	exit 1
fi

echo "All files created successfully"

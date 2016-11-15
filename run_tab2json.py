import sys
import os
import json

src_dir = sys.argv[1]

try:
    from isatools.convert import isatab2json
except ImportError as e:
    raise RuntimeError("Could not import isatools package")

my_json = isatab2json.convert(src_dir)
with open("output.json", 'w') as out_fp:
    json.dump(my_json, out_fp)

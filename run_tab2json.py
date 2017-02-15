import sys
import os
import json

src_dir = sys.argv[1]

try:
    from isatools.convert import isatab2json
except ImportError as e:
    raise RuntimeError("Could not import isatools package")
if not os.path.exists(src_dir):
    print("File path to ISA-Tab files \"{}\" does not exist".format(src_dir))
    sys.exit(0)

my_json = isatab2json.convert(src_dir)
with open("output.json", 'w') as out_fp:
    json.dump(my_json, out_fp)

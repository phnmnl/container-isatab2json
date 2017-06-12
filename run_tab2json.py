#!/usr/bin/env python3

import sys
import os
import json
import shutil
import tempfile
src_zip = sys.argv[1]

try:
    from isatools.convert import isatab2json
except ImportError as e:
    raise RuntimeError("Could not import isatools package")
print("src_zip = " + src_zip)
tmpdir = tempfile.mkdtemp()
print('unpacking to ' + tmpdir)
shutil.unpack_archive(filename=src_zip, extract_dir=tmpdir, format='zip')

if not os.path.exists(tmpdir):
    print("File path to ISA-Tab files {} does not exist".format(tmpdir))
    sys.exit(0)

print(os.listdir(tmpdir))
my_json = isatab2json.convert(work_dir=tmpdir, validate_first=False, use_new_parser=True)
with open("/out.json", 'w') as out_fp:
    json.dump(my_json, out_fp)
    with open("/out.json") as j_fp:
        print(j_fp.read())

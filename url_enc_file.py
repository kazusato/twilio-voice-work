import sys
import urllib.parse

infile=sys.argv[1]
with open(infile, "r") as f:
    data = f.read()

encoded = urllib.parse.quote(data)
print(encoded)


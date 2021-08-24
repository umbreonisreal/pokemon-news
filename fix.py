# set checksum and size

import struct
import sys

data = bytearray()
try:
	with open(sys.argv[1], 'rb') as f:
		data = bytearray(f.read())
	f.closed
except FileNotFoundError:
	pass

checksum = 0
news_data = data[6:]

for byte in news_data:
	checksum += byte

struct.pack_into("<H", data, 2, checksum % 65536)
struct.pack_into("<H", data, 4, len(news_data) % 65536)

with open(sys.argv[1], 'wb') as out:
	out.write(data[:int.from_bytes(data[4:6], byteorder="little", signed=False) + 6])
out.closed
PYTHON = python
TCZ-PACK = tcz-pack

all: clean get build

build:
	cd influxdb-python && $(PYTHON) setup.py install --prefix=../python-influxdb/usr/local
	sudo echo "/etc/sysconfig/tcedir" > /opt/.tce_dir # <-- huge hack
	$(TCZ-PACK) python-influxdb
	cp /tmp/tcztools/python-influxdb.tcz .
	cp /tmp/tcztools/python-influxdb.tcz.list .
	cp /tmp/tcztools/python-influxdb.tcz.md5.txt .

clean:
	rm -rf influxdb-python python-influxdb

get:
	git clone https://github.com/influxdb/influxdb-python.git
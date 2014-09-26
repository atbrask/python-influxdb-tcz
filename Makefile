PYTHON = python
TCZ-PACK = tcz-pack

all: clean get build

build:
	mkdir -p python-influxdb/usr/local/lib/python2.7/site-packages/
	cd influxdb-python \
	export PYTHONPATH=../python-influxdb/usr/local/lib/python2.7/site-packages/ && \
	$(PYTHON) setup.py install --prefix=../python-influxdb/usr/local
	sudo echo "/etc/sysconfig/tcedir" > /opt/.tce_dir # <-- huge hack
	$(TCZ-PACK) python-influxdb
	cp /tmp/tcztools/python-influxdb.tcz .
	cp /tmp/tcztools/python-influxdb.tcz.list .
	cp /tmp/tcztools/python-influxdb.tcz.md5.txt .

clean:
	rm -rf influxdb-python python-influxdb

get:
	git clone https://github.com/influxdb/influxdb-python.git
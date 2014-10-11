#####Presenting python-influxdb-tcz
This is a script for downloading and packing the python client for InfluxDB as a TCZ extension for use on Tiny Core Linux (TCL). It outputs a file called `python-influxdb.tcz` that contains the packaged files. Also included are the other metadata files (ie. `python-influxdb.tcz.dep`, `python-influxdb.tcz.info`, `python-influxdb.tcz.list`, and `python-influxdb.tcz.md5.txt`).

DISCLAIMER: This script has been tested on piCore 5.3. It may work with other versions of TCL, but YMMV...

#####Prerequisites
You'll need a Tiny Core Linux installation with the following extensions (and all their dependencies) installed.
* python
* make
* git
* squashfs-tools-4.x
* findutils
* python-requests (download from [here](https://github.com/atbrask/python-requests-tcz))
* tcztools (download from [here](https://github.com/MSumulong/tcztools))

#####How to build
* Clone this repository by running `git clone git://github.com/atbrask/python-influxdb-tcz.git`
* Type `cd python-influxdb-tcz` and run `make`

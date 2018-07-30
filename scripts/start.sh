#!/bin/bash
/bin/bash /root/bgindex.sh &
cd /recoll-webui/
/usr/bin/python3 webui-standalone.py -a 0.0.0.0

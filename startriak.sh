#!/bin/bash
clear

echo "moving to riak folder"
cd ~/Downloads/Dev/riak-master/dev

echo "starting riak node 1"
dev1/bin/riak start

echo "starting riak node 2"
dev2/bin/riak start

echo "starting riak node 3"
dev3/bin/riak start

echo "starting riak node 4"
dev4/bin/riak start

echo "Getting ring status"
dev1/bin/riak-admin ring-status

echo "pinging node"
curl http://localhost:10018/ping

echo "Done!"

#!/bin/bash

mkdir /volumes/db/db-001
mkdir /volumes/db/db-002
mkdir /volumes/db/db-003
hostname="mongodb-replica" 
# Run mongo replica sets using config files
mongod --config /conf/mongod_1.conf
mongod --config /conf/mongod_2.conf
mongod --config /conf/mongod_3.conf

cfg="{
    _id: 'dbReplicaSet',
    members: [
        {_id: 1, host: '$hostname:27017'},
        {_id: 2, host: '$hostname:27018'},
        {_id: 3, host: '$hostname:27019'}
    ]
}"
mongo localhost:27017 --eval "JSON.stringify(db.adminCommand({'replSetInitiate' : $cfg}))"
mongo
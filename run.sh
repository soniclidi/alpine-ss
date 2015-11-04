#!/bin/bash

exec /usr/bin/ssserver -s 0.0.0.0 -p $SS_PORT -k $SS_PASSWORD -m $SS_METHOD

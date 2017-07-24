#!/bin/sh

set -e

export GRAYLOG_CONF=/etc/graylog/server/server.conf &&
/graylog/bin/graylogctl run -d

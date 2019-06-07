#!/bin/bash

proxy='127.0.0.1'
proxyport='3128'
 
export http_proxy="http://${proxy}:${proxyport}"
export https_proxy=$http_proxy
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$http_proxy
export no_proxy="localhost, 127.0.0.1, 192.168.1.*, *.local, *.intranet, 169.254/16, *.ing.net"
export NO_PROXY="localhost, 127.0.0.1, 192.168.1.*, *.local, *.intranet, 169.254/16, *.ing.net"
 
export ANT_OPTS="-Dhttp.proxyHost=$proxy -Dhttp.proxyPort=$proxyport"
export JAVA_OPTS=$ANT_OPTS
export SBT_OPTS=$JAVA_OPTS
 
export ftp_proxy=$http_proxy
export rsync_proxy=$http_proxy

# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#### XXXX DO we need this Makefile ????
srcdir = .
top_srcdir = ..

prefix = /usr/local
exec_prefix = ${prefix}
APXSLDFLAGS=
APXSCFLAGS=-O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -m64 -mtune=generic -Wformat-security -fno-strict-aliasing -pthread -DHAVE_APR  -I/usr/include/apr-1 -I/usr/include/apr-1  -DHAVE_CONFIG_H
APXSCPPFLAGS=-DLINUX=2 -D_REENTRANT -D_GNU_SOURCE
SHELL=/bin/sh

top_builddir = ..

LIBTOOL = /usr/lib64/apr-1/build/libtool --silent
CC = gcc

OEXT=.lo
include list.mk

CFLAGS=-I. -I/usr/include/httpd  -DHAVE_CONFIG_H ${APXSCFLAGS} ${APXSCPPFLAGS}

include ../scripts/build/rules.mk

JK=./

all: ${APACHE_OBJECTS}

install:

clean:
	rm -f *.o *.lo *.a *.la *.so *.so.* *.slo
	rm -rf .libs

maintainer-clean: clean

distclean: clean

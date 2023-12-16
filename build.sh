#!/bin/bash
set -euo pipefail

rm -rf build
mkdir -p build

# fix me, should use cmake variables
cp -f local_options ./driver/src/

cd build
cmake ../driver \
	-DPACKAGE_UIDS=OFF \
	-DCMAKE_POLICY_DEFAULT_CMP0074=NEW \
	-DUSE_JEMALLOC=OFF \
	-DMYSQL_INCLUDE_DIR=$FLOX_ENV/include/mysql \
	-DLIBEVENT_INCLUDE_DIRS=$FLOX_ENV/include \
	-DLIBEVENT_LIBRARIES=$FLOX_ENV/lib

make -j8 install
cd ..

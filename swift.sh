#!/bin/bash

pushd ~/OMGB
. build/envsetup.sh
lunch 16
export USE_CCACHE=1
make otapackage -j$(grep processor /proc/cpuinfo | wc -l)

popd
. OMGBOT/upload.sh

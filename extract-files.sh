#!/bin/sh

VENDOR=samsung
DEVICE=j13g

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
STOCK=../../../../stock1

echo "\033[1;33mPulling device files...\033[0m"
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    if [ -f $STOCK/$FILE ]; then
    	DIR=`dirname $FILE`
    	if [ ! -d $BASE/$DIR ]; then
            mkdir -p $BASE/$DIR
    	fi
        cp $STOCK/$FILE $BASE/$FILE
        echo "\033[0;37m$FILE \033[0;32mpulled\033[0m"
    else
        echo "\033[0;37m$FILE \033[0;31mNOT pulled\033[0m"
    fi
done

./setup-makefiles.sh


for i in /system/product/etc/sysconfig/*; do
    file=$i
    file=${file/\/system\/product\/etc\/sysconfig\//}
    if [ ! -z "$(grep PIXEL_2020_ $i)" ] || [ ! -z "$(grep PIXEL_2021_ $i)" ] || [ ! -z "$(grep PIXEL_2019_PRELOAD $i)" ] || [ ! -z "$(grep PIXEL_2018_PRELOAD $i)" ] || [ ! -z "$(grep PIXEL_2017_PRELOAD $i)" ] || [ ! -z "$(grep PIXEL_2022_ $i)" ]; then
        [ ! -f $MODPATH/system/product/etc/sysconfig/$file ] && cat /system/product/etc/sysconfig/$file | grep -v PIXEL_2020_ | grep -v PIXEL_2021_ | grep -v PIXEL_2022_ | grep -v PIXEL_2018_PRELOAD | grep -v PIXEL_2019_PRELOAD >$MODPATH/system/product/etc/sysconfig/$file
    fi
done
for i in /system/etc/sysconfig/*; do
    file=$i
    file=${file/\/system\/etc\/sysconfig\//}
    if [ ! -z "$(grep PIXEL_2020_ $i)" ] || [ ! -z "$(grep PIXEL_2021_ $i)" ] || [ ! -z "$(grep PIXEL_2019_PRELOAD $i)" ] || [ ! -z "$(grep PIXEL_2018_PRELOAD $i)" ] || [ ! -z "$(grep PIXEL_2017_PRELOAD $i)" ] || [ ! -z "$(grep PIXEL_2022_ $i)" ]; then
        [ ! -f $MODPATH/system/product/etc/sysconfig/$file ] && cat /system/etc/sysconfig/$file | grep -v PIXEL_2020_ | grep -v PIXEL_2021_ | grep -v PIXEL_2022_ | grep -v PIXEL_2018_PRELOAD | grep -v PIXEL_2019_PRELOAD | grep -v PIXEL_2017_PRELOAD >$MODPATH/system/etc/sysconfig/$file
    fi
done
if [ -d /data/adb/modules/PixelifyPhotos/system/product/etc/sysconfig ]; then
    for i in /data/adb/modules/PixelifyPhotos/system/product/etc/sysconfig/*; do
        file=$i
        file=${file/\/data\/adb\/modules\/PixelifyPhotos\/system\/product\/etc\/sysconfig\//}
        if [ ! -f $MODPATH/system/product/etc/sysconfig/$file ]; then
            cp -f /data/adb/modules/PixelifyPhotos/system/product/etc/sysconfig/$file $MODPATH/system/product/etc/sysconfig/$file
        fi
    done
fi
if [ -d /data/adb/modules/PixelifyPhotos/system/etc/sysconfig ]; then
    for i in /data/adb/modules/PixelifyPhotos/system/etc/sysconfig/*; do
        file=$i
        file=${file/\/data\/adb\/modules\/PixelifyPhotos\/system\/etc\/sysconfig\//}
        if [ ! -f $MODPATH/system/etc/sysconfig/$file ]; then
            cp -f /data/adb/modules/PixelifyPhotos/system/etc/sysconfig/$file $MODPATH/system/etc/sysconfig/$file
        fi
    done
fi

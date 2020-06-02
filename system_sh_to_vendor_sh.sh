for i in $(grep -lr system/bin/sh); do
    sed -i "s|system/bin/sh|vendor/bin/sh|g" $i;
done

for i in $(grep -lr libLLVM.so); do
    patchelf --replace-needed libLLVM.so libLLVM_android.so $i;
done

for i in $(grep -lr system/bin/sh); do
    sed -i "s|system/bin/sh|vendor/bin/sh|g" $i;
done

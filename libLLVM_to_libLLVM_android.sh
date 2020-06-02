for i in $(grep -lr libLLVM.so); do
    patchelf --replace-needed libLLVM.so libLLVM_android.so $i;
done

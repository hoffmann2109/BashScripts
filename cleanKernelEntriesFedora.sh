# Check if the number of installed kernels, including rescue is > KERNEL_LIMIT
KERNEL_LIMIT=3
NUM_KERNELS=`find /boot/vmlinuz-* | wc -l`
echo "Kernel limit: $KERNEL_LIMIT | Number of installed Kernels, including rescue: $NUM_KERNELS"
if [ "$NUM_KERNELS" -gt "$KERNEL_LIMIT" ]; then
   # Remove if the latest version of installed kernels is running
   HIGHEST_KERNEL=`find /boot/vmlinuz-* | sort -V | tail -n 1 | sed 's|.*vmlinuz-||'`
   RUNNING_KERNEL=`uname -r`
   echo "Highest Kernel: $HIGHEST_KERNEL | Running Kernel: $RUNNING_KERNEL"
   if [ "$HIGHEST_KERNEL" == "$RUNNING_KERNEL" ]; then
      dnf remove $(dnf repoquery --installonly --latest-limit=-1 -q) -y;
  echo
  echo "##############################"
  echo "Finished removing old kernels"
  echo "##############################"
  echo
  sleep 1
  # Recreate/Align rescue kernel with the currently running
      echo "Aligning rescue kernel with the currently running..."
  rm -f /boot/*-rescue-*;
  kernel-install add $(uname -r) /lib/modules/$(uname -r)/vmlinuz;
  echo
  echo "###########################################################"
  echo "Finished aligning rescue kernel with the currently running"
  echo "###########################################################"
  echo
  sleep 1
   else
  echo ""
  echo "Latest version of the installed kernels is not running."
  echo "** Reboot Required **"
  echo "Now I will just exit..." 1>&2
  echo ""
  sleep 2
  exit 1
   fi
else
    echo "Kernel maintenance is not required..." 
fi

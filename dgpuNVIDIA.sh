echo "Activando la gpu.."
echo 1 | sudo tee /sys/bus/platform/devices/MSHW0041:00/dgpu_power
sleep 3
echo on | sudo tee /sys/bus/pci/devices/0000:01:00.0/power/control
sudo cat /sys/bus/pci/devices/0000:01:00.0/power/control

echo "*Activando el entorno..."
export __NV_PRIME_RENDER_OFFLOAD=1
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export __GL_SYNC_TO_VBLANK=0 
glxinfo -B

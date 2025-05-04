rm -rf .repo/local_manifests/
repo init -u https://github.com/Arrow-OS-Extended/android_manifest.git -b arrow-13.1 --git-lfs 
git clone https://github.com/ikwfahmi/local_manifests --depth 1 -b arrow .repo/local_manifests 
/opt/crave/resync.sh 
source build/envsetup.sh 
lunch arrow_X00T-userdebug  
m bacon

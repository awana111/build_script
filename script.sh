rm -rf .repo/local_manifests/
rm -rf prebuilts/clang/host/linux-x86

#repo init
repo init -u https://github.com/Spark-NEXT/manifest -b pyro-next --git-lfs
echo "=================="
echo "Repo init success"
echo "=================="

#local_manifest
git clone https://github.com/awana111/local_manifests.git -b Main .repo/local_manifests
echo "============================"
echo "Local manifest clone success"
echo "============================"

#Sync
/opt/crave/resync.sh
echo "============="
echo "Sync success"
echo "============="

# Export
export BUILD_USERNAME=awana
export BUILD_HOSTNAME=crave
echo "======= Export Done ======"

# Set up build environment
. build/envsetup.sh
echo "====== Envsetup Done ======="

#build
lunch spark_X00T-user && make installclean && mka bacon

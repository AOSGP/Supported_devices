#!/bin/bash
#export USE_CCACHE=1
unset USE_CCACHE
~/aosgp/prebuilts/sdk/tools/jack-admin stop-server
~/aosgp/prebuilts/sdk/tools/jack-admin kill-server
~/aosgp/prebuilts/sdk/tools/jack-admin uninstall-server
cd ~/aosgp/
make clobber
source build/envsetup.sh && breakfast bullhead && time make -j32 bacon
cd /var/lib/jenkins/aosgp/out/target/product/bullhead/
rename 's/lineage-aosgp/aosgp/' lineage-aosgp-X-2.1.1*.zip
mv aosgp-X-2.1.1-*.zip /var/www/html/downloads/AOSGP/LG/Nexus5x-bullhead/

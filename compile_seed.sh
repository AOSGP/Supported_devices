#!/bin/bash
export USE_CCACHE=1
~/aosgp/prebuilts/sdk/tools/jack-admin stop-server
~/aosgp/prebuilts/sdk/tools/jack-admin kill-server
~/aosgp/prebuilts/sdk/tools/jack-admin uninstall-server
cd ~/aosgp/
make clobber
source build/envsetup.sh && breakfast seed && time make -j32 bacon
cd /var/lib/jenkins/aosgp/out/target/product/seed/
rename 's/lineage-aosgp/aosgp/' lineage-aosgp-X-2.1.1*.zip
mv aosgp-X-2.1.1-*.zip /var/www/html/downloads/AOSGP/General_Mobile/GM4g-seed/
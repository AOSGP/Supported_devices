#!/bin/bash
export USE_CCACHE=1
cd ~/aosgp/
~/aosgp/prebuilts/sdk/tools/jack-admin stop-server
~/aosgp/prebuilts/sdk/tools/jack-admin kill-server
~/aosgp/prebuilts/sdk/tools/jack-admin uninstall-server
make clobber
source build/envsetup.sh && breakfast mido && time make -j32 bacon
cd /var/lib/jenkins/aosgp/out/target/product/mido/
rename 's/lineage-aosgp/aosgp/' lineage-aosgp-X-2.1.1*.zip
mv aosgp-X-2.1.1-*.zip /var/www/html/downloads/AOSGP/Xiaomi/RedmiNote4-mido/
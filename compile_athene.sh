#!/bin/bash
cd ~/aosgp/
make clobber
cd ~/aosgp/
source build/envsetup.sh && time brunch athene
cd /var/lib/jenkins/aosgp/out/target/product/athene/
mv lineage-aosgp-X-2.0-$(date +%Y%m%d)-athene.zip aosgp-X-2.0-$(date +%Y%m%d)-athene.zip
mv aosgp-X-2.0-$(date +%Y%m%d)-athene.zip /var/www/html/downloads/Motorola/Moto G4 (athene)/aosgp-X-2.0-$(date +%Y%m%d)-athene.zip
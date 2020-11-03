#!/bin/bash

npm run build

ssh root@192.168.90.1 rm -rf /opt/iobroker/node_modules/iobroker.area-floor-room-handler/www
scp -r www root@192.168.90.1:/opt/iobroker/node_modules/iobroker.area-floor-room-handler/

ssh root@192.168.90.1 rm -rf /opt/iobroker/node_modules/iobroker.area-floor-room-handler/admin
scp -r admin root@192.168.90.1:/opt/iobroker/node_modules/iobroker.area-floor-room-handler/
scp -r io-package.json root@192.168.90.1:/opt/iobroker/node_modules/iobroker.area-floor-room-handler/

scp -r build root@192.168.90.1:/opt/iobroker/node_modules/iobroker.area-floor-room-handler/

ssh root@192.168.90.1 iobroker upload area-floor-room-handler
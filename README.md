# obs
## Intel Graphic Card
docker run -d \
--privileged \
--name=obs \
-p 15801:5800 \
-p 15901:5900 \
-v /volume1/config/obs:/config:rw \
-v /volume1/download/obs:/mnt:rw \
--device /dev/dri/renderD128:/dev/dri/renderD128 \
--device /dev/dri/card0:/dev/dri/card0 \
shadowdk/obs

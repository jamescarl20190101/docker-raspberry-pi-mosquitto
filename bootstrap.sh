sudo mkdir -p /mnt/mqtt/config
sudo mkdir -p /mnt/mqtt/config/conf.d
sudo mkdir -p /mnt/mqtt/config/certs
sudo mkdir -p /mnt/mqtt/data
sudo mkdir -p /mnt/mqtt/log
sudo chmod -R a+rw /mnt/mqtt
cp mosquitto.conf /mnt/mqtt/config/mosquitto.conf
cp TCP_1883_Unencrypted_MQTT.conf /mnt/mqtt/config/conf.d/TCP_1883_Unencrypted_MQTT.conf
cp TCP_8883_Encrypted_MQTT.conf /mnt/mqtt/config/conf.d/TCP_8883_Encrypted_MQTT.conf
cp TCP_9001_Unencrypted_Websockets.conf /mnt/mqtt/config/conf.d/TCP_9001_Unencrypted_Websockets.conf
cp TCP_9883_Encrypted_Websockets.conf /mnt/mqtt/config/conf.d/TCP_9883_Encrypted_Websockets.conf
cp generate-CA.sh /mnt/mqtt/config/certs/generate-CA.sh
cp passwd /mnt/mqtt/config/passwd
cp aclfile /mnt/mqtt/config/aclfile
sudo chmod +x /mnt/mqtt/config/certs/generate-CA.sh
sudo chown -R 1000:1000 /mnt/mqtt

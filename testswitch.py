import paho.mqtt.client as mqtt
import sys
args = sys.argv

# 定数定義
host = '127.0.0.1'
port = 1883
topic = 'dt/switch'
payload = '' + args[1]

# プロトコルを v3.1.1 を指定
client = mqtt.Client(protocol=mqtt.MQTTv311)
# 接続
client.connect(host, port=port, keepalive=60)
# パブリッシュ
client.publish(topic, payload)
# 切断
client.disconnect()
import paho.mqtt.client as mqtt

# 定数定義
host = '127.0.0.1'
port = 1883
topic = 'dt/pinot/v1/ou/eng4/room106/pinot-switch001/switch'
payload = 'ON'

# プロトコルを v3.1.1 を指定
client = mqtt.Client(protocol=mqtt.MQTTv311)
# 接続
client.connect(host, port=port, keepalive=60)
# パブリッシュ
client.publish(topic, payload)
# 切断
client.disconnect()
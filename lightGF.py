import paho.mqtt.client as mqtt
import sys

args = sys.argv

# 定数定義
host = '127.0.0.1'
port = 1883
topic = 'cmd/pinot/v1/nursinghome/GF/room' + args[1] + '/pinot-light' + args[1] + '/light' + args[1]

# 接続
def on_connect(client, userdata, flags, rc):
    # 戻り値チェック
    print("Connected with result code " + str(rc))
    # サブスクライブ
    client.subscribe(topic)

# 受信
def on_message(client, userdata, msg):
    print('topic:[' + msg.topic + '] payload:[' + str(msg.payload) + ']')

if __name__ == '__main__':
    # プロトコルを v3.1.1 を指定
    client = mqtt.Client(protocol=mqtt.MQTTv311)
    # ハンドラー設定
    client.on_connect = on_connect
    client.on_message = on_message
    # 接続
    client.connect(host, port=port, keepalive=60)
    # 受信ループ
    client.loop_forever()
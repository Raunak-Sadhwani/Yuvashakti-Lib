from flask import Flask
import pymysql

app = Flask(__name__)

@app.route('/')
def index():
    conn = pymysql.connect(
        host='sql.freedb.tech',
        user='freedb_yuvashakti',
        password='Y8R4fk@rbGPV94t',
        database='freedb_yuvashakti'
    )
    cur = conn.cursor()
    cur.execute('SELECT * FROM users')
    results = cur.fetchall()
    cur.close()
    conn.close()
    return str(results)

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=False)

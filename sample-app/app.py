from typing import List, Dict
from flask import Flask
import mysql.connector
import json

app = Flask(__name__)


def epl_teams() -> List[Dict]:
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'soccer_teams'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM epl_teams')
    results = [{team_name: team_nickname} for (team_name, team_nickname) in cursor]
    cursor.close()
    connection.close()

    return results

@app.route('/')
def index() -> str:
    return json.dumps({'epl_teams': epl_teams()})

if __name__ == '__main__':
    app.run(host='0.0.0.0')

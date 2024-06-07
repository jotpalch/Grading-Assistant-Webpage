from flask import Flask, render_template
import json
import os

app = Flask(__name__)

@app.route('/')
def index():
    projects = [ i.replace(".json", "") for i in os.listdir('json') if i.endswith('.json') ]
    projects.sort()
    return render_template('index.html', projects=projects)

@app.route('/<project_name>')
def project(project_name):
    if not os.path.isfile(f'json/{project_name}.json'):
        return ""
    with open(f'json/{project_name}.json', 'r') as f:
        data = json.load(f)
    return render_template('lab.html', title=f"{project_name}", data=data)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000)

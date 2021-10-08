<div align="center">
  <a href="https://shahnawaz-pabon.github.io/">
    <img alt="Shahnawaz Hossan" src="https://img.icons8.com/external-justicon-flat-justicon/100/000000/external-thunder-weather-justicon-flat-justicon.png"/>
  </a>
  <h1>FastAPI Boilerplate</h1>
</div>

<div align="center" style="margin-bottom:30px">
    <a href='https://github.com/shahnawaz-pabon/fastapi-boilerplate/blob/main/LICENSE'>
      <img src="https://img.shields.io/badge/License-MIT-2c3e50?style=for-the-badge" alt="Logo" />
    </a>
</div>

## 📁 Project Structure

```text
📂 fastapi-boilerplate
|_📁 app
  |_📁 api
    |_📁 api_v1
      |_📁 endpoints
        |_📄 examples.py
    |_📄 api.py
  |_📁 core
    |_📄 config.py
  |_📄 main.py
|_📁 .git
|_📄 .gitignore
|_📄 .dockerignore
|_📄 docker-compose.yml
|_📄 Dockerfile
|_📄 LICENSE
|_📄 README.md
|_📄 requirements.txt
```

## 🔨 Project Setup and Run

### 👉 By using virtual environment

```bash
$ python3.8 -m venv venv
$ source venv/bin/activate
$ pip install -r requirements.txt
$ uvicorn app.main:app --reload --host 0.0.0.0
```

After installing new module using pip, don't forget to update your `requirements.txt` file:

```bash
$ pip freeze > requirements.txt
```

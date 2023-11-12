# A Todo List demo App
Spinoff of todolist application available at https://github.com/a2975667/flask-gcp-mysql-demo. 

## Requirements

```
python
podman 
```

## Getting started

## Get the code
```bash
git clone -b containerize https://github.com/brochwerger/todolist-flask
cd todolist-flask
```

## Create network for local servcies to communicate
podman network mynet

## Run mysql server (as a local container) 
```bash
podman run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=<your-choice-of-password> --name mysql mysql
```

# Build container image
```bash
podman build -t todolist .
```

# Run application as local container

```bash
podman run --network=host -e MYSQL_USER=root -e MYSQL_PASSWORD=<your-choice-of-password> -e MYSQL_DB=todo -e MYSQL_HOST=127.0.1.1 --name todolist todolist
```
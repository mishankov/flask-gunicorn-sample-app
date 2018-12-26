# Follow me


## Install python and venv
```bash
apt-get install python3-pip python3-dev python3-venv
```
Above line is for Linux Ubuntu. It may vary for your OS

## Create and activate venv
```bash
python3 -m venv venv
source venv/bin/activate
```

## Install flask and gunicorn
```bash
pip3 install --upgrade -r requirements.txt
```

## (For test) To start flask on specific port
```python
if __name__ == '__main__':
	app.run(port=4000)
```
or
```python
if __name__ == '__main__':
	app.run(host="0.0.0.0", port=4000)
```
App with explicit host is visible from network

## (For test) To start gunicorn on specific port
```bash
gunicorn --bind 127.0.0.1:4400  --workers=2 wsgi:app
```
or
```bash
gunicorn -b 0.0.0.0:4400 -w=2 wsgi:app
```

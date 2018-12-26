from flask import Flask


app = Flask(__name__)

@app.route('/')
def home():
	print('\033[1;34m' + 'I can talk!' + '\033[0m')

	return 'Hello. I\'m flask'

	
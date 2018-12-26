. ./output_style.config

. ./app_server.config

echo -e "${Info}Activate the virtual environment${Reset}"
. venv/bin/activate

echo -e "${Info}Install or update python modules${Reset}"
pip3 install --upgrade -r requirements.txt

echo -e "${Start}Start application server at ${Link}http://${APP_HOST}:${APP_PORT}${ResetLink} with ${APP_WORKERS} workers${Reset}"
gunicorn -b $APP_HOST:$APP_PORT -w=$APP_WORKERS wsgi:app

echo -e "${Info}Deactivate the virtual environment${Reset}"
deactivate

echo -e "${Stop}Application server stopped${Reset}"
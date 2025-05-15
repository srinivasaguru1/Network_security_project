!bin/sh

airflow db init


airflow users create \
    --username admin \
    --password admin \
    --firstname Peter \
    --lastname Parker \
    --role Admin \
    --email spiderman@superhero.org || echo "User already exists, skipping creation."

nohup airflow scheduler &
airflow webserver
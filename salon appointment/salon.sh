#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=salon -t --no-align -c"

CUSTOMER_SERVICE() {
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE

  NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  CUSTOMER_NAME=$(echo $NAME | sed 's/ //g')

  if [[ -z $NAME ]]; then
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    SAVED_TO_TABLE_CUSTOMERS=$($PSQL "INSERT INTO customers(name,phone) VALUES('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
  fi

  GET_SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  SERVICE_NAME=$(echo $GET_SERVICE_NAME | sed 's/ //g')
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

  echo -e "\nWhat time would you like your $SERVICE_NAME, $CUSTOMER_NAME?"
  read SERVICE_TIME
  SAVED_TO_TABLE_APPOINTMENTS=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

  if [[ $SAVED_TO_TABLE_APPOINTMENTS == "INSERT 0 1" ]]; then
    echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
}

MAIN_MENU() {
  echo -e "\nWelcome to the Salon! Please choose a service:"

  if [[ $1 ]]; then
    echo -e "\n$1"
  fi

  LIST_SERVICES=$($PSQL "SELECT service_id, name FROM services")
  echo "$LIST_SERVICES" | while IFS='|' read SERVICE_ID SERVICE; do
    echo "$SERVICE_ID) $SERVICE"
  done

  read SERVICE_ID_SELECTED

  if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]] || [[ -z $($PSQL "SELECT service_id FROM services WHERE service_id=$SERVICE_ID_SELECTED") ]]; then
    MAIN_MENU "I could not find that service. What would you like today?"
  else
    CUSTOMER_SERVICE
  fi
}

MAIN_MENU

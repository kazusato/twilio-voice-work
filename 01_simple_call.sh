#!/usr/bin/env bash

echo ACCOUNT_SID=${ACCOUNT_SID}
echo FROM=${FROM_NUMBER}
echo TO=${TO_NUMBER}

curl -XPOST https://api.twilio.com/2010-04-01/Accounts/${ACCOUNT_SID}/Calls \
 -u ${ACCOUNT_SID}:${ACCESS_TOKEN} \
 --data-urlencode From=${FROM_NUMBER} \
 --data-urlencode To=${TO_NUMBER} \
 --data Url='http://demo.twilio.com/docs/voice.xml'


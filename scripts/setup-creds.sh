#!/bin/bash

read -p 'Username: ' APIGEE_USER
read -sp 'Password: ' APIGEE_PASS
read -p 'Apigee Organisation Name: ' APIGEE_ORG
read -p 'Apigee Environment Name: ' APIGEE_ENV

export org=$APIGEE_ORG
export username=$APIGEE_USER
export env=$APIGEE_ENV
export url="https://api.enterprise.apigee.com"
export api_domain="apigee.net"
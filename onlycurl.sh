#!/bin/bash
URL=$1
curl -H "Content-Type: application/json" -d '' ${URL}/api/hooks/payout
curl -H "Content-Type: application/json" -d '' ${URL}/api/hooks/calls/5
curl -H "Content-Type: application/json" -d '' ${URL}/api/hooks/calls/24

#=====================================================================
#       What need to do
# 0 0 1 * *' => fetch(`${config.apiUrl}/api/hooks/payout`, {
#    method: 'post',
#    headers: { 'Content-Type': 'application/json' },
#    body: '',
#   })
# '*/5 * * * *' => fetch(`${config.apiUrl}/api/hooks/calls/5`, {
#    method: 'post',
#    headers: { 'Content-Type': 'application/json' },
#    body: '',
#   })
# '*/5 * * * *' => fetch(`${config.apiUrl}/api/hooks/calls/24`, {
#    method: 'post',
#    headers: { 'Content-Type': 'application/json' },
#    body: '',
#   })
#=====================================================================
#!/bin/bash
URL=3.68.101.41
echo "0 0 1 * *   root curl --header \"Content-Type: application/json\" --request POST --data '' ${URL}/api/hooks/payout > /proc/1/fd/1 2>/proc/1/fd/2
*/5 * * * * root curl --header \"Content-Type: application/json\" --request POST --data '' ${URL}/api/hooks/calls/5 > /proc/1/fd/1 2>/proc/1/fd/2
*/5 * * * * root curl --header \"Content-Type: application/json\" --request POST --data '' ${URL}/api/hooks/calls/24 > /proc/1/fd/1 2>/proc/1/fd/2"  >> /etc/crontab

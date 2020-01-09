#! /bin/sh 
filename="/root/subweb/api/aff.py"
cat>"${filename}"<<EOF
subip = '$1:10010'
apiip = ''
EOF
cd /root/subweb/config
./subconverter &
sleep 3
python3 /root/subweb/api.py &
sleep 3

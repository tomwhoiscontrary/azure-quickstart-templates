#! /bin/bash -eu

echo "Launch script running as $(whoami) at $(date) in $(pwd)"

for f in concourse.yml bosh.yml create_cert.sh setup_devbox.py init.sh deploy_bosh.sh
do
   wget $1/$f -O $f
done

cp * ../../
cd ../../

echo "---- $(pwd):"
ls -lF
echo "----"

python setup_devbox.py

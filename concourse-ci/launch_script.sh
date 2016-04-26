#! /bin/bash -eux

echo "Launch script running as $(whoami) at $(date) in $(pwd)"

echo "Downloading scripts ..."
for f in concourse.yml bosh.yml create_cert.sh setup_devbox.py init.sh deploy_bosh.sh
do
   wget $1/$f -O $f
done

echo "Copying scripts ..."
cp * ../../

echo "Relocating ..."
cd ../../

echo "---- $(pwd):"
ls -lF
echo "----"

echo "Running setup ..."
python setup_devbox.py

#!/bin/bash
<<<<<<< HEAD
set -e

docker rm -f samplerunning 2>/dev/null || true
docker image rm -f sampleapp 2>/dev/null || true
rm -rf tempdir

mkdir -p tempdir/templates tempdir/static
=======

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static
>>>>>>> 7d0d18b60c842c9d1d910e7a6cae32415100f533

cp sample_app.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

<<<<<<< HEAD
echo "FROM python:3.9-slim" > tempdir/Dockerfile
echo "RUN apt-get update && apt-get install -y python3-flask" >> tempdir/Dockerfile
echo "COPY ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY sample_app.py /home/myapp/" >> tempdir/Dockerfile
echo "EXPOSE 5050" >> tempdir/Dockerfile
echo "CMD python3 /home/myapp/sample_app.py" >> tempdir/Dockerfile

cd tempdir
docker build -t sampleapp .

docker run -t -d -p 5050:5050 --name samplerunning sampleapp
docker ps -a
=======
echo "FROM python:3.9-slim" >> tempdir/Dockerfile
echo "RUN pip install --no-cache-dir flask" >> tempdir/Dockerfile
echo "COPY  ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY  ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY  sample_app.py /home/myapp/" >> tempdir/Dockerfile
echo "EXPOSE 5050" >> tempdir/Dockerfile
echo "CMD python /home/myapp/sample_app.py" >> tempdir/Dockerfile

cd tempdir
docker build -t sampleapp .
docker run -t -d -p 5050:5050 --name samplerunning sampleapp
docker ps -a 
>>>>>>> 7d0d18b60c842c9d1d910e7a6cae32415100f533

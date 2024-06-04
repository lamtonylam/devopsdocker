git clone git@github.com:$1.git

cd $( basename "$1" )

docker build -t $2 .
docker push $2:latest
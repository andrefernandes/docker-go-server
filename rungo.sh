GOPORT=${GOPORT:-8153}
GOSPORT=${GOSPORT:-8154}
echo "Will use ports $GOPORT and $GOSPORT"
docker run --rm -t -i \
   -p $GOPORT:8153 \
   -p $GOSPORT:8154 \
   -v /opt/go:/opt/go \
   andrefernandes/docker-go-server:latest


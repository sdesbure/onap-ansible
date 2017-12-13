
INFO=$(/consul/config/bin/kafkacat -L -b kafka)
if [ ${?} -eq 0 ]; then
  echo Success. Kafka process is running. 2>&1
  exit 0
else
  echo Failed. Kafka is not running. 2>&1
  exit 2
fi
if [ "$(echo 'mntr' | nc zookeeper 2181 | wc -l)" -ge 1 ] ; then
  echo Success. Zookeeper is running. 2>&1
  exit 0
else
  echo Failed. Zookeeper is not running. 2>&1
  exit 2
fi
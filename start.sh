#!/bin/sh

if [ "x$TOPIC" != "x" ]; then
    if [ -f /opt/citisim/kafka-mirror-$TOPIC.py ]; then
        exec /opt/citisim/kafka-mirror-$TOPIC.py --kafka-cluster $KAFKA_BROKER
    else
        echo "Error: Connector kafka-mirror-$TOPIC.py not found ... exiting"
        sleep 3
        exit 1
    fi
else
    echo "Error: Must declare env TOPIC ... exiting"
    sleep 3
    exit 1
fi

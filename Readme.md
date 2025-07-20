# Telemetry experiment

## Monitored device

This is a VM to simulate a device which runs a prometheus exporter. 
The prometheus exporter collects data and makes it available at http://192.168.56.2:9100/metrics (accessible from the host).

## Prometheus server

This simulates a prometheus server that scrapes the exporter for data. The UI is available at http://192.168.56.0:9090/. 

Some queries that can be used to check that data is being correctly retrieved:
- `rate(node_cpu_seconds_total{mode="system"}[1m])`
- `rate(node_network_receive_bytes_total[1m])`
FROM prom/prometheus:v2.53.0
COPY prometheus.yaml /etc/prometheus/prometheus.yaml
CMD sh -c "prometheus --config.file=/etc/prometheus/prometheus.yml --web.listen-address=0.0.0.0:${PORT}"
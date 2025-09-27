# Private Subnet 설치 시 주의 사항

1. prometheus, grafana의 data 디렉토리의 경우 반드시 777로 변경 필요
2. loki의 소유명 10001:10001로 변경하기 (rulestorage, var)
3. nextcloud 디렉토리의 config, custom_apps, data, themes의 경우 33:tape로 변경 필요
4. 먼저 실행 후 mediawiki의 config.php가 생기면 sample로 변경 필요
5. grafana import의 경우, node_exporter 기반 1860, 9276, 11074 / cAdvisor 기준 193, 179, 12275

설치 하기
php occ status | grep -q "installed: true";\
php occ background:cron\
php occ app:install notify_push || php occ app:enable notify_push\
php occ notify_push:setup https://cloud.lucky-gun.com/push || true

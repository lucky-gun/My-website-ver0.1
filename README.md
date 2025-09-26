# Private Subnet 설치 시 주의 사항

1. prometheus, grafana의 data 디렉토리의 경우 반드시 777로 변경 필요
2. loki의 소유명 10001:10001로 변경하기 (rulestorage, var)
3. 먼저 실행 후 mediawiki의 config.php가 생기면 sample로 변경 필요

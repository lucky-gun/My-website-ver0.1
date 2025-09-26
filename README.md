#Public Subnet 설치 시 주의사항

1. 만약 web, NAT ip가 바뀔 경우, 이에 대비해 아래와 같이 모두 바꿔주어야 한다.
   - 1) CloudFlare의 ip 변경
     2) traefik의 middleware의 ip-whitelist 변경 필요
     3) alloy의 config.river 파일의 traefik.log 포맷 변경 필요
     4) modsecurity의 whitelist_admin_ips.txt 변경 필요
     5) fail2ban의 jail.local에서 변경 필요

2. CloudFlare DNS api 이용시 설정 확인하기 (traefik 및 fail2ban의 action에서 cloudflare 연결 시 변경하기)
3. fail2ban의 log의 경우 바로 생기지 않기 때문에 한번 실행 후 디렉토리로 생성 시 삭제후 파일로 생성 실행 시작
4. 정상적으로 각 서비스 완성 후 apps.conf에서 불필요한 부분들 다시 진행 필요(ex)

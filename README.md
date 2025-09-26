#Public Sunet 설치 시 주의사항

1. 만약 web, NAT ip가 바뀔 경우, 이에 대비해 아래와 같이 모두 바꿔주어야 한다.
   - 1) CloudFlare의 ip 변경
     2) traefik의 middleware의 ip-whitelist 변경 필요
     3) alloy의 config.river 파일의 traefik.log 포맷 변경 필요
     4) modsecurity의 whitelist_admin_ips.txt 변경 필요
     5) fail2ban의 jail.local에서 변경 필요

2. 정상적으로 각 서비스 완성 후 apps.conf에서 불필요한 부분들 다시 진행 필요(ex)

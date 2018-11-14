ps -ef | grep LichKin-EMPLOYEE | grep -v grep | cut -c 9-15 | xargs kill -s 9

cd /opt/runnings/lichkin-projects-employee-launcher/
nohup java org.springframework.boot.loader.JarLauncher --spring.profiles.active=production,localhost --server.servlet.context-path=/EMPLOYEE --server.port=18888 --log.tag=LichKin-EMPLOYEE --log.level.system=debug --log.level.org=info --log.level.net=info --lichkin.locale.default=zh_CN --lichkin.locale.implemented=zh_CN --lichkin.system.tag=LichKin-EMPLOYEE --lichkin.system.name=员工平台 --lichkin.system.debug=false --lichkin.web.debug=false --lichkin.web.admin.debug=false --lichkin.web.compress=true >/dev/null 2>&1 &

tail -f /lichkin-logs/LichKin-EMPLOYEE.debug.log

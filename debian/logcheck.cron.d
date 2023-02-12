# crontab entries for the logcheck package
PATH=/sbin:/bin:/usr/sbin:/usr/bin:%%PREFIX%%/sbin:%%PREFIX%%/bin
MAILTO=root
@reboot    if [ -x %%PREFIX%%/sbin/logcheck ]; then nice -n10 %%PREFIX%%/sbin/logcheck -R; fi
2 * * * *  if [ -x %%PREFIX%%/sbin/logcheck ]; then nice -n10 %%PREFIX%%/sbin/logcheck; fi

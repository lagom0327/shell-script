# shell-script

get Memory Usage every 30 seconds
在 crontab 新增以下，可每 30 秒抓一次記憶體使用量

```
# m h  dom mon dow   command
* * * * * /home/{dir}/getMemory.sh >> /home/{dir}/memory_log/`date +\%Y\%m\%d`_memory.log
* * * * * sleep 30; /home/{dir}/getMemory.sh >> /home/{dir}/memory_log/`date +\%Y\%m\%d`_memory.log
```
### Pulling the cronjob on your device
```
wget 
```
### Editing the cronjob
```
nano cronjob.sh
```

### Open crontab editor
```
crontab -e
```

### Scheduling syntax
```
m h dom mon dow command
```

[ minute, hour, day of month, month, day of week ]

*(* * *)* means any
*(* / *)*	step values

### Append the date/time to file every Sunday at 6:15 pm
```
15 18 * * 0 date >> sundays.txt
```

### Run a shell script on the first minute of the first day of each month
```
1 0 1 * * ./cronJob.sh
```

### Back up your home directory every Monday at 10 am
```
0 10 * * 1 tar -cvf my_backup_path\my_archive.tar.gz $HOME\
```

### list all cron jobs
```
crontab -l
```

### To run CronJob every five minutes
```
  */5 * * * * ./cronJob.sh
```



### Running CronJob on server ☁️ 
Cronjob can be launched over Google Cloud Platform / Amazon Web Services




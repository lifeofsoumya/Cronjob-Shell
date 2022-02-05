# open crontab editor
crontab -e

# job scheduling syntax
m h dom mon dow command
minute, hour, day of month, month, day of week
* means any

# append the date/time to file every Sunday at 6:15 pm
15 18 * * 0 date >> sundays.txt

# run a shell script on the first minute of the first day of each month
1 0 1 * * ./My_Shell_Script.sh

# back up your home directory every Monday at 3 am
0 3 * * 1 tar -cvf my_backup_path\my_archive.tar.gz $HOME\

# deploy your cron job
Close the crontab editor and save the file

# list all cron jobs
crontab -l
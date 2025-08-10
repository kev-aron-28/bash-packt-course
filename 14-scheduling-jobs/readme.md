# Schedule jobs with at and crontab

at and crontab are commands used to schedule a job, nothing but running shell script automatically at a 
given time in the background

echo "completePathOfScript" | at 17:20

atq -> list of jobs


## crontab

<minute> <hour> <dayofmonth> <monthofyear> <dayoftheweek> <command>

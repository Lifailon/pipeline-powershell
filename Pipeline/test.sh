State=Start
ServiceName=cron
systemctl status *$ServiceName* | grep -iP "Active:|Loaded:| - ";
echo выбрано $State;
if [[ $State -eq "Start" ]];
then sudo systemctl start *$ServiceName*; echo условие start;
elif [[ $State -eq "Stop" ]];
then sudo systemctl stop *$ServiceName*; echo условие stop;
else echo условие none;
fi;
!/bin/bash

trap -- '' SIGINT SIGQUIT SIGTERM SIGTSTP
echo "What is your name?"
read ISNAME
if [ $ISNAME = "root" ];
then
        echo "Nice to meet you, root."
        echo "Login as root" | mail -s "Login for root" root
        echo "Next for the Security Question!"  
fi

echo "What is the codename?"
read CODENAME
if [ "$CODENAME" = "Cole Server" ];
then
        echo "Hello, Welcome root!";
else
        echo "Away from me, Not Root";
        echo "Unauthorized Root Login" | mail -s "INTRUDER ALERT" root;
        pkill -KILL -u $ISNAME;
fi

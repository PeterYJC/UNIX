if [ $# -eq 1 ]
then
        who | cut -c 1-6 >user
        echo "your target is: $1"
        echo "user list:"
        cat user
        if [ -n "`grep $1 user`" ]
        then
                echo "user $1 is logon"
                exit
        else
                while [ -z "`grep $1 user`" ]
                do
                        who | cut -c 1-6 >user
                        echo "waiting user $1..."
                        sleep 5
                done
                echo "user $1 is logon"
        fi
else
        echo "Usage:usr_monitor username..."
fi

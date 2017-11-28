if [ $# -eq 1 ]
then
        INPUT="input"
        echo "Please input what you want with the end of Enter :"
        while [ TRUE ]
        do
                read INPUT
                if [ "$INPUT" ]
                then
                        echo $INPUT>>$1
                else
                        break
                fi
        done
        cat $1
else
        echo "Usage: examl filename"
fi


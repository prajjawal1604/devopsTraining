l=80
u=`free | awk '/Mem:/ { printf("%d\n", $3/$2 * 100.0) }'`

if [ $u > $l ]
then
        echo "Your Memory Usage getting more than limit of 80% >  Current Usage : $u " | mail -s "Memory Usage notfication" prajjawal@systemMail.com 
fi

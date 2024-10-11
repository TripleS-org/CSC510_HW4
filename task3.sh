gawk -F, '$3 == 2 && $NF ~ /S/' titanic.csv | sed 's/female/F/g' | sed 's/male/M/g' | gawk -F, '{
    if($(NF-6) != null ) {
        sum += $(NF-6);
        count=count+1;
    }
    print $0;
} END {
    print "Average age of all the passangers that are filtered:  " sum / count;
}'

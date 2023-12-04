#! /usr/bin/awk -f

BEGIN {
    file=ARGV[1];
    FS="~";
    m1=0;
    m2=0;
    m3=0;
}

NR!=1 {
    if($2>m1) {
        m1=$2;
        name1=$1;
    }

    if($3>m2) {
        m2=$3;
        name2=$1;
    }

    if($4>m3) {
        m3=$4;
        name3=$1;
    }
}

END {
    printf "Top scorer for marks1: %s with score %.2f\n", name1, m1;
    printf "Top scorer for marks2: %s with score %.2f\n", name2, m2;
    printf "Top scorer for marks3: %s with score %.2f\n", name3, m3;
}


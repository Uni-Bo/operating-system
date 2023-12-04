#!/usr/bin/awk -f

BEGIN {
    file = ARGV[1];
    FS = "~";
    sum = 0;
    count = 0;
    print "Enter the subject for which you want your max";
    getline ch<"-"
    subj=ch+1;
}

NR != 1 {
    sum += $subj;
    count++;
}

END {
    avg = (count > 0) ? sum / count : 0;
    printf("sum is %d avg is %.2f\n", sum, avg);
}


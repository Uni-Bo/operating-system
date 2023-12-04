#!/usr/bin/awk -f

# Filename: 1.awk

BEGIN {
    filename = ARGV[1];
    FS = "~";
    max = 0;
}

NR != 1 {
    tot = $2 + $3 + $4;
    if (tot > max) {
        max = tot;
        name = $1;
    }
}

END {
    print "Highest marks =", max, " name =", name;
}


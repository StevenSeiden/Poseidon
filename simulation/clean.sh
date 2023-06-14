echo "Performing cleanup."
    rm results/data/$1-$2.txt
    rm results/mpd/$1-$2.txt
    rm results/rate/$1-$2.txt
    rm results/signal/$1-$2.txt
    rm results/smoothed_signal/$1-$2.txt
    rm mix/config_$2_$1_poseidon.txt
    rm mix/fct_$2_$1_poseidon.txt
    rm mix/pfc_$2_$1_poseidon.txt
    rm mix/qlen_$2_$1_poseidon.txt
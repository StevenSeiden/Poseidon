echo "Performing cleanup."
    rm results/data/$1-$2.txt
    rm results/mpd/$1-$2.png
    rm results/rate/$1-$2.png
    rm results/signal/$1-$2\_signals.png
    rm results/smoothed_signal/$1-$2\_smooth.png
    rm mix/config_$2\_$1\_poseidon.txt
    rm mix/fct_$2\_$1\_poseidon.txt
    rm mix/pfc_$2\_$1\_poseidon.txt
    rm mix/qlen_$2\_$1\_poseidon.txt
    rm mix/mix_$2\_$1\_poseidon.tr
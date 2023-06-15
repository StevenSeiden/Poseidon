#Reset to origional state



CC='gcc-5' CXX='g++-5' ./waf configure

python run.py --cc poseidon --trace $1 --bw 100 --topo $2 --poseidon_m 0.25 --poseidon_min_rate 1.0 > ./results/data/$1-$2.txt

cd results

python draw.py

cd ..

echo "Perform cleanup (deleting changes and results)? (y/n)"
read answer

if [ "$answer" == "y" ]; then
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
else
    echo "Skipping the cleanup."
fi
#Reset to origional state



CC='gcc-5' CXX='g++-5' ./waf configure

python run.py --cc poseidon --trace $1 --bw 100 --topo $2 --poseidon_m 0.25 --poseidon_min_rate 1.0 > ./results/data/$1-$2.txt &

cd results

python draw.py

cd ..

echo "Perform cleanup (revert to last commit, deleting changes)? (y/n)"
read answer

if [ "$answer" == "y" ]; then
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
else
    echo "Skipping the cleanup."
fi
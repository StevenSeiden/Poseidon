#Reset to origional state


if [ "$3" != "-s" ]; then
    echo "Performing cleanup."
    git reset --hard
    git clean -fxd

else
    echo "Skipping cleanup."
fi


CC='gcc-5' CXX='g++-5' ./waf configure

python run.py --cc poseidon --trace $1 --bw 100 --topo $2 --poseidon_m 0.25 --poseidon_min_rate 1.0 > ./results/data/$1-$2.txt

cd results

python draw.py
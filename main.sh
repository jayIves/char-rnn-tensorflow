
echo "Training...."
./postTrain.sh > post.log
./train.sh > forward.log
./reverseTrain.sh > reverse.log
echo "Training State saves to post.log, forward.log, and reverse.log"

echo "Sampling...."
echo "Naive Sampling..."
python naiveSample.py --forward_dir=save/BobDylan --reversed_dir=reversed/BobDylan --post_dir=post/BobDylan --sample=2 -n 1000 > finalSamples/Naiive/sample.txt

echo "Scheme Sampling..."
python schemeSample.py --forward_dir=save/BobDylan --reversed_dir=reversed/BobDylan --post_dir=post/BobDylan --sample=2 -n 1000 > finalSamples/Scheme/sample.txt

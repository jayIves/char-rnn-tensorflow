
echo "Training...."
./postTrain.sh > post.log
./train.sh > forward.log
./reverseTrain.sh > reverse.log
echo "Training State saves to post.log, forward.log, and reverse.log"

echo "Sampling...."


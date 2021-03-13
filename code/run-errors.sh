#<<<<<<< Updated upstream
#for depth in {1..30}; do
#  echo "depth = $depth"
#  time python main.py iwpc tree $depth
#done
#
#for lambda in 5.0 10.0 20.0 50.0 100.0 200.0 500.0 1000.0 2000.0 5000.0; do
#  echo "lambda = $lambda"
#  time python main.py eyedata linreg $lambda
#done

#lasso

#for lambda in 0.0001 0.001 0.01 0.1 1.0 10.0 100.0; do
#  echo "lambda = $lambda"
#  time python main.py eyedata lasso $lambda
#done
#
#for lambda in 0.0001 0.001 0.01 0.1 1.0 10.0 100.0; do
#  echo "lambda = $lambda"
#  time python main.py iwpc lasso $lambda
#done

#svm
#
#for C in 0.0001 0.001 0.01 0.1 1.0 10.0 100.0 1000.0; do
#  echo "C = $C"
#  time python main.py eyedata svm $C
#done
#
#for C in 0.0001 0.001 0.01 0.1 1.0 10.0 100.0 1000.0; do
#  echo "C = $C"
#  time python main.py iwpc svm $C
#done

# SGDReg

#for lambda in 0.0001 0.001 0.01 0.1 1.0 10.0 100.0; do
#  echo "lambda = $lambda"
#  time python main.py eyedata SGDReg $lambda
#done

#for lambda in 0.0001 0.001 0.01 0.1 1.0 10.0 100.0; do
#  echo "lambda = $lambda"
#  time python main.py iwpc SGDReg $lambda
#=======
#for depth in {1..13}; do
#  echo "depth = $depth"
#  time python main.py iwpc tree $depth
#  time python main.py eyedata tree $depth
#done
#
#for lambda in 5.0 10.0 20.0 50.0 100.0 200.0 500.0 1000.0 2000.0 5000.0; do
#  echo "lambda = $lambda"
#  time python main.py eyedata linreg $lambda
#done

#for n_neighbor in {1..10}; do
#  echo "n_neighbor = $n_neighbor"
#  time python main.py eyedata knn $n_neighbor
#  time python main.py iwpc knn $n_neighbor
#  done

#for lambda in 0.00001 0.00002 0.00005 0.00007 0.0001 0.00015 0.0002 0.00025 0.0003 0.00035 0.0004; do
#  echo "lambda = $lambda"
#  time python main.py iwpc linreg $lambda
#>>>>>>> Stashed changes
#done

for n_hidden_layer in 1 5 10 15 20 25 30 35 40 45 50 ; do
  time python main.py iwpc mlr $n_hidden_layer
  time python main.py eyedata mlr $n_hidden_layer
done
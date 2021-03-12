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

for lambda in 0.0001 0.001 0.01 0.1 1.0 10.0 100.0; do
  echo "lambda = $lambda"
  time python main.py iwpc SGDReg $lambda
done
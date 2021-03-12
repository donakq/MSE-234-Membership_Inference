#cat ../results-sklearn/iwpc/tree-errors.txt | while read line; do
#  set $line
#  echo "depth = $1"
#  time python main.py iwpc tree $1 --inc $2 $3 --one-error
#  time python main.py iwpc tree $1 --inc $2 $3
#done
#python summarize.py ../results-sklearn/iwpc/membership/unknown-test-error tree
#python summarize.py ../results-sklearn/iwpc/membership/known-test-error tree
#
#cat ../results-sklearn/eyedata/linreg-errors.txt | while read line; do
#  set $line
#  echo "lambda = $1"
#  time python main.py eyedata linreg $1 --inc $2 $3 --one-error
#  time python main.py eyedata linreg $1 --inc $2 $3
#done
#python summarize.py ../results-sklearn/eyedata/membership/unknown-test-error linreg
#python summarize.py ../results-sklearn/eyedata/membership/known-test-error linreg

#  lasso
cat ../results-sklearn/eyedata/lasso-errors.txt | while read line; do
  set $line
  echo "depth = $1"
  time python main.py eyedata lasso $1 --inc $2 $3 --one-error
  time python main.py eyedata lasso $1 --inc $2 $3
done
python summarize.py ../results-sklearn/eyedata/membership/unknown-test-error lasso
python summarize.py ../results-sklearn/eyedata/membership/known-test-error lasso

cat ../results-sklearn/iwpc/lasso-errors.txt | while read line; do
  set $line
  echo "depth = $1"
  time python main.py iwpc lasso $1 --inc $2 $3 --one-error
  time python main.py iwpc lasso $1 --inc $2 $3
done
python summarize.py ../results-sklearn/iwpc/membership/unknown-test-error lasso
python summarize.py ../results-sklearn/iwpc/membership/known-test-error lasso

# svm
cat ../results-sklearn/eyedata/svm-errors.txt | while read line; do
  set $line
  echo "depth = $1"
  time python main.py eyedata svm $1 --inc $2 $3 --one-error
  time python main.py eyedata svm $1 --inc $2 $3
done
python summarize.py ../results-sklearn/eyedata/membership/unknown-test-error svm
python summarize.py ../results-sklearn/eyedata/membership/known-test-error svm

cat ../results-sklearn/iwpc/svm-errors.txt | while read line; do
  set $line
  echo "depth = $1"
  time python main.py iwpc svm $1 --inc $2 $3 --one-error
  time python main.py iwpc svm $1 --inc $2 $3
done
python summarize.py ../results-sklearn/iwpc/membership/unknown-test-error svm
python summarize.py ../results-sklearn/iwpc/membership/known-test-error svm

# SGDReg
cat ../results-sklearn/eyedata/SGDReg-errors.txt | while read line; do
  set $line
  echo "depth = $1"
  time python main.py eyedata SGDReg $1 --inc $2 $3 --one-error
  time python main.py eyedata SGDReg $1 --inc $2 $3
done
python summarize.py ../results-sklearn/eyedata/membership/unknown-test-error SGDReg
python summarize.py ../results-sklearn/eyedata/membership/known-test-error SGDReg

cat ../results-sklearn/iwpc/SGDReg-errors.txt | while read line; do
  set $line
  echo "depth = $1"
  time python main.py iwpc SGDReg $1 --inc $2 $3 --one-error
  time python main.py iwpc SGDReg $1 --inc $2 $3
done
python summarize.py ../results-sklearn/iwpc/membership/unknown-test-error SGDReg
python summarize.py ../results-sklearn/iwpc/membership/known-test-error SGDReg
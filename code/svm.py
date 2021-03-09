from sklearn.svm import LinearSVR

def sklearn_train_svm(X, y, C):
    return LinearSVR(C=C).fit(X, y)
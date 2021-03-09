from sklearn.linear_model import Lasso

def sklearn_train_linerg_lasso(X, y, alpha):
    return Lasso(alpha=alpha, max_iter=5000).fit(X,y)
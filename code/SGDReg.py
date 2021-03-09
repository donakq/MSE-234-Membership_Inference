from sklearn.linear_model import SGDRegressor

def sklearn_train_sgdreg(X, y, alpha):
    return SGDRegressor(alpha=alpha).fit(X, y)
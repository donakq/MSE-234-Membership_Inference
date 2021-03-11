from sklearn.neighbors import KNeighborsRegressor

def sklearn_train_knn(X, y, n_neighbors):
    # Create KNN classifier
    knn = KNeighborsRegressor(n_neighbors = int(n_neighbors))
    # Fit the classifier to the data
    return knn.fit(X,y)
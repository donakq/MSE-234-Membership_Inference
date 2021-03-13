import csv
import time
import numpy as np
import argparse
import warnings
warnings.filterwarnings('ignore')

from sklearn.preprocessing import scale
from sklearn.model_selection import GridSearchCV
from sklearn.neural_network import MLPRegressor
from sklearn.model_selection import train_test_split
from sklearn.feature_extraction import DictVectorizer


def load_eyedata(data_folder):
    datafile = '{}/eyedata.csv'.format(data_folder)
    data = np.loadtxt(datafile, skiprows=1, delimiter=',')
    data = scale(data)
    X, y = data[:, :-1], data[:, -1]
    featnames = np.array(
        list(map(lambda i: '{:03}'.format(i), range(X.shape[1]))))
    return X, y, featnames


def load_iwpc(data_folder):
    datafile = '{}/iwpc-scaled.csv'.format(data_folder)
    col_types = {'race': str,
                 'age': float,
                 'height': float,
                 'weight': float,
                 'amiodarone': int,
                 'decr': int,
                 'cyp2c9': str,
                 'vkorc1': str,
                 'dose': float}
    X, y = [], []
    with open(datafile) as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            for col_name in reader.fieldnames:
                col_type = col_types[col_name]
                row[col_name] = col_type(row[col_name])  # cast to correct type
                if col_name == 'dose':
                    y.append(row[col_name])
                    del row[col_name]
            X.append(row)

    dv = DictVectorizer()
    X = dv.fit_transform(X)
    y = np.array(y)
    featnames = np.array(dv.get_feature_names())
    return X, y, featnames


if __name__ == '__main__':
    data_folder = '../data'

    parser = argparse.ArgumentParser()
    parser.add_argument('data', choices=['eyedata', 'iwpc'], help='Specify the data to use')
    args = parser.parse_args()

    dataset = args.data

    if dataset == 'eyedata':
        X, y, featnames = load_eyedata(data_folder)
    if dataset == 'iwpc':
        X, y, featnames = load_iwpc(data_folder)

    train_X, test_X, train_y, test_y = train_test_split(X, y, random_state=9)

    time
    params = {
                'activation' : ['identity', 'logistic', 'tanh', 'relu'],
                'solver' : ['lbfgs', 'sgd', 'adam'],
                'hidden_layer_sizes': [(100,),(150,),(200,),(300,), (50,100,),(50,150,),(100,100,),(100,150,),(50,75,100,)],
        'max_iter':[200,250,300,350]
    }

    mlp_clf_grid = GridSearchCV(MLPRegressor(random_state=9), param_grid=params, n_jobs=-1, cv=5, verbose=1)
    mlp_clf_grid.fit(train_X,train_y)

    print('Train Accuracy : ',mlp_clf_grid.best_estimator_.score(train_X,train_y))
    print('Test Accuracy : ',mlp_clf_grid.best_estimator_.score(test_X, test_y))
    print('Grid Search Best Accuracy  :',mlp_clf_grid.best_score_)
    print('Best Parameters : ',mlp_clf_grid.best_params_)
    print('Best Estimators: ',mlp_clf_grid.best_estimator_)

import numpy as np
import pandas as pd
import joblib
import pickle

word_list = np.array([['dependable', 0],
       ['serious', 4],
       ['responsible', 3],
       ['extraverted', 1],
       ['lively', 2]])

# importing the dataset
#dataset = pd.read_csv('data/aptitude-test-group01.csv')
Pkl_file = 'pickle_model'
with open(Pkl_file, 'rb') as file:
    classifier=pickle.load(file)

input = np.array([18,  0,  2, 80, 75, 85, 90, 80, 70])
input = input.reshape(1,-1)
pred = classifier.predict(input)
for item in word_list:
    if int(item[1])== pred[0]:
        print(item[0])
        break
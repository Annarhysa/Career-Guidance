import numpy as np
import pandas as pd
import joblib
import pickle

# importing the dataset
#dataset = pd.read_csv('data/aptitude-test-group01.csv')
filename = '../Aptitude-test/finalized_model.sav'
loaded_model = pickle.load(open(filename, 'rb'))
input = [18,  0,  2, 80, 75, 85, 90, 80, 70]
input = input.reshape(1,-1)
pred = loaded_model.predict(input)
print(pred)
import numpy as np
import pickle

Pkl_file = 'career_model'
with open(Pkl_file, 'rb') as file:
    classifier=pickle.load(file)

input = np.array([16,1,1,70,75,80,85,70,75,85,0])
input = input.reshape(1,-1)
pred = classifier.predict(input)
print(pred)
import numpy as np
import pickle

whole_list = np.array([['Software Developer', 46],
       ['Data Scientist', 14],
       ['UX Designer', 52],
       ['Financial Analyst', 20],
       ['Marketing Specialist', 34],
       ['Human Resources Manager', 26],
       ['Product Manager', 41],
       ['Data Engineer', 13],
       ['Financial Planner', 21],
       ['Administrative Assistant', 0],
       ['Marketing Manager', 33],
       ['Research Scientist', 45],
       ['Graphic Designer', 23],
       ['Civil Engineer', 10],
       ['Nurse Practitioner', 36],
       ['Physical Therapist', 38],
       ['Chef', 7],
       ['Pharmacist', 37],
       ['Interior Designer', 27],
       ['Environmental Scientist', 17],
       ['Psychologist', 42],
       ['Electrician', 16],
       ['Aerospace Engineer', 1],
       ['Fashion Designer', 19],
       ['Veterinarian', 53],
       ['Investment Banker', 29],
       ['Public Relations Specialist', 44],
       ['Biomedical Engineer', 6],
       ['Dental Hygienist', 15],
       ['Event Planner', 18],
       ['Chemical Engineer', 8],
       ['Journalist', 30],
       ['Architect', 2],
       ['Art Director', 3],
       ['Technical Writer', 51],
       ['Chemist', 9],
       ['HR Consultant', 24],
       ['Logistician', 31],
       ['Market Research Analyst', 32],
       ['Physician Assistant', 39],
       ['Web Developer', 54],
       ['Data Analyst', 12],
       ['Technical Support Specialist', 50],
       ['Medical Illustrator', 35],
       ['Healthcare Administrator', 25],
       ['Supply Chain Manager', 49],
       ['Biologist', 5],
       ['Artificial Intelligence Engineer', 4],
       ['Public Health Analyst', 43],
       ['Statistician', 48],
       ['Software Tester', 47],
       ['Clinical Psychologist', 11],
       ['Political Analyst', 40],
       ['Forensic Scientist', 22],
       ['Investment Analyst', 28]])

Pkl_file = 'C:/Users/annar/OneDrive/Desktop/Visual Studio/GitHub/SIH/CareerWise/Aptitude-test/career_model'
with open(Pkl_file, 'rb') as file:
    classifier=pickle.load(file)

input = np.array([16,1,1,70,75,80,85,70,75,85,0])
input = input.reshape(1,-1)
pred = classifier.predict(input)
for item in whole_list:
    if int(item[1])== pred[0]:
        print(item[0])
        break


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import math
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

def stolenPoperty():

    df=pd.read_csv("C:\\Dataset\\random_forest.csv")

    Area_count = df.groupby('Region').sum()['Cases']

    res=Area_count.sort_values(ascending=False).head(5)

    return res

def autoProperty():

    df=pd.read_csv("C:\\Dataset\\random_forest.csv")

    Area_count = df.groupby('Region').sum()['Cases']

    res=Area_count.sort_values(ascending=False).head(5)

    return res

def fraudProperty():

     df=pd.read_csv("C:\\Dataset\\random_forest.csv")

     Area_count = df.groupby('Region').sum()['Cases']

     
     res=Area_count.sort_values(ascending=False).head(5)
     
     return res
    
def murder():

     df=pd.read_csv("C:\\Dataset\\random_forest.csv")

     Area_count = df.groupby('Region').sum()['Cases']

    
     res=Area_count.sort_values(ascending=False).head(5)
     
     return res

def trail():

     df=pd.read_csv("C:\\Dataset\\random_forest.csv")

     Area_count = df.groupby('Region').sum()['Cases']

    
     res=Area_count.sort_values(ascending=False).head(5)
     
     return res

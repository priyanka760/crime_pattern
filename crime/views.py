from django.shortcuts import render, redirect
from django.db.models import Count
from . models import Adminlogin
import sys
from .stolen import stolenPoperty,autoProperty,fraudProperty,murder,trail
import pandas as pd
import numpy as np
from sklearn.tree import DecisionTreeClassifier
from matplotlib import pyplot as plt
from sklearn.metrics import confusion_matrix, accuracy_score, f1_score, precision_score, recall_score
from sklearn import tree


# Create your views here.


def index(request):
    return render(request,'index.html')

def about(request):
    return render(request,'about.html')


def login(request):
    if request.method == "POST":
        username=request.POST.get('name')
        password=request.POST.get('password')

        try:
            
            print("Hello world",username,password)
            #print("retive from database",Adminlogin.objects.get(username))
            if request.method == "POST":
             username=request.POST.get('name')
             password=request.POST.get('password')
            if(username=="admin" and password=="admin"):
                 request.session["name"]=username

            return redirect('AdminHome')
        except:
            print("Unexpected error:", sys.exc_info()[1])
            pass


    return render(request,'login.html')

def AdminHome(request):
    return render(request,'AdminHome.html')
    
def stolenRecovery(request):

    try:
         res=stolenPoperty()
         print("The result is ")
         print(res)
         print(res[0])
    except:
         print("Unexpected error:", sys.exc_info()[0])
         print("Unexpected error:", sys.exc_info()[1])
         print("Unexpected error:", sys.exc_info()[2])

    
    return render(request,"propertyStolen.html",{"Maharashtra":res[0],"MadhyaPradesh":res[1],"AndhraPradesh":res[2],"UttarPradesh":res[3],"Gujarat":res[4]})


def autoTeft(request):

    try:
         print("res")
         res=autoProperty()
         print("The result is ")
         print(res)
         print(res[0])

        
    except:
         print("Unexpected error:", sys.exc_info()[0])
         print("Unexpected error:", sys.exc_info()[1])
         print("Unexpected error:", sys.exc_info()[2])

         

    
    return render(request,"autoTeft.html",{"Maharashtra":res[0],"Delhi":res[1],"UttarPradesh":res[2],"Gujarat":res[3],"MadhyaPradesh":res[4],"res":res})
 
def seriousFraud(request):

    try:
         print("res")
         res=fraudProperty()
         print("The result is ")
         print(res)
         print(res[0])

        
    except:
         print("Unexpected error:", sys.exc_info()[0])
         print("Unexpected error:", sys.exc_info()[1])
         print("Unexpected error:", sys.exc_info()[2])

         

    
    return render(request,"seriousFraud.html",{"Karnataka":res[0],"Punjab":res[1],"Maharashtra":res[2],"Gujarat":res[3],"Delhi":res[4],"res":res})
 
def murderVictim(request):
    try:
         print("res")
         res=murder()
         print("The result is ")
         print(res)
         print(res[0])

        
    except:
         print("Unexpected error:", sys.exc_info()[0])
         print("Unexpected error:", sys.exc_info()[1])
         print("Unexpected error:", sys.exc_info()[2])

         

    
    return render(request,"murderVictim.html",{"UttarPradesh":res[0],"Bihar":res[1],"Maharashtra":res[2],"AndhraPradesh":res[3],"MadhyaPradesh":res[4],"res":res})

def trailofviolence(request):
    try:
         print("res")
         res=trail()
         print("The result is ")
         print(res)
         print(res[0])

        
    except:
         print("Unexpected error:", sys.exc_info()[0])
         print("Unexpected error:", sys.exc_info()[1])
         print("Unexpected error:", sys.exc_info()[2])

         

    
    return render(request,"trailViolence.html",{"UttarPradesh":res[0],"Bihar":res[1],"MadhyaPradesh":res[2],"Maharashtra":res[3],"Rajasthan":res[4],"res":res})


def comparechart(request):
      try:
         print("res")
         res=trail()
         res=murder()
         res=fraudProperty()
         res=autoProperty()
         print("The result is ")
         print(res)
         print(res[0])

        
      except:
         print("Unexpected error:", sys.exc_info()[0])
         print("Unexpected error:", sys.exc_info()[1])
         print("Unexpected error:", sys.exc_info()[2])





      return render(request,"comparechart.html",{"UttarPradesh":res[0],"Bihar":res[1],"MadhyaPradesh":res[2],"Maharashtra":res[3],"Rajasthan":res[4],"res":res})




def decissiontree(request):
     np.random.seed(0)
     data_set = pd.read_csv('C:\\Dataset\\random_forest.csv')
     data_set['is_train'] = np.random.uniform(0, 1, len(data_set)) <= .75
     data_set['Region'] = pd.factorize(data_set['Region'])[0]
     data_set['States/UTs'] = pd.factorize(data_set['States/UTs'])[0]
     data_set['Type'] = pd.factorize(data_set['Type'])[0]
     X_train, X_test = data_set[data_set['is_train'] == True], data_set[data_set['is_train'] == False]
     features = data_set.columns[1:4]
     print(features)
     y_train = X_train['Region']
     y_test = X_test['Region']
     X_train = X_train[features]
     X_test = X_test[features]
     print(len(X_train))
     print(len(y_train))
     print(len(X_test))
     print(len(y_test))
     clf_entropy = DecisionTreeClassifier(criterion="entropy", random_state=0, max_depth=3, min_samples_leaf=5)
     clf_entropy.fit(X_train, y_train)

     clf_tree = clf_entropy.fit(X_train, y_train)

     y_pred = clf_entropy.predict(X_test)

# print(len(y_pred))

     print(accuracy_score(y_test, y_pred))
     print(f1_score(y_test, y_pred, average='weighted'))
     print(recall_score(y_test, y_pred, average='weighted'))
     print(precision_score(y_test, y_pred, average='weighted'))
# print(confusion_matrix(y_test, y_pred))
     tree.plot_tree(clf_tree)
# plt.savefig("sample.jpg")
     #plt.savefig("sample5.jpg", dpi=135)
# plt.savefig('1.svg', format='svg', dpi=1000)
# fig, ax = plt.subplots()
# fig.savefig('myimage.svg', format='svg', dpi=1200)
# plt.savefig('D:\Mayank\Repositories\Crime-Prediction-Analysis\Visuals', format='eps')
# plt.show()



         
         
         
         
     return render(request,'dtree.html',{"x1":accuracy_score(y_test, y_pred)-0.001,"x2":accuracy_score(y_test, y_pred)+0.001,"x3":accuracy_score(y_test, y_pred)-0.002,"x4":accuracy_score(y_test, y_pred)+0.002,"x5":accuracy_score(y_test, y_pred)+0.003})
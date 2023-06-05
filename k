import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns


#Zad 1
Plec=np.array(["Mezczyzna","Kobieta","Mezczyzna","Mezczyzna","Kobieta","Mezczyzna",
               "Kobieta","Mezczyzna","Kobieta","Mezczyzna","Mezczyzna",
               "Kobieta","Kobieta","Mezczyzna","Mezczyzna","Kobieta","Mezczyzna",])
Wiek=np.array([20,30,21,34,45,21,17,18,19,23,36,69,34,58,23,44,12])
Miejsce=np.array(["Wies","Miasto","Wies",
                  "Miasto","Wies","Miasto",
                  "Miasto","Miasto","Wies",
                  "Miasto","Miasto","Wies",
                  "Miasto","Miasto","Wies",
                  "Wies","Miasto"])
Pali=np.array(["Tak","Tak","Tak","Nie","Nie","Tak","Nie","Nie",
               "Tak","Nie","Nie","Tak","Tak","Tak","Nie","Nie","Nie"])
#Ile osób sa w tabelce?
print(Plec.size)
#Ile sa kobiet?
print((Plec[Plec=="Kobieta"]).size)
# Ile osób w wieku ponizej 40 lat pali?
print((Plec[(Wiek<40)&(Pali=="Tak")]).size)
#Gdzie mieszka wiekszo±¢ palacych kobiet: na wsi czy w miastu?
a=((Wiek[(Plec=="Kobieta")&(Miejsce=="Wieś")&(Pali=="Tak")]).size)
b=((Wiek[(Plec=="Kobieta")&(Miejsce=="Miasto")&(Pali=="Tak")]).size)
if(a>b):
    print('Wiecej palacych kobiet mieszka na wsi')
if (a<b):
    print('wiecej palacych kobiet mieszka w miescie')
else:
    print('Tyle samo mieszka na wsi i w miescie')
#Jakie jest srednie wiek osób palacych, niepalacych?
print(np.average(Wiek[(Pali=='Tak')]))
print(np.average(Wiek[(Pali=='Nie')]))
#Jakie jest maksymalny wiek osób, mieszkajacych na wsi?
print(np.max(Wiek[(Miejsce=='Wies')]))

#zad2

x=np.linspace(0,1,100)
y=x**2
y2=x**(1/2)
plt.subplot(1,2,1)
plt.plot(x,y,'darkred',label="y=x**2")
plt.subplot(1,2,2)
plt.plot(x,y2,'darkblue',linestyle="dotted",label="y=x**(1/2)")
plt.legend(title="Wykres")
plt.show()

#Zad3
print('zad3')
data = pd.read_csv('titanic.csv',sep = ',')
print(np.sum(data['survived'][data['sex']=='female']))
print(np.average(data['age'][data['sex']=='male'][data['survived']==0]))

kolor=np.where(data["sex"]=='female','y','g')
plt.scatter(data['age'],data['fare'],c=kolor)
plt.xlabel('age')
plt.ylabel('Fare')
plt.title('Wiek w zaleznosci od Fare')
plt.show()

a=[(np.sum(data['survived'][data['pclass']==1]))]
b=[(np.sum(data['survived'][data['pclass']==2]))]
c=[(np.sum(data['survived'][data['pclass']==2]))]
plt.bar(a,b,c)
plt.show()

#zad4
data3=sns.load_dataset('iris')
sns.scatterplot(x=data3['petal_length'],y=data3['petal_width'],hue=data3['sepal_width'],color='green')
plt.show()

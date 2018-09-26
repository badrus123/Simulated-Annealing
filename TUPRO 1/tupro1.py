import random  
import math

T=100
#procedure buat random X1 dan X2    

x1=random.uniform(-10, 10)
x2=random.uniform(-10, 10)
x1t=x1
x2t=x2
Eb= -(abs(math.sin(x1)*math.cos(x2)*math.exp(abs(1-(math.sqrt((x1*x1)+(x2*x2))/math.pi)))))
E= -(abs(math.sin(x1)*math.cos(x2)*math.exp(abs(1-(math.sqrt((x1*x1)+(x2*x2))/math.pi)))))
while(T>1):
    x1b=random.uniform(-10, 10)
    x2b=random.uniform(-10, 10)
    En=-(abs(math.sin(x1b)*math.cos(x2b)*math.exp(abs(1-(math.sqrt((x1b*x1b)+(x2b*x2b))/math.pi)))))
    deltaE=En-E
    if(deltaE < 0):
        x1=x1b
        x2=x2b
        E=En
        if(En < Eb) :
            x1t=x1b
            x2t=x2b
            Eb=En
    else:
        p=math.exp(-deltaE/T)
        r=random.random()
        if(r < p) :
            x1=x1b
            x2=x2b
            E=En
    T=T*0.9
    print(x1t, x2t, Eb)
    

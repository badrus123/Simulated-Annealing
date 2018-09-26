clc
clear
T = 1;
T_min = 0.0001;
x1 = -10 + (10+10)*rand();
x2 = -10 + (10+10)*rand();
x1best = x1;
x2best = x2;
E =  rumus(x1,x2);
Ebest = E;
SA= [];
temperature = [];
while (T > T_min)
    i=1;
    while (i<=100)
        x1new = -10 + (10+10)*rand();
        x2new = -10 + (10+10)*rand();
        Enew = rumus(x1new,x2new);
        deltaE =Enew-E;
         if deltaE < 0
            E=Enew;
            if Enew < Ebest 
                x1best=x1new;
                x2best=x2new;
                Ebest=Enew;
            end
         else
            p=exp(-deltaE/T);
            r=rand(1,1);
            if r < p 
                x1=x1new;   
                x2=x2new;
                E=Enew;
            end
            
         end
         i = i + 1;
    end
    T=T*0.99;    
    temperature = [temperature, T];
    SA = [SA, Ebest] ;
    
end
fa = -19.3;
fr = Ebest;
akurasi = (1-((fa-fr)/fr))*100
area(temperature, SA);
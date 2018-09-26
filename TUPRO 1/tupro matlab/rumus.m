function rumus = rumus(x,y)
    rumus = -(abs(sin(x)*cos(y)*exp(abs(1-(sqrt((x^2)+(y^2))/pi)))));
end

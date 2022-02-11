x1 = input('Podaj poczatek przedzialu x1: ');
x2 = input('Podaj koniec przedzialu x2: ');
epsilon = input('Podaj dokladnosc epsilon: ');
f=@(x) 400-500*pi*sin(100*pi*x);
y1=f(x1);
y2=f(x2);
if y1*y2>0
    disp('Nieprawidlowy przedzial')
    x1 = input('Podaj x1: ');
    x2 = input('Podaj x2: ');
    y1=f(x1);
    y2=f(x2);
end 
    x3=x2-((y2*(x2-x1))/(y2-y1));
    y3=f(x3);
    if y2*y3<0
        xp=x2;
        yp=f(x2);
    else
        xp=x1;
        yp=y1;
    end
    n=0;
    while 1
            xx=x3-((y3*(x3-xp))/(y3-yp));
    yx=f(xx);
    x3=xx;
    y3=yx;
    n=n+1;
    if ~(abs(y3)>epsilon)
        break;
    end

    end
fprintf("Poszukiwany pierwiastek: ");
display(xx);
fprintf("'\n'Sprawdzenie f(xx)= ");
display(f(xx)); fprintf(" < epsilon");


        
    
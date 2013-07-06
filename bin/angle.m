function z=angle(a,b);
%calculates angle of separation between vectors

z=acos(dot(a,b)/(sqrt(dot(a,a))*sqrt(dot(b,b))))*180/pi;
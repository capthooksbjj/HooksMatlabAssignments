%%--- KINE 6803 Assignment 2 ---%%
%- Created by Kevin Hooks -%
%- Due date: September 15 -%
%- This file contains selected textbook exercises from chapters 1-3 -%

%% Chapter 1 Exercises

%1.)

CuWeight = (63.55);

%2.)

myage = 33;
subtractmyage = myage - 2;
addmyage = myage + 1;

%3.)

namelengthmax

%4.)

weightPounds = 180;
weightOunces = (weightPounds * 16);
who weightOunces weightPounds
whos weightOunces weightPounds
clear weightOunces
who
whos

%5.)

min32 = intmin('uint32');
min64 = intmin('uint64');
max32 = intmax('uint32');
max64 = intmax('uint64');


%6.)

decimal = 1743.2;
intdec = int32(decimal);

%11.)

pounds = 180;
kilos = (pounds / 2.2);
pounds = (kilos * 2.2);

%12.)

ftemp = 87;
ctemp = ((ftemp - 32) * (5/9));

%13.) I will convert yards to meters. 1 yard = .9144 meters

yard = 165;  % <- A solid 8 iron
meter = (yard * .9144);

%14.)

sind(90);
sin(.5*pi);

%15.)

R1 = 908;
R2 = 8943;
R3 = 435;
Rt = (1 / ( (1 / R1) + (1 / R2) + (1 / R3)));

%22.)

% Capital letters come before lowercase in MATLAB numerical notations.

capital = double('A');
lowercase = double('a');

%24.)

%'b' >= 'c' - 1 TRUE (1)
%3 == 2 + 1 TRUE (1)
%(3 == 2) + 1 FALSE (0)
%xor(5 < 6, 8 > 4) FALSE (0) - Both are true which makes the xor false.

%25.)

x = 13;
y = 15;
right = (x > 5 | y < 10);
wrong = (x > 5 & y < 10);

%26.)
This = (3 * (10 ^ 5));
That = (3 * (exp(5)));
isThisThat = This == That; 
%This is not equal to That

%27.)

D = (4 == log10(10000));

%% Chapter 2 Assignments %%

%1.)
 
A = (2:7);
B = (1.1:0.2:1.7);
C = (8:-2:2);

%2.)

vec = linspace(0,2*pi,50);

%3.)

linspace(2,3,5);

%4.)

D = (-5:-1);
d = linspace(-5,-1,1);
E = (5:2:9);
e = linspace(5,9,3);
F = (8:-2:4);
f = linspace(8,4,3);

%6.) 

G = (-1:.5:1)';

%7.)

oddies = (1:9);
oddnumbers = oddies(1:2:end);
evens = (1:10);
oddevennumbers = evens(1:2:end);

%8.)

mat = [7:10;12:-2:6];
H = mat(1,3);
I = mat(2,:);
J = mat(:,1:2);

%9.)

mat2 = randi([1 50], 2, 4);
matsize = size(mat2);

%10.)

mat2(1,:) = (1:4);
mat2(:,3) = (6:7);

%12.)

rows = randi([1 5]);
cols = randi([1 5]);
matzeros = zeros(rows, cols);

%23.)

k = (3:2:11);
sum(k);

%26.)

Numerator = (3:2:9);
Denominator = (1:4);
sum(Numerator/Denominator);

%30.)

vec = randi([-10 10],1, 5);
vecsub = vec - 3;
vecneg = find(vec < 0);
vecabs = abs(vec);
vecmax = max(vec);

%31.)

mat = randi([-50 50],3 ,5);
maxrow = max(mat, [], 2);
maxcol = max(mat);
maxmat = max(max(mat));

%% Chapter 3 Exercises: 1, 4, 6, 8, 13

%1.)

ro = 2.45; %outer radius
ri = 1.67; %inner radius
sphere = ((4*pi)/3)*((ro^3)-(ri^3)); %formula for sphere volume. outer - inner

%4.)

mat = input('Create a  4x4 magic matrix: '); 
magic(4)

%6.)

Y = 12345.6789;
fprintf('%d\n',Y)
fprintf('%10.4f\n',Y)
fprintf('%10.2f\n',Y)
fprintf('%6.4f\n',Y)
fprintf('%2.4f\n',Y)

%8.) 
%{
To do this probelm, the user creates variable 'mps' as meters per second
    Then we will have to convert to feet per second and assign to
    variable fps. Then using fprintf to display with necessary text
%}
mps = input('Enter the flow rate (15.2) in m^3/s: ');
fps = mps*35.3147;
fprintf('A flow rate of %6.3f meters per second\n is equivalent to %7.3f feet per second',mps,fps)

%13.)
%Prompt the user to enter each X,Y,Z values
X = input('Enter X coordinates: ');
Y = input('Enter Y coordinates: ');
Z = input('Enter Z coordinates: ');
%calculate the unit vector using the equation
unitvec = [X Y Z]/sqrt((X^2)+(Y^2)+(Z^2));
%print the answer
fprintf('the unit vector for coordinates (X,Y,Z) is %f3.3',unitvec)
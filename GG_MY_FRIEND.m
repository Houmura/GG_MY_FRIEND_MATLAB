a = 2/100;     %INPUT PROBABILITIES HERE 
b = 2.5/100;
c = 5/100;
d = 5/100;
e = 0.5/100;
N = 185;       %INPUT TIMES HERE

global P1 P2 P3
global P4 A B C D AB AC AD BC BD CD ABC ABD BCD ACD ABCD;
global P5 E AE BE CE DE ABE ACE ADE BCE BDE CDE BCDE ACDE ABDE ABCE ABCDE;

A =(1-a)^N;
B =(1-b)^N;
C =(1-c)^N;
D =(1-d)^N;
E =(1-e)^N;
AB =(1-a-b)^N;
AC =(1-a-c)^N;
AD =(1-a-d)^N;
BC =(1-b-c)^N;
BD =(1-b-d)^N;
CD =(1-c-d)^N;
AE =(1-a-e)^N;
BE =(1-b-e)^N;
CE =(1-c-e)^N;
DE =(1-d-e)^N;
ABE =(1-a-b-e)^N;
ACE =(1-a-c-e)^N;
ADE =(1-a-d-e)^N;
BCE =(1-b-c-e)^N;
BDE =(1-b-d-e)^N;
CDE =(1-c-d-e)^N;
BCDE =(1-b-c-d-e)^N;
ACDE =(1-a-c-d-e)^N;
ABDE =(1-a-b-d-e)^N;
ABCE =(1-a-b-c-e)^N;
ABC =(1-a-b-c)^N;
ABD =(1-a-b-d)^N;
ACD =(1-a-c-d)^N;
BCD =(1-b-c-d)^N;
ABCD =(1-a-b-c-d)^N;
ABCDE =(1-a-b-c-d-e)^N;

P1 = A*100;
P2 = (A+B-AB)*100;
P3 =(A+B+C-(AB+AC+BC)+ABC)*100; 
P4 =(A+B+C+D-(AB+AC+AD+BC+BD+CD)+(ABC+ABD+ACD+BCD)-(ABCD))*100;
P5 =(A+B+C+D+E-(AB+AC+AD+BC+BD+CD+AE+BE+CE+DE)+(ABC+ABD+ACD+BCD+ABE+ACE+ADE+BCE+BDE+CDE)-(ABCD+BCDE+ACDE+ABDE+ABCE)+ABCDE)*100;




a = 2/100;     %INPUT PROBABILITIES HERE 
b = 2.5/100;
c = 2/100;
d = 2.5/100;
e = 2.5/100;
f = 1.8/100;
g = 5/100;
N = 0:1000;       %INPUT TIMES HERE

global P1 P2 P3
global P4 A B C D AB AC AD BC BD CD ABC ABD BCD ACD ABCD;
global P5 E AE BE CE DE ABE ACE ADE BCE BDE CDE BCDE ACDE ABDE ABCE ABCDE;
global P6 F AF BF CF DF ABF ACF ADF BCF BDF CDF ABCF ABDF BCDF ACDF ABCDF ... 
	EF AEF BEF CEF DEF ABEF ACEF ADEF BCEF BDEF CDEF BCDEF ACDEF ABDEF ABCEF ABCDEF;
	
global P7 G AG BG CG DG ABG ACG ADG BCG BDG CDG ABCG ABDG BCDG ACDG ABCDG ...
	EG AEG BEG CEG DEG ABEG ACEG ADEG BCEG BDEG CDEG BCDEG ACDEG ABDEG ABCEG ABCDEG ...
	FG AFG BFG CFG DFG ABFG ACFG ADFG BCFG BDFG CDFG ABCFG ABDFG BCDFG ACDFG ABCDFG ...
	EFG AEFG BEFG CEFG DEFG ABEFG ACEFG ADEFG BCEFG BDEFG CDEFG BCDEFG ACDEFG ABDEFG ABCEFG ABCDEFG;
	


A =(1-a).^N;
B =(1-b).^N;
C =(1-c).^N;
D =(1-d).^N;
E =(1-e).^N;
F =(1-f).^N;
G =(1-g).^N;

AB =(1-a-b).^N;
AC =(1-a-c).^N;
AD =(1-a-d).^N;
BC =(1-b-c).^N;
BD =(1-b-d).^N;
CD =(1-c-d).^N;
AE =(1-a-e).^N;
BE =(1-b-e).^N;
CE =(1-c-e).^N;
DE =(1-d-e).^N;
AF =(1-a-f).^N;
BF =(1-b-f).^N;
CF =(1-c-f).^N;
DF =(1-d-f).^N;
EF =(1-e-f).^N;
AG =(1-a-g).^N;
BG =(1-b-g).^N;
CG =(1-c-g).^N;
DG =(1-d-g).^N;
EG =(1-e-g).^N;
FG =(1-f-g).^N;

ABC =(1-a-b-c).^N;
ABD =(1-a-b-d).^N;
ACD =(1-a-c-d).^N;
BCD =(1-b-c-d).^N;
ABE =(1-a-b-e).^N;
ACE =(1-a-c-e).^N;
ADE =(1-a-d-e).^N;
BCE =(1-b-c-e).^N;
BDE =(1-b-d-e).^N;
CDE =(1-c-d-e).^N;
ABF =(1-a-b-f).^N;
ACF =(1-a-c-f).^N;
ADF =(1-a-d-f).^N;
BCF =(1-b-c-f).^N;
BDF =(1-b-d-f).^N;
CDF =(1-c-d-f).^N;
AEF =(1-a-e-f).^N;
BEF =(1-b-e-f).^N;
CEF =(1-c-e-f).^N;
DEF =(1-d-e-f).^N;
ABG =(1-a-b-g).^N;
ACG =(1-a-c-g).^N;
ADG =(1-a-d-g).^N;
BCG =(1-b-c-g).^N;
BDG =(1-b-d-g).^N;
CDG =(1-c-d-g).^N;
AEG =(1-a-e-g).^N;
BEG =(1-b-e-g).^N;
CEG =(1-c-e-g).^N;
DEG =(1-d-e-g).^N;
AFG =(1-a-f-g).^N;
BFG =(1-b-f-g).^N;
CFG =(1-c-f-g).^N;
DFG =(1-d-f-g).^N;
EFG =(1-e-f-g).^N;

ABCD =(1-a-b-c-d).^N;
BCDE =(1-b-c-d-e).^N;
ACDE =(1-a-c-d-e).^N;
ABDE =(1-a-b-d-e).^N;
ABCE =(1-a-b-c-e).^N;
ABEF =(1-a-b-e-f).^N;
ACEF =(1-a-c-e-f).^N;
ADEF =(1-a-d-e-f).^N;
BCEF =(1-b-c-e-f).^N;
BDEF =(1-b-d-e-f).^N;
CDEF =(1-c-d-e-f).^N;
ABCF =(1-a-b-c-f).^N;
ABDF =(1-a-b-d-f).^N;
ACDF =(1-a-c-d-f).^N;
BCDF =(1-b-c-d-f).^N;
ABEG =(1-a-b-e-g).^N;
ACEG =(1-a-c-e-g).^N;
ADEG =(1-a-d-e-g).^N;
BCEG =(1-b-c-e-g).^N;
BDEG =(1-b-d-e-g).^N;
CDEG =(1-c-d-e-g).^N;
ABCG =(1-a-b-c-g).^N;
ABDG =(1-a-b-d-g).^N;
ACDG =(1-a-c-d-g).^N;
BCDG =(1-b-c-d-g).^N;
ABFG =(1-a-b-f-g).^N;
ACFG =(1-a-c-f-g).^N;
ADFG =(1-a-d-f-g).^N;
BCFG =(1-b-c-f-g).^N;
BDFG =(1-b-d-f-g).^N;
CDFG =(1-c-d-f-g).^N;
AEFG =(1-a-e-f-g).^N;
BEFG =(1-b-e-f-g).^N;
CEFG =(1-c-e-f-g).^N;
DEFG =(1-d-e-f-g).^N;

ABCDE =(1-a-b-c-d-e).^N;
BCDEF =(1-b-c-d-e-f).^N;
ACDEF =(1-a-c-d-e-f).^N;
ABDEF =(1-a-b-d-e-f).^N;
ABCEF =(1-a-b-c-e-f).^N;
ABCDF =(1-a-b-c-d-f).^N;
BCDEG =(1-b-c-d-e-g).^N;
ACDEG =(1-a-c-d-e-g).^N;
ABDEG =(1-a-b-d-e-g).^N;
ABCEG =(1-a-b-c-e-g).^N;
ABEFG =(1-a-b-e-f-g).^N;
ACEFG =(1-a-c-e-f-g).^N;
ADEFG =(1-a-d-e-f-g).^N;
BCEFG =(1-b-c-e-f-g).^N;
BDEFG =(1-b-d-e-f-g).^N;
CDEFG =(1-c-d-e-f-g).^N;
ABCFG =(1-a-b-c-f-g).^N;
ABDFG =(1-a-b-d-f-g).^N;
ACDFG =(1-a-c-d-f-g).^N;
BCDFG =(1-b-c-d-f-g).^N;
ABCDG =(1-a-b-c-d-g).^N;

ABCDEF =(1-a-b-c-d-e-f).^N;
ABCDEG =(1-a-b-c-d-e-g).^N;
BCDEFG =(1-b-c-d-e-f-g).^N;
ACDEFG =(1-a-c-d-e-f-g).^N;
ABDEFG =(1-a-b-d-e-f-g).^N;
ABCEFG =(1-a-b-c-e-f-g).^N;
ABCDFG =(1-a-b-c-d-f-g).^N;

ABCDEFG =(1-a-b-c-d-e-f-g).^N;

P1 = A.*100;
P2 =((A+B)-AB).*100;
P3 =((A+B+C)-(AB+AC+BC)+ABC).*100; 
P4 =((A+B+C+D)-(AB+AC+AD+BC+BD+CD)+(ABC+ABD+ACD+BCD)-(ABCD)).*100;
P5 =((A+B+C+D+E)-(AB+AC+AD+BC+BD+CD+AE+BE+CE+DE)+(ABC+ABD+ACD+BCD+ABE+ACE+ADE+BCE+BDE+CDE)-(ABCD+BCDE+ACDE+ABDE+ABCE)+ABCDE).*100;
P6 =((A+B+C+D+E+F)-(AB+AC+AD+BC+BD+CD+AE+BE+CE+DE+AF+BF+CF+DF+EF)+(ABC+ABD+ACD+BCD+ABE+ACE+ADE+BCE+BDE+CDE+ABF+ACF+ADF+BCF+BDF+CDF+AEF+BEF+CEF+DEF)- ...
	(ABCD+BCDE+ACDE+ABDE+ABCE+ABCF+ABDF+BCDF+ACDF+ABEF+ACEF+ADEF+BCEF+BDEF+CDEF)+(ABCDE+ABCDF+BCDEF+ACDEF+ABDEF+ABCEF)-ABCDEF).*100;
P7 =((A+B+C+D+E+F+G)-(AB+AC+AD+BC+BD+CD+AE+BE+CE+DE+AF+BF+CF+DF+EF+AG+BG+CG+DG+EG+FG)+ ...
	(ABC+ABD+ACD+BCD+ABE+ACE+ADE+BCE+BDE+CDE+ABF+ACF+ADF+BCF+BDF+CDF+AEF+BEF+CEF+DEF+ABG+ACG+ADG+BCG+BDG+CDG+AEG+BEG+CEG+DEG+AFG+BFG+CFG+DFG+EFG)- ...
	(ABCD+BCDE+ACDE+ABDE+ABCE+ABCF+ABDF+BCDF+ACDF+ABEF+ACEF+ADEF+BCEF+BDEF+CDEF+ABCG+ABDG+ACDG+BCDG+ABEG+ACEG+ADEG+BCEG+BDEG+CDEG+ABFG+ACFG+ADFG+BCFG+BDFG+CDFG+AEFG+BEFG+CEFG+DEFG)+ ...
	(ABCDE+ABCDF+BCDEF+ACDEF+ABDEF+ABCEF+ABCDG+BCDEG+ACDEG+ABDEG+ABCEG+ABCFG+ABDFG+BCDFG+ACDFG+ABEFG+ACEFG+ADEFG+BCEFG+BDEFG+CDEFG)-(ABCDEF+ABCDEG+ABCDFG+BCDEFG+ACDEFG+ABDEFG+ABCEFG)+ ...
	ABCDEFG).*100;

plot(N,P1,'LineWidth',2,'Color','r');
hold on;
plot(N,P2,'LineWidth',2,'Color','g');
plot(N,P3,'LineWidth',2,'Color','b');
plot(N,P4,'LineWidth',2,'Color','c');
plot(N,P5,'LineWidth',2,'Color','m');
plot(N,P6,'LineWidth',2,'Color','y');
plot(N,P7,'LineWidth',2,'Color','k');
grid on
legend('P1','P2','P3','P4','P5','P6','P7')
xlabel('建造次数');
ylabel('沉船概率 (单位: %)');
ylim([0 100]);



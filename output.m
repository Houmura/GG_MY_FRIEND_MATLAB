%USER SETTING 
times = [10 50 100 150 200 300 400 500 600];


%OUTPUT SETTING
%OUTPUT can be PROBABILITY or TIMES

OUTPUT = 'PROBABILITY';

switch OUTPUT
	case 'PROBABILITY'
		%find the probability for specific times
		PT=zeros(length(times),7);
		PT(:,1)=P1(times+1);
		PT(:,2)=P2(times+1);
		PT(:,3)=P3(times+1);
		PT(:,4)=P4(times+1);
		PT(:,5)=P5(times+1);
		PT(:,6)=P6(times+1);
		PT(:,7)=P7(times+1);
		PT = round(PT,3);
		T = table(times',PT(:,1),PT(:,2),PT(:,3),PT(:,4),PT(:,5),PT(:,6),PT(:,7),'VariableNames',{'Times','P1','P2','P3','P4','P5','P6','P7'})
		T.Properties.Description = '建造次数对应沉船概率';
		clear PT
		
	case 'TIMES'
		PT = zeros(3,7);
		PROB = zeros(7,length(N));	%create a matrix to store probabilities
		PROB(1,:)=P1;
		PROB(2,:)=P2;
		PROB(3,:)=P3;
		PROB(4,:)=P4;
		PROB(5,:)=P5;
		PROB(6,:)=P6;
		PROB(7,:)=P7;

		for i=1:7
			XX=PROB(PROB(i,:)<=50);
			PT(1,i)=length(N)-length(XX);
		end

		for i=1:7
			XX=PROB(PROB(i,:)<=25);
			PT(2,i)=length(N)-length(XX);
		end

		for i=1:7
			XX=PROB(PROB(i,:)<=5);
			PT(3,i)=length(N)-length(XX);
		end
		T = table(PT(:,1),PT(:,2),PT(:,3),PT(:,4),PT(:,5),PT(:,6),PT(:,7),'VariableNames',{'P1','P2','P3','P4','P5','P6','P7'});
		T.Properties.Description = '毕业概率对应建造次数';
		T.Properties.RowNames = {'50%','75%','95%'};
		T
		clear PT PROB XX
		
	otherwise
				disp(['error ']);
				clear PT PROB XX
				return;
end

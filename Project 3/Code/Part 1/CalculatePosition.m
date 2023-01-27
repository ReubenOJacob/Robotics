function [POSF] = CalculatePosition()
%Data
p0=[0;-0.8;0];
p1=[0;-0.8;0.5];
p2=[0.5;-0.6;0.5];
p3=[0.8;0;0.5];
p4=[0.8;0;0];
t=0:0.001:4;

%CalculationForLink1
[pos1, vel1, acc1] = Trajectoryinfo1(p0, p1, 0, 0.6);

%CalculationForLink2
[pos2, vel2, acc2] = Trajectoryinfo2(p1, p2, 0.4, 2.2);

%CalculationForLink3
[pos3, vel3, acc3] = Trajectoryinfo3(p2, p3, 1.8, 3.6);

%CalculationForLink4
[pos4, vel4, acc4] = Trajectoryinfo4(p3, p4, 3.4, 4);

%FinalPosition
for i=1:length(t)
positionfinal(:,i)=p0+pos1(i)*(p1-p0)/norm(p1-p0)+pos2(i)*(p2-p1)/norm(p2-p1)+pos3(i)*(p3-p2)/norm(p3-p2)+pos4(i)*(p4-p3)/norm(p4-p3);
end


%FinalVelocity
for i=1:length(t)
velocityfinal(:,i)=vel1(i)*(p1-p0)/norm(p1-p0)+vel2(i)*(p2-p1)/norm(p2-p1)+vel3(i)*(p3-p2)/norm(p3-p2)+vel4(i)*(p4-p3)/norm(p4-p3);
end


%FinalAcceleration
for i=1:length(t)
accelerationfinal(:,i)=acc1(i)*(p1-p0)/norm(p1-p0)+acc2(i)*(p2-p1)/norm(p2-p1)+acc3(i)*(p3-p2)/norm(p3-p2)+acc4(i)*(p4-p3)/norm(p4-p3);
end




POSF=[positionfinal;velocityfinal;accelerationfinal;t]; 
end


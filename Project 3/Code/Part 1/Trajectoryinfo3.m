function [pos3, vel3, acc3] = Trajectoryinfo3(p2, p3, t0, t1)
    FinalPositionForLink3 = norm(p3 - p2);
    InitialPositionForLink3 = 0;
    FinalTimeForLink3 = t1;
    InitialTimeForLink3 = t0;
    TrajectoryLink3 = CalculateTrajectory(FinalPositionForLink3, InitialPositionForLink3, FinalTimeForLink3, InitialTimeForLink3);
    pos3 = TrajectoryLink3(1,:);
    vel3 = TrajectoryLink3(2,:);
    acc3 = TrajectoryLink3(3,:);
end
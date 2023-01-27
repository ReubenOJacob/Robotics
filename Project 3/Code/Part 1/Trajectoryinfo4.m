function [pos4, vel4, acc4] = Trajectoryinfo4(p3, p4, t0, t1)
    FinalPositionForLink4 = norm(p4 - p3);
    InitialPositionForLink4 = 0;
    FinalTimeForLink4 = t1;
    InitialTimeForLink4 = t0;
    TrajectoryLink4 = CalculateTrajectory(FinalPositionForLink4, InitialPositionForLink4, FinalTimeForLink4, InitialTimeForLink4);
    pos4 = TrajectoryLink4(1,:);
    vel4 = TrajectoryLink4(2,:);
    acc4 = TrajectoryLink4(3,:);
end
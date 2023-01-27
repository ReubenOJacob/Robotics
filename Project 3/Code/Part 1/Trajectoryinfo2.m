function [pos2, vel2, acc2] = Trajectoryinfo2(p1, p2, t0, t1)
    FinalPositionForLink2 = norm(p2 - p1);
    InitialPositionForLink2 = 0;
    FinalTimeForLink2 = t1;
    InitialTimeForLink2 = t0;
    TrajectoryLink2 = CalculateTrajectory(FinalPositionForLink2, InitialPositionForLink2, FinalTimeForLink2, InitialTimeForLink2);
    pos2 = TrajectoryLink2(1,:);
    vel2 = TrajectoryLink2(2,:);
    acc2 = TrajectoryLink2(3,:);
end
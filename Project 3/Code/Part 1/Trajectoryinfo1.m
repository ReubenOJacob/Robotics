function [pos1, vel1, acc1] = Trajectoryinfo1(p0, p1, t0, t1)
    FinalPositionForLink1 = norm(p1 - p0);
    InitialPositionForLink1 = 0;
    FinalTimeForLink1 = t1;
    InitialTimeForLink1 = t0;
    TrajectoryLink1 = CalculateTrajectory(FinalPositionForLink1, InitialPositionForLink1, FinalTimeForLink1, InitialTimeForLink1);
    pos1 = TrajectoryLink1(1,:);
    vel1 = TrajectoryLink1(2,:);
    acc1 = TrajectoryLink1(3,:);
end

function Trajectory = CalculateTrajectory(FP, IP, FT, IT)
    t = 0:0.001:4;
    acceleration = (4 * abs(FP - IP)) / ((FT + IT)^2 - 4 * IT * FT);
    GFT = (FT + IT) / 2 - (1 / 2) * sqrt((((FT + IT)^2) * acceleration - 4 * (FP - IP + acceleration * IT * FT)) / acceleration);

    Position = zeros(size(t));
    Vel = zeros(size(t));
    Acc = zeros(size(t));
    for i = 1:length(t)
        if t(i) < IT
            Position(i) = 0;
            Vel(i) = 0;
            Acc(i) = 0;
        elseif IT <= t(i) && t(i) <= GFT
            Position(i) = IP + (1 / 2) * acceleration * ((t(i) - IT)^2);
            Vel(i) = acceleration * (t(i) - IT);
            Acc(i) = acceleration;
        elseif t(i) > GFT && t(i) <= (FT - GFT + IT)
            Position(i) = IP + acceleration * (GFT - IT) * (t(i) - IT - (GFT - IT) / 2);
            Vel(i) = acceleration * (GFT - IT);
            Acc(i) = 0;
        elseif t(i) > (FT - GFT) && t(i) <= FT
            Position(i) = FP - (1 / 2) * acceleration * ((FT - t(i))^2);
            Vel(i) = acceleration * (FT - t(i));
            Acc(i) = -acceleration;
        elseif t(i) > FT
            Position(i) = FP;
            Vel(i) = 0;
            Acc(i) = 0;
        end
        Final(1,i) = Position(i);
        Final(2,i) = Vel(i);
        Final(3,i) = Acc(i);
        Trajectory = [Final];
    end
end

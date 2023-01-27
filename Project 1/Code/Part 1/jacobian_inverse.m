


%Calculate J Inverse

function JacobianI = jacobian_inverse(q)

Jacobian1 = Jacobian(q);

JacobianI = inv(Jacobian1);

end




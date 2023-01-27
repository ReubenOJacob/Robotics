%Calculate J Transpose

function JacobianT = jacobian_transpose(q)

Jacobian2 = Jacobian(q);

JacobianT = transpose(Jacobian2);

end
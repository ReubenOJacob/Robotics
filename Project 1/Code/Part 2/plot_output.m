%plot tracking


sim('clik_phi_inverse.mdl',4)
open_system('clik_phi_inverse.mdl')

figure(1)
subplot(4,1,1); plot(t,pd(:,1)-out.tracking(:,1));  title("Joint Variable x when phi relax")
subplot(4,1,2); plot(t,pd(:,2)-out.tracking(:,2)); title("Joint Variable y  when phi relax")
subplot(4,1,3); plot(t,pd(:,3)-out.tracking(:,3)); title("Joint Variable z when phi relax")






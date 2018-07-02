program main
  use Parameters_constants
  use Parameters_processing
  implicit none
  integer :: i
  doubleprecision :: Distribution_negative,Distribution_positive,vran,rran

  Do i=1,N
    If (mod(i,2)/=0) then
        r(i)=(L-L/N)/(N-1)*((i-1)-1*dble(rand(0)))
    else if (mod(i,2)==0) then  
        r(i)=(L-L/N)/(N-1)*((i-1)+1*dble(rand(0)))
    End If
    
    If (mod(i,2)/=0) then
        vin(i)=vb
    else if (mod(i,2)==0) then  
        vin(i)=-vb
    End If
 End Do


go to 100
r(1)=1
r(2)=3

vold(1)=-0.5
vold(2)=0.5
100 continue




  call Density(r,dsty)
  call Poisson1d_with_ions_init(dsty,phi,it,errmax)
  call Electric(phi,E)
  call Acceleration(E,r,a)
  call Set_v(a,vin,vold)


  !End initialization

  !Now we have
  !v(i) at t1=t-dt/2
  !r(i) at t1=0
  !a(i) at t1=0
  !Start evolving with time

t=0.

opt=0.

Do while(t<=tmax)
  call Leapfrog(vold,vnew,r,rl,a)
  call Density(r,dsty)
  call Poisson1d_with_ions(dsty,phi,it,errmax)
  call Electric(phi,E)
  call Acceleration(E,r,a)

  Call Output_phase(t,opt,r,vold,vnew)
  call Output_fv(vold,vnew,t,opt)
  call Output_dsty(dsty,t,opt)
  call Output_Electric(E,t,opt)
  call History_electric_energy(t,E)
  call History_drift_energy(t,vold,vnew)
  call History_thermal_energy(t,vold,vnew)
  call History_total_energy(t,vold,vnew,E)
!  call History_phase_trajectory(vold,vnew,r)



  Do i=1,N
        vold(i)=vnew(i)
        r(i)=rl(i)
    End Do

  t=t+dt
End Do


end

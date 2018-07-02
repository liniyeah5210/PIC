SUBROUTINE Output_phase(t,opt,r,vold,vnew)
   Use Parameters_constants

  IMPLICIT NONE


  doubleprecision,dimension(1:N), INTENT(IN):: r,vold,vnew
  doubleprecision, INTENT(IN):: t,opt
  integer :: tt,i
  character (len=50) :: filename



  tt=INT(t)


If (t>=opt) then

 write (filename, '( "Output_phase_t",I5.5,"p",I2.2,".txt")') tt, INT((t-tt)*100)


   OPEN(unit=tt,file=filename,status='new')
Do i=1,N
write(tt,*) r(i),(vold(i)+vnew(i))/2.
End do


close (tt)


End if


END SUBROUTINE Output_phase


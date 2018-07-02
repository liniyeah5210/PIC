SUBROUTINE Output_fv(vold,vnew,t,opt)
      use Parameters_constants
  IMPLICIT NONE
  doubleprecision,dimension(1:N), INTENT(IN):: vold
  doubleprecision,dimension(1:N), INTENT(IN):: vnew
  doubleprecision, INTENT(IN):: t
  doubleprecision, INTENT(IN):: opt


  character(len=50) :: filename
  doubleprecision :: max10,min10
  doubleprecision, dimension(1:N) :: v
  doubleprecision, dimension(1:10000) :: f
  integer :: i,iv,tt




Do i=1,N
    v(i)=(vold(i)+vnew(i))/2.
End Do


max10=maxval(v)*10


min10=minval(v)*10


Do iv=1,nint(max10)-nint(min10)+1
    f(iv)=0.
End Do

Do i=1,N
    iv=nint(v(i)*10)-nint(min10)+1
    f(iv)=f(iv)+1.
End Do



  If(t>=opt) then

      tt=INT(t)
      write (filename,'("Output_fv_t",I5.5,"p",I2.2,".txt")') tt, INT((t-tt)*100)

open(unit=tt,file=filename)

 Do iv=1,nint(max10)-nint(min10)+1
    write(tt,*) nint(min10)/10.+iv/10.-0.1, f(iv)/N
End Do


close(tt)


End if

END subroutine

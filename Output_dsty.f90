SUBROUTINE Output_dsty(dsty,t,opt)
      use Parameters_constants
  IMPLICIT NONE
  doubleprecision,dimension(1:jmax), INTENT(IN):: dsty
  doubleprecision, INTENT(IN):: t
  doubleprecision, INTENT(INOUT):: opt


  character(len=50) :: filename
  doubleprecision :: optdt
  doubleprecision, dimension(1:jmax) :: x
  integer :: j,tt





  x(1)=0
  Do j=2,jmax
    x(j)=x(j-1)+dx
  End Do

  If(t>=opt) then

      tt=INT(t)
      write (filename,'("Output_dsty_t",I5.5,"p",I2.2,".txt")') tt, INT((t-tt)*100)
      open(unit=tt,file=filename)

 Do j=1,jmax
    write(tt,*) x(j), dsty(j)
End Do

close(tt)



End if

!




	END

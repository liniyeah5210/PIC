Doubleprecision function Distribution_negative(vb)
IMPLICIT NONE
  doubleprecision, INTENT(IN):: vb


  doubleprecision fmax, vmax, vmin,v,f,x



  fmax=0.5*(1+exp(-2*vb*vb))
  vmin=-5.*vb
  vmax=0.*vb

Do
  v=vmin+(vmax-vmin)*dble(rand(0))

! accept/reject value

  f=0.5*(exp(-(v-vb)*(v-vb)/2.)+exp(-(v+vb)*(v+vb)/2.))


    x=fmax*dble(rand(0))
    if (x<=f) then
        exit
    end if
End Do
  Distribution_negative=v

  End function Distribution_negative


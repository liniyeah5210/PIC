Doubleprecision function Distribution_positive(vb)
IMPLICIT NONE
  doubleprecision, INTENT(IN):: vb


  doubleprecision fmax, vmax, vmin,v,f,x



  fmax=0.5*(1+exp(-2*vb*vb))
  vmin=0.
  vmax=5.*vb

Do
  v=vmin+(vmax-vmin)*dble(rand(0))

! accept/reject value

  f=0.5*(exp(-(v-vb)*(v-vb)/2.)+exp(-(v+vb)*(v+vb)/2.))


    x=fmax*dble(rand(0))
    if (x<=f) then
        exit
    end if
End Do
  Distribution_positive=v

  End function Distribution_positive


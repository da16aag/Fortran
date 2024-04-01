program run_fcn

  implicit none
  real :: v(9) 

  v(:) = 9
  print *, 'vector_norm = ', vector_norm( 9, v)

contains
  function vector_norm(n,vec) result(norm)

    integer , intent(in) :: n
    real , intent(in) :: vec(n)
    real :: norm

    norm = sqrt(sum(vec**2))
  end function vector_norm

end program run_fcn

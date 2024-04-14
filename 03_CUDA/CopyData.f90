program CopyData
  use cudafor
  implicit none
  integer, parameter :: n = 256
  real :: a(n), b(n)
  real, device :: a_d(n), b_d(n) 
  
  a = 1.0
  a_d = a 
  b_d = a_d 
  b = b_d

  if (all(a == b)) &
   write(*,*) 'Test Passed'

end program CopyData


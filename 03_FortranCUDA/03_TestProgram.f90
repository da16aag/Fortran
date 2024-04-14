 ! To Run the code do not forget to use -cuda


program saxpytest
  use saxpykernel
  use cudafor !Enable CUDA Fortran
  implicit none
  ! parameter Define constant variables
  integer, parameter :: N = 128*1024*1024
  integer, parameter :: blocksize=256

  ! variables to use on the HOST Memory
  real :: x(N), y(N), a

  ! variables for the GPU device 
  real, device :: x_d(N), y_d(N)
  ! type by CUDA used to define the dim for lunching the Kernel
  type(dim3) :: grid, block

  ! define 1D grid
  grid = dim3(ceiling(real(N)/blocksize),1,1)
  block = dim3(blocksize,1,1)

  ! Initialize all the variables of x y and a on HOST
  x = 1.0; y = 2.0; a = 2.0
  
  ! Copy the variables on the DEVICE
  x_d = x 
  y_d = y 

  ! Call Saxpy Kernel Function
  call saxpy<<<grid, block>>>(x_d, y_d, a)

  ! Copy the results to the HOST
  y = y_d
  write(*,*) 'Max error: ', maxval(abs(y-4.0))

end program saxpytest

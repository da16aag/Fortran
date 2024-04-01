program type_test
  
  implicit none
  
  ! Define the derived type 
  type :: t_pair
  ! The variables are layedout sequentially without gaps in memory
    sequence
    integer :: i 
    real :: x 
  end type t_pair

  ! Declare variables of the derived type 
  type(t_pair) :: pair, pair1, pair2 

  ! Initialize pair using component-wise assignment 
  pair%i = 1 
  pair%x = 0.5

  ! Initialize pair1 and 2 using constructor syntax
  pair1 = t_pair(1,0.5)
  pair2 = t_pair(x=3.5, i=2) 

  !Print the values of the derived type variables
  print *, 'Pair = ', pair%i, pair%x 
  ! Notice due to the way it was defined this has to be the way for printing
  print '(A, I0, 1X, F0.1)', 'Pair1 = ', pair1
  print '(A, I0, 1X, F0.1)', 'Pair2 = ', pair2
  print *, '=========================='
  
  ! Check sequence effect
  print *, 'size of i = ', LOC(pair%i)
  print *, 'size of x = ', LOC(pair%x)
end program type_test
  

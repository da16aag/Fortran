program flow
  implicit none

  real :: angle
  integer :: i

  print *, 'Enter the Angle: ' 
  read (*,*) angle
  
  if (angle < 90.0) then
      print *, 'Angle is acute'
    else if (angle < 180.0) then
      print *, 'Angle is obtuse'
    else 
      print *, 'Angle is reflex'
  end if
  
  
  print *, '===================='

  do i = 1, 10
    print *, i  
  end do
  
  print *, '===================='

  do i = 1, 10, 2
    print *, i !Prints odd no.
  end do
end program flow

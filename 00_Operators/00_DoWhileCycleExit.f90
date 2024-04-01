program while

  implicit none
  integer :: i 

  i = 1
  do while (i<11)
    print *, i
    i = i + 1  
  end do
  print *, '=================='
  
  do i = 1,100
    if (i > 10) then
      exit
    end if
    print *, i
  end do
  print *, '=================='
  
  do i = 1, 10
    if (mod(i,2)==0) then
      cycle !Don't print even num
    end if
    print *, i 
  end do

end program while

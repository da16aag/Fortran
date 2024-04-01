program call_sub
  
  implicit none

  real :: mat(10,20)

  mat(:,:) = 0.0

  call print_matrix(10, 20, mat)

contains
  subroutine print_matrix(n, m, A)
    integer, intent(in) :: n, m
    real, intent(in) :: A(:, :)
    
    integer :: i
    do i= 1, n 
      print *, A(i, 1:m)
    end do    
  end subroutine print_matrix


  

end program call_sub

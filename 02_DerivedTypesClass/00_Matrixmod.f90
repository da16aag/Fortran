module m_matrix

  implicit none
  private
  type, public :: t_matrix(rows, cols, k)
    integer, len :: rows, cols
    integer, kind :: k= kind(0.0)
    real(kind=k), dimension(rows,cols) ::values
  end type t_matrix

end module m_matrix

program test_matrix
  use m_matrix
  implicit none 
  type(t_matrix(rows=2, cols=2)) :: m
  print *, 'no. of Rows: ', m%rows
  print *, 'no. of cols: ', m%cols
  print *, 'no. of k: ', m%k
  print '(A, (:,:)F5.1)', 'matrix: ', m%values(:,:)
  
  
end program test_matrix

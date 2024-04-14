module saxpyseries
  implicit none
  contains
   subroutine saxpys (x, y, a)
      implicit none
      real :: x (:), y(:)
      real, value :: a 
      integer :: i, n 
      n = size(x) 
      ! CPU Code
      do i=1,n
        y(i) = y(i) + a*x(i)
      end do
    end subroutine saxpys 

end module saxpyseries

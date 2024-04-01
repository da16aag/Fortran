program string_array
  implicit none
  character(len=10), dimension(2) ::keys,vals

  keys = [character(len=10) :: "user","dbname"]
  vals = [character(len=10) :: "ben","motivation"]

  call show(keys,vals)

  contains

  subroutine show(akeys,avals)
    !character(len=*) akey(:) the lenght depends on the input
    !intent(in) the input will not be modified by subroutine
    character(len=*),intent(in) :: akeys(:), avals(:)
    integer                     :: i

    do i = 1, size(akeys)
      !trim remove trailing white space before printing
    print *, trim(akeys(i)), ": ", trim(avals(i))
    end do
  end subroutine show
end program string_array

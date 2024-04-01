program Parallel
  use omp_lib
  implicit none
  real, parameter :: pi = 3.14
  integer, parameter :: n = 10
  real :: result_sin(n)
  integer :: i, nthreads, tid
  
  ! Print the max number of threads available
  nthreads = omp_get_max_threads()
  print *, "Maximum number of threads: ", nthreads

  !$omp parallel do default(shared) private(i)
  do i = 1, n
    result_sin(i) = sin(i*pi/4.)
    ! Get the thread ID
    tid = omp_get_thread_num()
    print *, "Threat", tid, "computed sin", result_sin(i)
  end do
  !$omp end parallel do
  
  print *, "Sine values: ", result_sin
end program Parallel


module m_empolyee
  
  ! The Employee Details 
  implicit none
  private
  public t_date, t_address, t_person, t_employee
   
  type t_date 
    integer :: year, month, day 
  end type t_date

  type :: t_address
    character(len=:), allocatable :: city, road_name
    integer :: house_number
  end type t_address

  type, extends(t_address):: t_person
    character(len=:), allocatable :: first_name, last_name, e_mail 
  end type  t_person
  
  ! t_employee is child of t_person which is a child of t_address
  type, extends(t_person) :: t_employee
    type(t_date) :: hired_date
    character(len=:), allocatable :: position
    real :: monthly_salary
  end type t_employee 

end module m_empolyee


program test_employee
  use m_empolyee
  implicit none
  
  ! Access to t_date through declaration
  type(t_employee) :: employee 
  employee%hired_date%year = 2024
  employee%hired_date%month = 04
  employee%hired_date%day = 20

  ! Access to t_person through extends
  employee%first_name = 'David'
  employee%last_name = 'Tawfelis' 
  
  ! Access to t_address through extends to t_person
  employee%city = 'Aachen'
  employee%road_name = 'Sandkaulstrasse'
  employee%house_number = 63

  ! It's own data
  employee%position = 'Intern'
  employee%monthly_salary = 1453.40
  
  print *, employee%monthly_salary
  print *, employee%road_name
  print *, employee%hired_date
end program test_employee

module nwtc_library_test_tools

use NWTC_IO

implicit none

integer, parameter :: stdout=CU

contains

subroutine hide_terminal_output(dumpfile)
    character(1024), intent(in) :: dumpfile
    open(unit=stdout, file=trim(dumpfile))
end subroutine

subroutine show_terminal_output()
    open(unit=stdout)
end subroutine

end module

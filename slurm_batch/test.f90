PROGRAM MAIN

        IMPLICIT NONE
        
        integer, parameter :: nels=1000000

        real(16) :: arr(nels)
        real(16) :: x
        INTEGER :: i
        
        do i = 1, nels
                x = real(i,16)
                arr(i) = sin(x)+cos(x)
        end do


END PROGRAM MAIN

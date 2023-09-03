subroutine blas()
    implicit none
    integer, parameter :: n = 3
    real*8, dimension(n,n) :: A = reshape([1,2,3,2,5,6,3,6,9], [n,n])
    real*8, dimension(n) :: w
    integer :: info
    real*8, dimension(3*n-1) :: work
    integer :: lwork = 3*n-1

    call dsyev('V', 'U', n, A, n, w, work, lwork, info)

    if (info == 0) then
        print *, "Eigenvalues:", w
        print *, "Eigenvectors:"
        print *, A
    else
        print *, "An error occurred:", info
    end if

end subroutine blas

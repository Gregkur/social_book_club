import Swal from 'sweetalert2'
import 'sweetalert2/src/sweetalert2.scss'

const initBookingMenu = () => {
    const bookings = document.querySelectorAll("#booking-menu")
    if (bookings === undefined || bookings.length == 0) {
      bookings.forEach(booking => 
        booking.addEventListener('click', () => {
            Swal.fire({
                title: 'What do you want to do?',
                icon: 'question',
                confirmButtonText: `View your book`,
                denyButtonText: `Cancel your booking`,
                showDenyButton: true,
                showCloseButton: true,
                allowOutsideClick: true,
                confirmButtonColor: '#88CE8F',
                denyButtonColor: '#E14F52',
            }).then((result) => {
                /* Read more about isConfirmed, isDenied below */
                if (result.isConfirmed) {
                    const link1 = document.querySelector('#book-link');
                    link1.click();
                  } else if (result.isDenied) {
                    const link2 = document.querySelector('#bookings-link');
                    link2.click();
                  }
            })
          })
        )
    }
};
export { initBookingMenu };
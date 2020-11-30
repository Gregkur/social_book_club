import Swal from 'sweetalert2'
import 'sweetalert2/src/sweetalert2.scss'

const initBookingMenu = () => {
    const booking = document.querySelector("#booking-menu")
    booking.addEventListener('click', () => {
        Swal.fire({
            title: 'Do you want to save the changes?',
            showDenyButton: true,
            showCancelButton: true,
            confirmButtonText: `Save`,
            denyButtonText: `Don't save`,
        }).then((result) => {
            /* Read more about isConfirmed, isDenied below */
            if (result.isConfirmed) {
            Swal.fire('Saved!', '', 'success')
            } else if (result.isDenied) {
            Swal.fire('Changes are not saved', '', 'info')
            }
        })
        })
};
export { initBookingMenu };
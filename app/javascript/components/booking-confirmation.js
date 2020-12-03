import Swal from 'sweetalert2'

const initBookingConfirmation = () => {
  if (document.querySelector(".santi")) {
    Swal.fire({
      title: "Good choice",
      text: 'The owner has been notified and will contact you shortly.',
      icon: 'success',
      confirmButtonText: `Cool`,
      confirmButtonColor: '#252525',
    })
  };
}

export { initBookingConfirmation };

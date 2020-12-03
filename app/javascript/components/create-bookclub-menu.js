import Swal from 'sweetalert2'
import 'sweetalert2/src/sweetalert2.scss'

const initCreateBookclubMenu = () => {
    if (document.querySelector(".pia")) {
      Swal.fire({
        title: "Nice one!",
        text: 'You created a bookclub!',
        icon: 'success',
        confirmButtonText: `Cool`,
        confirmButtonColor: '#88CE8F',
      })
    };
}

export { initCreateBookclubMenu };
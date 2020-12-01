import Swal from 'sweetalert2'
import 'sweetalert2/src/sweetalert2.scss'

const initJoinMenu = () => {
  const join_button = document.getElementById('joinbookclub')
  join_button.addEventListener('click',() => {
    Swal.fire({
        position: 'top-end',
        icon: 'success',
        title: 'You joined a bookclub!',
        showConfirmButton: false,
        timer: 1500
      })
  })
}

export { initJoinMenu };
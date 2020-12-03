import Swal from 'sweetalert2'
import 'sweetalert2/src/sweetalert2.scss'

const initJoinMenu = () => {
  const joinButton = document.getElementById('joinbookclub')
  if (joinButton) {
    joinButton.addEventListener('click',() => {
      Swal.fire({
          icon: 'success',
          title: 'You joined a bookclub!',
          showConfirmButton: false,
          timer: 1500
        })
    })
  }
}

export { initJoinMenu };
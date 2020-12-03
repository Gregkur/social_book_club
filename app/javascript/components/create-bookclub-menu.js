import Swal from 'sweetalert2'
import 'sweetalert2/src/sweetalert2.scss'

const initCreateBookclubMenu = () => {
  const createButton = document.getElementById('createButton')
  if (createButton) {
    createButton.addEventListener('click',() => {
      Swal.fire({
          icon: 'success',
          title: 'You created a bookclub!',
          showConfirmButton: false,
          timer: 1500
        })
    })
  }
}

export { initCreateBookclubMenu };
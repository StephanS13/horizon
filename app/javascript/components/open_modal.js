const initModal = () => {
  const openModalBtn =  document.querySelector("#open-modal-btn");
  const poiModal = document.querySelector("#poi-modal");
  console.log("coucou")

  openModalBtn.addEventListener("click", (event) => {
    event.preventDefault()
    // poiModal.modal("focus")
    $('#poi-modal').modal('show');

  });

};

export {initModal};

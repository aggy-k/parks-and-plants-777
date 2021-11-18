const editPlant = () => {
  const els = document.querySelectorAll(".edit-plant")
  // console.log({els})
  if (els) {
    els.forEach(el => {
      // console.log({el})
      el.addEventListener('click', (e) => {
        const id = e.currentTarget.dataset.id
        console.log({id})
        document.getElementById(`plant-name-${id}`).classList.add('hidden')
        document.getElementById(`plant-edit-name-${id}`).classList.remove('hidden')
      })
    })
  }
}

export { editPlant }

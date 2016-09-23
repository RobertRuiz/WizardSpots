function init () {
  var drop = document.querySelector(".dropdown")
  console.log(drop)
  drop.addEventListener("mouseover", () => {
    console.log("IM IN THE MOUSE", drop.className)
    drop.className = 'dropdown open'
  })
  drop.addEventListener("mouseleave", () => {
    console.log("LEAVING")
    drop.className = 'dropdown'
  })
}

document.addEventListener('DOMContentloaded', init)

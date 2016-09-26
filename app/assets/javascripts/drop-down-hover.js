$(document).ready(function() {
  $(".dropdown").on("mouseover", function() { $(this).addClass("open") })
  $(".dropdown").on("mouseout", function() { $(this).removeClass("open") })
})

// var drop = document.querySelector(".dropdown")
// drop.addEventListener('mouseover', () => {
//   drop.className = 'dropdown open'
// })
// drop.addEventListener('mouseout', () => {
//   drop.className = 'dropdown'
// })

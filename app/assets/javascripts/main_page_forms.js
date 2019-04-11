document.addEventListener('DOMContentLoaded', () => {

  // check if controller & action match current view's class
  if (document.querySelector(".pages.main")) {
    console.log("This Javascript is executing on this page only!")
    console.log("Now rendering new-user-form...")

    // let formContainer = document.getElementById('form-container')
    // let newUserForm = document.getElementById('new-user-form')
    let newUserDiv = document.getElementById('new-user-div')
    newUserDiv.classList.add("hidden")
    let hideUserButton = document.getElementById('toggle-user-form')
    hideUserButton.addEventListener('click', () => {
      if (newUserDiv.classList.contains("hidden")) {
        newUserDiv.classList.remove("hidden", "visibility-off")
      } else {
        newUserDiv.classList.add("hidden")
        setTimeout(() => {newUserDiv.classList.add("visibility-off")}, 1000)
      }
    })

    let newBaseCharacterDiv = document.getElementById('new-base-character-div')
    newBaseCharacterDiv.classList.add("hidden")
    let hideBaseCharacterButton = document.getElementById('toggle-base-character-form')
    hideBaseCharacterButton.addEventListener('click', () => {
      if (newBaseCharacterDiv.classList.contains("hidden")) {
        newBaseCharacterDiv.classList.remove("hidden", "visibility-off")
      } else {
        newBaseCharacterDiv.classList.add("hidden")
        setTimeout(() => {newBaseCharacterDiv.classList.add("visibility-off")}, 1000)
      }
    })


  }
})


// NOTE: Javascript-created forms will NOT have authenticity
// tokens, so they cannot Post to the database.
// HOWEVER: this format for page-specific javascript does
// work, so reuse this when creating other views' Javascript...

document.addEventListener('DOMContentLoaded', () => {

  // check if controller & action match current view's class
  if (document.querySelector(".users.new")) {
    console.log("This Javascript is executing on this page only!")
    console.log("Now rendering new-user-form...")


  }
})

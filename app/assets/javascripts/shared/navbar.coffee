$(document).on 'turbolinks:load', ->
  $('.dropdown-trigger').dropdown()
  $('.sidenav').sidenav()
  return

$(document).on 'ready turbolinks:before-visit', ->
  elem = document.querySelector('#side-bar');
  instance = M.Sidenav.getInstance(elem);
  if instance
    instance.destroy()

# Need to destroy the side-bar instance for proper work with rails and turbolink
# Without the code above, the side-bar only worked in somes pages after refreshing it
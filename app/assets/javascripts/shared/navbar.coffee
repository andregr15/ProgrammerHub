$(document).on 'turbolinks:load', ->
  $('.dropdown-trigger').dropdown()
  $('.sidenav').sidenav()
  return

$(document).on 'ready turbolinks:before-visit', ->
  elem = document.querySelector('#side-bar');
  instance = M.Sidenav.getInstance(elem);
  if instance
    instance.destroy()
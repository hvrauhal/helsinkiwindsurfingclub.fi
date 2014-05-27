$(function () {
  addCurrentClassToCurrentMenuitem();

  function addCurrentClassToCurrentMenuitem() {
    var filename = window.location.href.substr(window.location.href.lastIndexOf("/") + 1) || 'index.html';
    $('nav a[href$="' + filename + '"]').addClass("current");
  }
})
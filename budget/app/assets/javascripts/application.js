// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

  function loss() {
    $('h2').text("Poop")
  }
  setTimeout(loss, 5000)

  function loss1() {
    $('h3').text("Poop")
  }
  setTimeout(loss1, 9000)

  function loss2() {
    $('.goal').text("Poop")
  }
  setTimeout(loss2, 10000)

  function loss3() {
    $('.actual').text("Poop")
  }
  setTimeout(loss3, 10600)

  function loss4() {
    $('h1').text("Poop")
  }
  setTimeout(loss4, 9300)



// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require semantic-ui
//= require rails-ujs
//= require bootstrap
//= require turbolinks
//= require jquery_ujs
//= require_tree .



$(document).ready(function($) {

    $(function() {

        var url = window.location.pathname,
            urlRegExp = new RegExp(url.replace(/\/$/, '') + "$"); // create regexp to match current url pathname and remove trailing slash if present as it could collide with the link in navigation in case trailing slash wasn't present there
        // now grab every link from the navigation
        $('a.item').each(function() {
            // and test its normalized href against the url pathname regexp
            if (urlRegExp.test(this.href.replace(/\/$/, ''))) {
                $(this).addClass('active');
            }
        });

    });

    $("a.item").on("click", function() {

        $(document).ready(function() {
            var url = window.location.pathname,
                urlRegExp = new RegExp(url.replace(/\/$/, '') + "$"); // create regexp to match current url pathname and remove trailing slash if present as it could collide with the link in navigation in case trailing slash wasn't present there
            // now grab every link from the navigation
            alert(urlRegExp);
            $('a.item').each(function() {
                // and test its normalized href against the url pathname regexp
                if (urlRegExp.test(this.href.replace(/\/$/, ''))) {
                    $(this).addClass('active');
                    console.log($(this));

                }
            });
        });

    });





    // let link = $("div.ui.secondary.vertical.fluid.menu").children();
    //   link.each(function() {
    //     console.log(link);
    //     console.log("yeah");
    // })

    // $("#sidebar").on("click", "a.item", function() {
    //     alert("alert");
    //     $("a.active").css("background-color", "white");
    //     $('a').removeClass('active');
    //     $(this).addClass("active");
    //     console.log($(this));
    //     $(this).css("background-color", "black");
    // });



});
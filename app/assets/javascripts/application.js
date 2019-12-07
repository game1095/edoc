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
//= require jquery3
//= require jquery_ujs
//= require rails-ujs
//= require bootstrap-sprockets
//= require bootstrap.min
//= require activestorage
//= require turbolinks
//= require_tree .

$(function() {

    var data = [{
        label: "Sales 1",
        data: 21,
        color: "#d3d3d3",
    }, {
        label: "Sales 2",
        data: 3,
        color: "#bababa",
    }, {
        label: "Sales 3",
        data: 15,
        color: "#79d2c0",
    }, {
        label: "Sales 4",
        data: 52,
        color: "#1ab394",
    }];

    var plotObj = $.plot($("#type-pie-chart"), data, {
        series: {
            pie: {
                show: true
            }
        },
        grid: {
            hoverable: true
        },
        tooltip: true,
        tooltipOpts: {
            content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
            shifts: {
                x: 20,
                y: 0
            },
            defaultTheme: false
        }
    });

});

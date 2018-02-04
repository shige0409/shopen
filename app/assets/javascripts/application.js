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
//= require rails-ujs
//= require jquery
// require bootstrap
// require turbolinks
//= require_tree
//= require material
jQuery(function($) {
    $('.bg-slider').bgSwitcher({
        images: ['/images/green.jpg','/images/blue.jpg','/images/asphalt.jpg','/images/orange.jpg', '/images/red.jpg'],
        interval: 7000, // 背景画像を切り替える間隔を指定 3000=3秒
        loop: true, // 切り替えを繰り返すか指定 true=繰り返す　false=繰り返さない
        shuffle: true, // 背景画像の順番をシャッフルするか指定 true=する　false=しない
        effect: "drop", // エフェクトの種類をfade,blind,clip,slide,drop,hideから指定
        duration: 800, // エフェクトの時間を指定します。
        easing: "swing" // エフェクトのイージングをlinear,swingから指定 // 切り替える背景画像を指定
    });
});

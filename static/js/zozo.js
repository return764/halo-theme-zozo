'use strict';

const context = {
  back_to_top: function () {
    let bt
    bt = $('#back_to_top')
    if ($(document).width() > 480) {
      $(window).scroll(function () {
        let st
        st = $(window).scrollTop()
        if (st > 30) {
          return bt.css('display', 'block')
        } else {
          return bt.css('display', 'none')
        }
      })
      return bt.click(function () {
        $('body,html').animate({
          scrollTop: 0,
        }, 800)
        return false
      })
    }
  },
  nav_toggle: function() {
    let nav,icon
    icon = $('#menu_icon')
    nav = $('#site_nav')
    icon.click(function () {
      nav.slideToggle(250)
    })
  },
  load_more: function() {
    $('.more_btn').click(function(e) {
      let next_url = e.target.dataset.url
      let wrap_container = "#wrpper-container"
      let pagination = "#pagination"
      $.ajax({
        type: "GET",
        url: next_url,
        success(data) {
          $(pagination).remove();
          let next_page = $(data).find(wrap_container)
          $(wrap_container).append(next_page.children())
          context.load_more()
        },
        error() {
          context.load_more()
        }
      })
    })
  }

}

$(document).ready(function() {
  Object.values(context).forEach(f => f())
})
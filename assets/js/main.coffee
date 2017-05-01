# console.log 'initialize swipers'
# $('body').html('hello')
$ () ->
  ### find media link and replace with real src ###
  doms = $ '.feature'
  doms.each () ->
    dom = $(this)
    media = dom.attr 'src'
    $.ajax media,
      crossDomain: true
      dataType: 'jsonp'
      jsonp: '_jsonp'
    .done (data) ->
      console.log data
      dom.attr 'src', data.source_url
    .fail (jqXHR, err) ->
      console.log err

new Swiper '.swiper-container',
  direction: 'vertical'
  keyboardControl: true
  mousewheelControl: true
  hashnav: true
  hashnavWatchState: true

new Swiper '.inner-swiper',
  direction: 'horizontal'
  keyboardControl: true
  mousewheelControl: true
  hashnav: true
  hashnavWatchState: true
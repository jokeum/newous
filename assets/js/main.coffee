console.log 'initialize swipers'

new Swiper '.swiper-container',
  direction: 'vertical',
  keyboardControl: true,
  mousewheelControl: true,
  hashnav: true,
  hashnavWatchState: true,

new Swiper '.inner-swiper',
  direction: 'horizontal',
  keyboardControl: true,
  mousewheelControl: true,
  hashnav: true,
  hashnavWatchState: true

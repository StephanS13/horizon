import { getScrollParent } from '../utils/getScrollParent'

const initTurbolinksScrollPersistence = () => {

  const scrollableEls = document.querySelectorAll("[data-turbolinks-scroll]");

  scrollableEls.forEach(function(element){

    element.addEventListener("click", ()=> {
      Turbolinks.scroll['top'] = document.scrollingElement.scrollTop;
    });

    element.addEventListener("submit", ()=> {
      Turbolinks.scroll['top'] = document.scrollingElement.scrollTop;
    });

  });

  const horizontalScrollableEls = document.querySelectorAll("[data-turbolinks-scroll-horizontal]");

  horizontalScrollableEls.forEach((element) => {
    element.addEventListener("click", ()=> {
      Turbolinks.scroll['elementId'] = element.id;

      const scrollableParent = getScrollParent(element)
      Turbolinks.scroll['parentScrollLeft'] = scrollableParent.scrollLeft;
    });
  })


  if (Turbolinks.scroll['top']) {
    document.scrollingElement.scrollTo(0, Turbolinks.scroll['top']);
  }

  if (Turbolinks.scroll['parentScrollLeft']) {
    const id = `#${Turbolinks.scroll['elementId']}`
    const element = document.querySelector(id)

    const scrollableParent = getScrollParent(element)

    scrollableParent.scrollTo(Turbolinks.scroll['parentScrollLeft'], 0);
  }

  Turbolinks.scroll = {};
}

export { initTurbolinksScrollPersistence }



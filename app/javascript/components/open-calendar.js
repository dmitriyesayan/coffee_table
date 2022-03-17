const openCalendar = () => {
  const banner = document.querySelector('.hover-blue');
  const calendar = document.querySelector('.calendar');
  if (banner) {
    banner.addEventListener('click', () => {
      calendar.classList.toggle('invisible');
      if (calendar.classList.contains('invisible')) {
        banner.querySelector(".lni").outerHTML = '<i class="lni lni-arrow-down-circle"></i>';
      } else {
        banner.querySelector(".lni").outerHTML = '<i class="lni lni-arrow-up-circle"></i>';
      }
    });
  }
}

const keepCalendarOpen = () => {
  const banner = document.querySelector('.hover-blue');
  const queryString = window.location.search;
  const urlParams = new URLSearchParams(queryString);
  const calendar = document.querySelector('.calendar')
  if (urlParams.has('start_date')) {
    calendar.classList.remove('invisible');
    banner.querySelector(".lni").outerHTML = '<i class="lni lni-arrow-up-circle"></i>';
  }
}

export { openCalendar };
export { keepCalendarOpen };

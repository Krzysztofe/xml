const targetElement = document.querySelector(".pickupl_submit--bottom");

const handleScroll = () => {
  const scrollPosition = window.scrollY || document.documentElement.scrollTop;

  if (scrollPosition > 70) {
    targetElement.classList.add("pickupl_submit--top");
  } else {
    targetElement.classList.remove("pickupl_submit--top");
  }
};

window.addEventListener("scroll", handleScroll);

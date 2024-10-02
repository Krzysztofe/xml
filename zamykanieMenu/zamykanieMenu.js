const menuEl = document.querySelector(".mobileCategories__link.menuBtn");
const htmlEl = document.documentElement;

const closeMenuBM = () => {
  if (!menuEl) return;
  if (!htmlEl) return;
  menuEl.classList.toggle("open");

  if (!menuEl.classList.contains("open")) {
    htmlEl.classList.remove("sidebar_open");
  }
};

menuEl.addEventListener("click", closeMenuBM);

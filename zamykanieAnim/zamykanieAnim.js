const [btnShowEl, btnCloseEl, arrowEl, topDescriptionEL, mainWrapperEl] = [
  "main_cms2_button_show",
  "main_cms2_button_close",
  "main_cms2_button_arrow",
  "main_cms_top_description",
  "main_cms_wrapper",
].map(item => {
  return document.querySelector(`.${item}`);
});

if (btnShowEl && btnCloseEl && arrowEl && topDescriptionEL && mainWrapperEl) {
  const toggleInfo = show => {
    topDescriptionEL.classList.toggle(
      "main_cms_top_description--shadow-remove",
      show
    );
    mainWrapperEl.classList.toggle("main_cms_wrapper--print", show);
    btnShowEl.classList.toggle("main_cms2_button--print", !show);
    btnCloseEl.classList.toggle("main_cms2_button--print", show);
    arrowEl.classList.toggle("main_cms2_button_arrow-bottom", show);
  };

  btnShowEl.addEventListener("click", () => toggleInfo(true));
  btnCloseEl.addEventListener("click", () => toggleInfo(false));
}




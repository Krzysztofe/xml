const [btnShowEl, btnCloseEl, arrowEl, mainCmsEl, descriptionTopEl] = [
  "main_cms2_button_show",
  "main_cms2_button_close",
  "main_cms2_button_arrow",
  "main_cms2_description",
  "decription_top",
].map(item => {
  return document.querySelector(`.${item}`);
});

if (btnShowEl && btnCloseEl && arrowEl && mainCmsEl && descriptionTopEl) {
  const toggleInfo = show => {
    mainCmsEl.classList.toggle("show_description", show);
    btnShowEl.classList.toggle("main_cms2_button--print", !show);
    btnCloseEl.classList.toggle("main_cms2_button--print", show);
    arrowEl.classList.toggle("main_cms2_button_arrow-bottom", show);
    descriptionTopEl.classList.toggle("description_shadow", !show);

    if (show) {
      mainCmsEl.style.gridTemplateRows = "1fr";
    } else {
      mainCmsEl.style.gridTemplateRows = "0fr";
    }
  };

  btnShowEl.addEventListener("click", () => toggleInfo(true));
  btnCloseEl.addEventListener("click", () => toggleInfo(false));
}

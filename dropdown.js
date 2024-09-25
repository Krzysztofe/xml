const sectionEl = document.querySelector("section#search");

const toggleSelect = e => {
  const buttonEl = e.target;
  const tagName = buttonEl.tagName;
  const className = buttonEl.className;

  if (
    tagName === "BUTTON" &&
    buttonEl.classList.contains("f-control") &&
    buttonEl.classList.contains("f-dropdown-toggle")
  ) {
    const dropdownEl = buttonEl.closest(
      ".f-dropdown.f-group.projector_buy__number.f-select"
    );

    if (dropdownEl) {
      dropdownEl.classList.add("--open");
    } else {
      dropdownEl.classList.remove("--open");
    }
    if (buttonEl.contains(e.target)) {
      dropdownEl.classList.remove("--open");
    }
  }
};

sectionEl.addEventListener("click", toggleSelect);

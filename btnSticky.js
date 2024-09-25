app_shop.fn.pickupSitesFixedButton = function pickupSitesFixedButton() {
  this.checkFixedBuyButton = () => {
    const sidebarElement =
      document.querySelector('#selectPickupDayWrapper[style^="display') ||
      document.querySelector(".pickup_map_sidebar");
    const buttonElement = document.querySelector(".pickupl_submit");
    const widnowHeight = window.innerHeight;
    const sidebarBottom = sidebarElement.getBoundingClientRect().bottom + 10;
    if (sidebarBottom - widnowHeight + buttonElement.offsetHeight <= 0)
      return false;
    return true;
  };

  this.onScrollFixedButton = () => {
    const buttonElement = document.querySelector(".pickupl_submit");
    if (!this.checkFixedBuyButton()) {
      buttonElement.classList.remove("--fixed");
      return;
    }
    buttonElement.classList.add("--fixed");
  };

  this.initEventsOnce = () => {
    document.addEventListener(
      "scroll",
      this.onScrollFixedButton.bind(this),
      true
    );
    const buttonElement = document.querySelector(".pickupl_submit");
    if (!this.checkFixedBuyButton()) return;
    buttonElement.classList.add("--fixed");
  };

  return this.initEventsOnce();
};

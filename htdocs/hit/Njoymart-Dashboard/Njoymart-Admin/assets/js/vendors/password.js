var password = document.getElementById("fakePassword"),
    toggler = document.getElementById("passwordToggler");
showHidePassword = () => {
    "password" == password.type ? (password.setAttribute("type", "text"), toggler.classList.add("bi-eye"), toggler.classList.remove("bi-eye-slash")) : (toggler.classList.remove("bi-eye"), toggler.classList.add("bi-eye-slash"), password.setAttribute("type", "password"))
}, toggler.addEventListener("click", showHidePassword);
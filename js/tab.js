window.addEventListener("load", function() {
    const tabs = document.querySelectorAll(".tab-item");
    const tabsContent = document.querySelectorAll(".tab-content");

    function handleChangeTab(e) {
        const tabId = e.target.dataset.tab;
        tabs.forEach((el) => el.classList.remove("active"));
        e.target.classList.add("active");
        tabsContent.forEach((el) => {
            el.classList.remove("active");
            if (el.getAttribute("data-tab") === tabId) {
                el.classList.add("active");
            }
        });
    }
    tabs.forEach((el) => el.addEventListener("click", handleChangeTab));
});
//scroll
window.addEventListener('scroll', reveal);

function reveal() {
    var reveals = document.querySelectorAll('.reveal');

    for (var i = 0; i < reveals.length; i++) {

        var windowheight = window.innerHeight;
        var revealtop = reveals[i].getBoundingClientRect().top;
        var revealpoint = 150;

        if (revealtop < windowheight - revealpoint) {
            reveals[i].classList.add('active');
        } else {
            reveals[i].classList.remove('active');
        }
    }
}


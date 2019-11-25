$(document).ready(function () {
    /* ELEMENTS */
    var mobileMenuBar = $("#mobile-menu-bar");
    var mobileMenuList = $('#mobile-menu-list');
    var mobileNavBack = $("#mobile-menu-back");

    /* EVENTS */
    if(mobileMenuBar.length && mobileNavBack.length) {
        mobileNavShow(mobileMenuBar, mobileMenuList, mobileNavBack);
        mobileNavClose(mobileNavBack, mobileMenuList);
    }
});

function mobileNavShow(mobileMenuBar, mobileMenuList, mobileNavBack) {
    mobileMenuBar.click(function (e) {
        mobileMenuList.css('display','block');
        mobileNavBack.css('display','block');
    });
}

function mobileNavClose(mobileNavBack, mobileMenuList) {
    mobileNavBack.click(function (e) {
        e.stopPropagation();
        mobileMenuList.css('display', 'none');
        mobileNavBack.css('display', 'none');
    })
}


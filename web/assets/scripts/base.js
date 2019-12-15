$(document).ready(function () {
    /* ELEMENTS */
    var mobileMenuBar = $("#mobile-menu-bar");
    var mobileMenuList = $('#mobile-menu-list');
    var mobileNavBack = $("#mobile-menu-back");

    /* 메인 예약 누를 시 예외 처리 */
    var mainSearchBtn = $("#main-search-btn");
    var start = $("#start");
    var end = $("#end");
    var adults = $("#adults");
    var rooms = $("#rooms");
    var reservationForm = $("#reservation-form");



    /* EVENTS */
    if(mobileMenuBar.length && mobileNavBack.length) {
        mobileNavShow(mobileMenuBar, mobileMenuList, mobileNavBack);
        mobileNavClose(mobileNavBack, mobileMenuList);
    }

    if(mainSearchBtn.length){
        searchRequire(mainSearchBtn, start, end, adults, rooms, reservationForm);
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

function searchRequire(mainSearchBtn, start, end, adults, rooms, reservationForm){
    mainSearchBtn.click(function (e) {
        e.preventDefault();

        var key1 = false;
        var key2 = false;
        var key3 = false;

        if(start.val() == "" || end.val() == "") {
            alert("체크인 및 체크아웃 일자를 반드시 지정해 주세요.");
        }else {
            key1 = true;
        }
        if(adults.val() <= 0) {
            alert("투숙객 수를 입력해 주세요.");
        }else{
            key2 = true;
        }
        if(rooms.val() <= 0) {
            alert("방의 개수를 정확하게 입력해 주세요.");
        }else{
            key3 = true;
        }

        if(key1 && key2 && key3) {
            reservationForm.submit();
        }

    })
}

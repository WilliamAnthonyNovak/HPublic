
//Only show one section element in reviews page.

function ShowNone() {
    document.getElementById("review1").style.display="none"
    document.getElementById("review2").style.display="none"
    document.getElementById("review3").style.display="none"
    document.getElementById("review4").style.display="none"
}

// Change which review is displayed based on which image is clicked

function show1 () {
    ShowNone()
    document.getElementById("review1").style.display="block"
}

function show2 () {
    ShowNone()
    document.getElementById("review2").style.display="block"
}

function  show3 () {
    ShowNone()
    document.getElementById("review3").style.display="block"
}

function show4 () {
    ShowNone ()
    document.getElementById("review4").style.display="block"
}

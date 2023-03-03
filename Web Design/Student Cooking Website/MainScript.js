function showlarge(thisGraphic)
{thisGraphic.style.width='170px';
thisGraphic.style.height='170px'
thisGraphic.style.paddingLeft='10px'
thisGraphic.style.paddingTop='0px'}

function shownormal(thisGraphic)
{thisGraphic.style.width='140px';
thisGraphic.style.height='140px'
thisGraphic.style.paddingLeft='40px'
thisGraphic.style.paddingTop='30px'}

function SFrolloverOn1(thisGraphic)
{thisGraphic.src='../images/oysterSauce.jpg'}

function SFrolloverOn2(thisGraphic)
{thisGraphic.src='../images/noodles.jpg'}

function SFrolloverOn3(thisGraphic)
{thisGraphic.src='../images/chineseCabbage.jpg'}

function SFrolloverOff1(thisGraphic)
{thisGraphic.src='../images/prawns.jpg'}

function SFrolloverOff2(thisGraphic)
{thisGraphic.src='../images/soySauce.jpg'}

function SFrolloverOff3(thisGraphic)
{thisGraphic.src='../images/greenBeans.jpg'}


function displayNone() {
    document.getElementById("ChilliPowder").style.display="none";
    document.getElementById("Cumin").style.display="none";
    document.getElementById("Cinnamon").style.display="none";
    document.getElementById("Cloves").style.display="none";
    document.getElementById("Fenugreek").style.display="none";
    document.getElementById("Cardamom").style.display="none";
    document.getElementById("Mustard").style.display="none";
    document.getElementById("Nutmeg").style.display="none";
}

function displayChilliPowder() {
    displayNone()
    document.getElementById("ChilliPowder").style.display="block";
}

function displayCumin() {
    displayNone()
    document.getElementById("Cumin").style.display="block";
}

function displayCinnamon() {
    displayNone()
    document.getElementById("Cinnamon").style.display="block";
}

function displayCloves() {
    displayNone()
    document.getElementById("Cloves").style.display="block";
}

function displayFenugreek() {
    displayNone()
    document.getElementById("Fenugreek").style.display="block";
}

function displayCardamom() {
    displayNone()
    document.getElementById("Cardamom").style.display="block";
}

function displayMustard() {
    displayNone()
    document.getElementById("Mustard").style.display="block";
}

function displayNutmeg() {
    displayNone()
    document.getElementById("Nutmeg").style.display="block";
}

function DisplayNoPizza(){
    document.getElementById("pizza1").style.display="none";
    document.getElementById("pizza2").style.display="none";
    document.getElementById("pizza3").style.display="none";
    document.getElementById("pizza4").style.display="none";
    document.getElementById("pizza5").style.display="none";
    document.getElementById("pizza6").style.display="none";
    document.getElementById("pizza7").style.display="none";
    document.getElementById("pizza8").style.display="none";
    document.getElementById("pizza1Text").style.color="Black";
    document.getElementById("pizza2Text").style.color="Black";
    document.getElementById("pizza3Text").style.color="Black";
    document.getElementById("pizza4Text").style.color="Black";
    document.getElementById("pizza5Text").style.color="Black";
    document.getElementById("pizza6Text").style.color="Black";
    document.getElementById("pizza7Text").style.color="Black";
    document.getElementById("pizza8Text").style.color="Black";
}

function displayPizza1 () {
    DisplayNoPizza()
    document.getElementById("pizza1").style.display="block";
    document.getElementById("pizza1Text").style.color="Navy";
}

function displayPizza2 () {
    DisplayNoPizza()
    document.getElementById("pizza2").style.display="block";
    document.getElementById("pizza2Text").style.color="Navy";
}

function displayPizza3 () {
    DisplayNoPizza()
    document.getElementById("pizza3").style.display="block";
    document.getElementById("pizza3Text").style.color="Navy";
}

function displayPizza4 () {
    DisplayNoPizza()
    document.getElementById("pizza4").style.display="block";
    document.getElementById("pizza4Text").style.color="Navy";
}

function displayPizza5 () {
    DisplayNoPizza()
    document.getElementById("pizza5").style.display="block";
    document.getElementById("pizza5Text").style.color="Navy";
}

function displayPizza6 () {
    DisplayNoPizza()
    document.getElementById("pizza6").style.display="block";
    document.getElementById("pizza6Text").style.color="Navy";
}

function displayPizza7 () {
    DisplayNoPizza()
    document.getElementById("pizza7").style.display="block";
    document.getElementById("pizza7Text").style.color="Navy";
}

function displayPizza8 () {
    DisplayNoPizza()
    document.getElementById("pizza8").style.display="block";
    document.getElementById("pizza8Text").style.color="Navy";
}

function showThai1 () {
    document.getElementById("largeThai").src='../images/thai1.jpg'
}

function showThai2 () {
    document.getElementById("largeThai").src='../images/thai2.jpg'
}

function showThai3 () {
    document.getElementById("largeThai").src='../images/thai3.jpg'
}

function showThai4 () {
    document.getElementById("largeThai").src='../images/thai4.jpg'
}

function showIndian1(thisGraphic) {
    thisGraphic.src="../images/indian1.jpg"
}

function showIndian2(thisGraphic) {
    thisGraphic.src="../images/indian2.jpg"
}

function showIndian3(thisGraphic) {
    thisGraphic.src="../images/indian3.jpg"
}

function showIndian4(thisGraphic) {
    thisGraphic.src="../images/indian4.jpg"
}

function showNone () {
    document.getElementById("ChickenCurry").style.display="none"
    document.getElementById("VegCurry").style.display="none"
    document.getElementById("LambCurry").style.display="none"
}

function showChicken () {
    showNone()
    document.getElementById("ChickenCurry").style.display="block"
}

function showVeg () {
    showNone()
    document.getElementById("VegCurry").style.display="block"
}

function showLamb () {
    showNone()
    document.getElementById("LambCurry").style.display="block"
}
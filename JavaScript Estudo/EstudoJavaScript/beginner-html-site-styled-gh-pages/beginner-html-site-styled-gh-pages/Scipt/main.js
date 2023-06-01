const myHeading = document.querySelector("h1");
myHeading.textContent = "Leonardo";

let truck = "Mercedes";
if (truck === "Mercedes") {
    alert("Ai! Pare de me cutucar!");
} else {
    alert("carro michuruca");
}


function multiply(num1, num2) {
    let result = num1 * num2;
    return result;
}

function plus(num1, num2) {
    let result = num1 + num2;
    return result
}

function less(num1, num2) {
    let result = num1 - num2;
    return result
}


document.querySelector("html").addEventListener("click", function () {
    alert("Jesus Nossa Salvacao");
});

const myImage = document.querySelector("img");

myImage.onclick = () => {
    const mySrc = myImage.getAttribute("src");
    if (mySrc === "images/firefox-icon.png") {
        myImage.setAttribute("src", "data:image/jpeg;base64,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");
        myImage.setAttribute("src", "https://t.ctcdn.com.br/SquOzwLGbhezsZr0JLCoWRTevsc=/512x288/smart/filters:format(webp)/i598772.jpeg");
        myImage.setAttribute("src", "https://portalpopline.com.br/wp-content/uploads/2022/06/cantor-leonardo-cpi-sertanejo.jpg");
    } else {
        myImage.setAttribute("src", "images/firefox-icon.png");
    }
};


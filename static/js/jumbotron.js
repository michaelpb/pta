const JUMBOTRON_IMAGE_FILENAMES = [
    'bus-interior.jpg',
    'bus-on-street.jpg',
    'canvass-convo.jpg',
    'canvass-group.jpg',
    'clipboard.jpg',
    'hazard-pay-group.jpg',
    'mtc-march.jpg',
    'mtc-speakers.jpg',
    'posters.jpg',
];
let CURRENT_IMAGE_INDEX = 0;
const SEVEN_SECONDS = 7000;
const ONE_HALF_SECOND = 500; // this should be the same as the CSS transition for opacity on .pta-jumbotron_backgroundImg
const NUM_POSSIBLE_IMAGES = JUMBOTRON_IMAGE_FILENAMES.length;

function setJumbotronBackgroundImg(imgFileName) {
    const jumbotron = document.querySelector('.pta-jumbotron_backgroundImg');
    jumbotron.style.opacity = 0;
    setTimeout(function () {
        jumbotron.style.backgroundImage = `url('/images/jumbotron/${imgFileName}')`;
        jumbotron.style.opacity = 1;
    }, ONE_HALF_SECOND);
}

// every 7 seconds change bakground image to the next one in the list
setInterval(function () {
    setJumbotronBackgroundImg(JUMBOTRON_IMAGE_FILENAMES[CURRENT_IMAGE_INDEX]);
    CURRENT_IMAGE_INDEX = (CURRENT_IMAGE_INDEX + 1) % NUM_POSSIBLE_IMAGES;
}, SEVEN_SECONDS);

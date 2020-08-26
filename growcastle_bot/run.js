var robot = require('robotjs');

function main() {
    var x = 1279, y = 774;

    var pixel_color = robot.getPixelColor(x, y);

    while (true) {
        if (endGame() == true) {
            startGame(x, y);
            doStuff();
        }
    }
}

function sleep(ms) {
    Atomics.wait(new Int32Array(new SharedArrayBuffer(4)), 0, 0, ms);
}

function startGame(x, y) {
    click(x, y);
    sleep(500);
    closeSkip();
    toggleSpeed();
}

function closeSkip() {
    var x = 960, y = 310;

    while (true) {
        pixel_color = robot.getPixelColor(x, y);

        if (pixel_color == "23211e") {
            click(x, y);
            break;
        }
    }
}

function toggleSpeed() {
    var x = 80, y = 765;

    var pixel_color = robot.getPixelColor(x, y);

    if (pixel_color == "000000") {
        click(x, y);
    }
}

function doStuff() {
    var x = 280, y = 200, width = 400, height = 400;

    var img = robot.screen.capture(x, y, width, height);

    while (endGame() == false) {
        for (var i = 0; i < 3; i++) {
            var random_x = getRandomInt(0, width - 1);
            var random_y = getRandomInt(0, height - 1);

            var screen_x = x + random_x;
            var screen_y = y + random_y;

            var color_picked = img.colorAt(random_x, random_y);

            if (color_picked == "54bcff") {
                click(screen_x, screen_y)
            }
        }

        var chest_x = 995, chest_y = 773;

        if (isChest(chest_x, chest_y) == true) {
            click(chest_x, chest_y);
        }
    }
}

function isChest(x, y) {
    var pixel_color = robot.getPixelColor(x, y);

    return pixel_color == "f5f5f5";
}

function endGame() {
    var x = 1279, y = 774;

    var pixel_color = robot.getPixelColor(x, y);

    return pixel_color == "bfb9ac";
}

function getRandomInt(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

function click(x, y) {
    robot.moveMouse(x, y);
    robot.mouseClick();
}

main();
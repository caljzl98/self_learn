// import the robotjs library
var robot = require('robotjs');

function main() {
    var no_of_tree = 0;
    console.log("Starting...");

    while (true) {
        var tree = findTree();

        if (tree == false) {
            rotateCamera();
            continue;
        }

        // chop down trees
        robot.moveMouse(tree.x, tree.y);
        robot.mouseClick();
        sleep(3000);
        no_of_tree++;

        dropLog();
        console.log("Trees cut: " + no_of_tree);
    }

    console.log("Done.");
}

function testScreenCapture() {
    sleep(3000);
    var img = robot.screen.capture(0, 0, 1440, 900);

    var pixel_color = img.colorAt(882, 376);
    console.log(pixel_color);
}

function findTree() {
    var x = 370, y = 184, width = 737, height = 351;

    var img = robot.screen.capture(x, y, width, height);

    var  tree_colors = ["574328", "5b462a", "60492c", "634c2c", "664e2e", "6d5432"];

    for (var i = 0; i < 100; i++) {
        var random_x = getRandomInt(0, width - 1);
        var random_y = getRandomInt(0, height - 1);
        var color_picked = img.colorAt(random_x, random_y);

        if (tree_colors.includes(color_picked)) {
            var screen_x = x + random_x;
            var screen_y = y + random_y;

            if (confirmTree(screen_x, screen_y)) {
                console.log("Tree found at " + screen_x + ", " + screen_y + "; Color = " + color_picked);
                console.log("Trees cut: " + no_of_tree);
                return {x: screen_x, y: screen_y};
            } else {
                console.log("Unconfirmed tree found at " + screen_x + ", " + screen_y + "; Color = " + color_picked);
            }
        }
    }


    return false;
}

function confirmTree(screen_x, screen_y) {
    robot.moveMouse(screen_x, screen_y);

    // wait for text to appear
    sleep(300);

    // get color of the text on top left corner of screen
    var pixel_color = robot.getPixelColor(103, 62);

    return pixel_color == "00ffff";
}

function dropLog() {
    var inventory_x = 1391;
    var inventory_y = 756;
    var inventory_log_color = "a3854c";

    var pixel_color = robot.getPixelColor(inventory_x, inventory_y);

    var wait = 0;
    var max_wait = 9;
    while (pixel_color != inventory_log_color && wait < max_wait) {
        // wait for chopping tree
        sleep(500);
        // resample the color
        pixel_color = robot.getPixelColor(inventory_x, inventory_y);
        max_wait++;
    }

    if (pixel_color == "a3854c") {
        robot.moveMouse(inventory_x, inventory_y);
        robot.mouseClick('right');
        sleep(300);
        robot.moveMouse(inventory_x, inventory_y + 60);
        robot.mouseClick();
    }
}

function rotateCamera() {
    // console.log("Rotating camera...");
    robot.keyToggle("right", "down");
    sleep(500);
    robot.keyToggle("right", "up");
    // console.log("End rotation.");
}

function sleep(ms) {
    Atomics.wait(new Int32Array(new SharedArrayBuffer(4)), 0, 0, ms);
}

function getRandomInt(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

main();


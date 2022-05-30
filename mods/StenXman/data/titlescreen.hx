import("LoadingState");

var crafterEngineLogo:FlxSprite = null;
var gfDancing:FlxSprite = null;
var bg:FlxSprite;

function create() {
bg = new FlxSprite();
bg.frames = Paths.getSparrowAtlas('stenxman/default');
bg.animation.addByPrefix('idle', 'default xman_title', 24);
bg.antialiasing = true;
bg.animation.play('idle', true);
bg.updateHitbox();
add(bg);
}

var danced = false;
function beatHit() {
    gfDancing.animation.play(danced ? "danceLeft" : "danceRight");
    danced = !danced;
}

function update(elapsed:Float) {
    if (FlxG.mouse.justPressed) {
        var pos = FlxG.mouse.getScreenPosition();
        if (pos.x >= 9 && pos.x < 186 && pos.y >= 238 && pos.y < 411) {
            // gray you fucking genius
            CoolUtil.loadSong("YoshiCrafterEngine", "yoshi", "normal");
            LoadingState.loadAndSwitchState(new PlayState_());
        }
    }
}
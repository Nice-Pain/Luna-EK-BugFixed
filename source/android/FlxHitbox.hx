package android;

import flixel.graphics.frames.FlxAtlasFrames;
import flixel.graphics.FlxGraphic;
import flixel.group.FlxSpriteGroup;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.ui.FlxButton;
import flixel.FlxSprite;

class FlxHitbox extends FlxSpriteGroup {
    public var hitbox:FlxSpriteGroup;

    public var array:Array<FlxButton> = [];

    public var k1:FlxButton;
    public var k2:FlxButton;
    public var k3:FlxButton;
    public var k4:FlxButton;
    public var k5:FlxButton;
    public var k6:FlxButton;
    public var k7:FlxButton;
    public var k8:FlxButton;
    public var k9:FlxButton;
    public var k10:FlxButton;    
    public var k11:FlxButton;

    public var orgType:HitboxType = FOUR;
    public var orgAlpha:Float = 0.75;
    public var orgAntialiasing:Bool = true;

    public var KEYS:Int = 4;
    
    public function new(type:HitboxType = FOUR, ?alphaAlt:Float = 0.75, ?antialiasingAlt:Bool = true)
    {
        super();

	orgType = type;
	orgAlpha = alphaAlt;
	orgAntialiasing = antialiasingAlt;

        hitbox = new FlxSpriteGroup();
        hitbox.scrollFactor.set();

        k1 = new FlxButton(0, 0);
        k2 = new FlxButton(0, 0);
        k3 = new FlxButton(0, 0);
        k4 = new FlxButton(0, 0);
        k5 = new FlxButton(0, 0);
        k6 = new FlxButton(0, 0);
        k7 = new FlxButton(0, 0);
        k8 = new FlxButton(0, 0);
        k9 = new FlxButton(0, 0);
        k10 = new FlxButton(0, 0);
        k11 = new FlxButton(0, 0);

        var hitbox_hint:FlxSprite = new FlxSprite(0, 0);

        switch (type)
        {
            case ONE:
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/1k_hint'));
                KEYS = 1;

                hitbox.add(add(k1 = createhitbox(0, 0, "k1")));
            case TWO:
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/2k_hint'));
                KEYS = 2;

                hitbox.add(add(k1 = createhitbox(0, 0, "k1")));
                hitbox.add(add(k2 = createhitbox(FlxG.width / 2, 0, "k2")));
            case THREE:
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/3k_hint'));
                KEYS = 3;

                hitbox.add(add(k1 = createhitbox(0, 0, "k1")));
                hitbox.add(add(k2 = createhitbox(FlxG.width / 3, 0, "k2")));
                hitbox.add(add(k3 = createhitbox((FlxG.width / 3) * 2, 0, "k3")));
            case FOUR:
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/4k_hint'));
                KEYS = 4;

                hitbox.add(add(k1 = createhitbox(0, 0, "k1")));
                hitbox.add(add(k2 = createhitbox(FlxG.width / 4, 0, "k2")));
                hitbox.add(add(k3 = createhitbox(FlxG.width / 2, 0, "k3")));
                hitbox.add(add(k4 = createhitbox((FlxG.width / 4) * 3, 0, "k4")));
            case FIVE:
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/5k_hint'));
                KEYS = 5;

                hitbox.add(add(k1 = createhitbox(0, 0, "k1")));
                hitbox.add(add(k2 = createhitbox(FlxG.width / 5, 0, "k2")));
                hitbox.add(add(k3 = createhitbox((FlxG.width / 5) * 2, 0, "k3")));
                hitbox.add(add(k4 = createhitbox((FlxG.width / 5) * 3, 0, "k4")));
                hitbox.add(add(k5 = createhitbox((FlxG.width / 5) * 4, 0, "k5"))); 
            case SIX:
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/6k_hint'));
                KEYS = 6;

                hitbox.add(add(k1 = createhitbox(0, 0, "k1")));
                hitbox.add(add(k2 = createhitbox(FlxG.width / 6, 0, "k2")));
                hitbox.add(add(k3 = createhitbox(FlxG.width / 3, 0, "k3")));
                hitbox.add(add(k4 = createhitbox((FlxG.width / 6) * 3, 0, "k4")));
                hitbox.add(add(k5 = createhitbox((FlxG.width / 6) * 4, 0, "k5")));
                hitbox.add(add(k6 = createhitbox((FlxG.width / 6) * 5, 0, "k6")));
            case SEVEN:
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/7k_hint'));
                KEYS = 7;

                hitbox.add(add(k1 = createhitbox(0, 0, "k1")));
                hitbox.add(add(k2 = createhitbox(FlxG.width / 7, 0, "k2")));
                hitbox.add(add(k3 = createhitbox((FlxG.width / 7) * 2, 0, "k3")));
                hitbox.add(add(k4 = createhitbox((FlxG.width / 7) * 3, 0, "k4")));
                hitbox.add(add(k5 = createhitbox((FlxG.width / 7) * 4, 0, "k5")));
                hitbox.add(add(k6 = createhitbox((FlxG.width / 7) * 5, 0, "k6")));
                hitbox.add(add(k7 = createhitbox((FlxG.width / 7) * 6, 0, "k7")));
            case EIGHT:
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/8k_hint'));
                KEYS = 8;

                hitbox.add(add(k1 = createhitbox(0, 0, "k1")));
                hitbox.add(add(k2 = createhitbox(FlxG.width / 8, 0, "k2")));
                hitbox.add(add(k3 = createhitbox(FlxG.width / 4, 0, "k3")));
                hitbox.add(add(k4 = createhitbox((FlxG.width / 8) * 3, 0, "k4")));
                hitbox.add(add(k5 = createhitbox(FlxG.width / 2, 0, "k5")));
                hitbox.add(add(k6 = createhitbox((FlxG.width / 8) * 5, 0, "k6")));
                hitbox.add(add(k7 = createhitbox((FlxG.width / 8) * 6, 0, "k7")));
                hitbox.add(add(k8 = createhitbox((FlxG.width / 8) * 7, 0, "k8")));
            case NINE:
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/9k_hint'));
                KEYS = 9;

                hitbox.add(add(k1 = createhitbox(0, 0, "k1")));
                hitbox.add(add(k2 = createhitbox(FlxG.width / 9, 0, "k2")));
                hitbox.add(add(k3 = createhitbox((FlxG.width / 9) * 2, 0, "k3")));
                hitbox.add(add(k4 = createhitbox((FlxG.width / 9) * 3, 0, "k4")));
                hitbox.add(add(k5 = createhitbox((FlxG.width / 9) * 4, 0, "k5")));
                hitbox.add(add(k6 = createhitbox((FlxG.width / 9) * 5, 0, "k6")));
                hitbox.add(add(k7 = createhitbox((FlxG.width / 9) * 6, 0, "k7")));
                hitbox.add(add(k8 = createhitbox((FlxG.width / 9) * 7, 0, "k8")));
                hitbox.add(add(k9 = createhitbox((FlxG.width / 9) * 8, 0, "k9")));
            case TEN:
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/10k_hint'));
                KEYS = 10;

                hitbox.add(add(k1 = createhitbox(0, 0, "k1")));
                hitbox.add(add(k2 = createhitbox(FlxG.width / 10, 0, "k2")));
                hitbox.add(add(k3 = createhitbox(FlxG.width / 5, 0, "k3")));
                hitbox.add(add(k4 = createhitbox((FlxG.width / 10) * 3, 0, "k4")));    
                hitbox.add(add(k5 = createhitbox((FlxG.width / 10) * 4, 0, "k5")));
                hitbox.add(add(k6 = createhitbox(FlxG.width / 2, 0, "k6"))); 
                hitbox.add(add(k7 = createhitbox((FlxG.width / 10) * 6, 0, "k7")));
                hitbox.add(add(k8 = createhitbox((FlxG.width / 10) * 7, 0, "k8"))); 
                hitbox.add(add(k9 = createhitbox((FlxG.width / 10) * 8, 0, "k9")));
                hitbox.add(add(k10 = createhitbox((FlxG.width / 10) * 9, 0, "k10")));
            case ELEVEN:
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/11k_hint'));
                KEYS = 11;

                hitbox.add(add(k1 = createhitbox(0, 0, "k1")));
                hitbox.add(add(k2 = createhitbox(FlxG.width / 11, 0, "k2")));
                hitbox.add(add(k3 = createhitbox((FlxG.width / 11) * 2, 0, "k3")));
                hitbox.add(add(k4 = createhitbox((FlxG.width / 11) * 3, 0, "k4")));    
                hitbox.add(add(k5 = createhitbox((FlxG.width / 11) * 4, 0, "k5")));
                hitbox.add(add(k6 = createhitbox((FlxG.width / 11) * 5, 0, "k6"))); 
                hitbox.add(add(k7 = createhitbox((FlxG.width / 11) * 6, 0, "k7")));
                hitbox.add(add(k8 = createhitbox((FlxG.width / 11) * 7, 0, "k8"))); 
                hitbox.add(add(k9 = createhitbox((FlxG.width / 11) * 8, 0, "k9")));
                hitbox.add(add(k10 = createhitbox((FlxG.width / 11) * 9, 0, "k10"))); 
                hitbox.add(add(k11 = createhitbox((FlxG.width / 11) * 10, 0, "k11"))); 
        }

        array = [k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11];

	hitbox_hint.antialiasing = orgAntialiasing;
	hitbox_hint.alpha = orgAlpha;
        hitbox_hint.setGraphicSize(FlxG.width, FlxG.height);
        hitbox_hint.updateHitbox();
        hitbox_hint.x = 0;
	add(hitbox_hint);
    }

    public function createhitbox(x:Float = 0, y:Float = 0, frames:String) {
	var button = new FlxButton(x, y);
	button.loadGraphic(FlxGraphic.fromFrame(getFrames().getByName(frames)));
	button.antialiasing = orgAntialiasing;
        button.setGraphicSize(Std.int(FlxG.width / KEYS), FlxG.height);
        button.updateHitbox();
	button.alpha = 0;// sorry but I can't hard lock the hitbox alpha
	button.onDown.callback = function (){FlxTween.num(0, 0.75, 0.075, {ease:FlxEase.circInOut}, function(alpha:Float){ button.alpha = alpha;});};
	button.onUp.callback = function (){FlxTween.num(0.75, 0, 0.1, {ease:FlxEase.circInOut}, function(alpha:Float){ button.alpha = alpha;});}
	button.onOut.callback = function (){FlxTween.num(button.alpha, 0, 0.2, {ease:FlxEase.circInOut}, function(alpha:Float){ button.alpha = alpha;});}
	return button;
    }

    public function getFrames():FlxAtlasFrames {
        return switch (orgType)
        {
            case ONE:
                Paths.getSparrowAtlas('androidcontrols/hitbox/1k');
            case TWO:
                Paths.getSparrowAtlas('androidcontrols/hitbox/2k');
            case THREE:
                Paths.getSparrowAtlas('androidcontrols/hitbox/3k');
            case FOUR:
                Paths.getSparrowAtlas('androidcontrols/hitbox/4k');
            case FIVE:
                Paths.getSparrowAtlas('androidcontrols/hitbox/5k');
            case SIX:
                Paths.getSparrowAtlas('androidcontrols/hitbox/6k');
            case SEVEN:
                Paths.getSparrowAtlas('androidcontrols/hitbox/7k');
            case EIGHT:
                Paths.getSparrowAtlas('androidcontrols/hitbox/8k');
            case NINE:
                Paths.getSparrowAtlas('androidcontrols/hitbox/9k');
            case TEN:
                Paths.getSparrowAtlas('androidcontrols/hitbox/10k');
            case ELEVEN:
                Paths.getSparrowAtlas('androidcontrols/hitbox/11k');
        }
    }

    override public function destroy():Void
    {
            super.destroy();

            k1 = null;
            k2 = null;
            k3 = null;
            k4 = null;
            k5 = null;
            k6 = null;
            k7 = null;
            k8 = null;
            k9 = null;
            k10 = null;
            k11 = null;
    }
}

enum HitboxType {
    ONE;
    TWO;
    THREE;
    FOUR;
    FIVE;
    SIX;
    SEVEN;
    EIGHT;
    NINE;
    TEN;
    ELEVEN;
}

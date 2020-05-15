.class public Landroid/media/effect/EffectFactory;
.super Ljava/lang/Object;
.source "EffectFactory.java"


# static fields
.field public static final EFFECT_AUTOFIX:Ljava/lang/String; = "android.media.effect.effects.AutoFixEffect"

.field public static final EFFECT_BACKDROPPER:Ljava/lang/String; = "android.media.effect.effects.BackDropperEffect"

.field public static final EFFECT_BITMAPOVERLAY:Ljava/lang/String; = "android.media.effect.effects.BitmapOverlayEffect"

.field public static final EFFECT_BLACKWHITE:Ljava/lang/String; = "android.media.effect.effects.BlackWhiteEffect"

.field public static final EFFECT_BRIGHTNESS:Ljava/lang/String; = "android.media.effect.effects.BrightnessEffect"

.field public static final EFFECT_CONTRAST:Ljava/lang/String; = "android.media.effect.effects.ContrastEffect"

.field public static final EFFECT_CROP:Ljava/lang/String; = "android.media.effect.effects.CropEffect"

.field public static final EFFECT_CROSSPROCESS:Ljava/lang/String; = "android.media.effect.effects.CrossProcessEffect"

.field public static final EFFECT_DOCUMENTARY:Ljava/lang/String; = "android.media.effect.effects.DocumentaryEffect"

.field public static final EFFECT_DUOTONE:Ljava/lang/String; = "android.media.effect.effects.DuotoneEffect"

.field public static final EFFECT_FILLLIGHT:Ljava/lang/String; = "android.media.effect.effects.FillLightEffect"

.field public static final EFFECT_FISHEYE:Ljava/lang/String; = "android.media.effect.effects.FisheyeEffect"

.field public static final EFFECT_FLIP:Ljava/lang/String; = "android.media.effect.effects.FlipEffect"

.field public static final EFFECT_GRAIN:Ljava/lang/String; = "android.media.effect.effects.GrainEffect"

.field public static final EFFECT_GRAYSCALE:Ljava/lang/String; = "android.media.effect.effects.GrayscaleEffect"

.field public static final EFFECT_IDENTITY:Ljava/lang/String; = "IdentityEffect"

.field public static final EFFECT_LOMOISH:Ljava/lang/String; = "android.media.effect.effects.LomoishEffect"

.field public static final EFFECT_NEGATIVE:Ljava/lang/String; = "android.media.effect.effects.NegativeEffect"

.field private static final EFFECT_PACKAGES:[Ljava/lang/String;

.field public static final EFFECT_POSTERIZE:Ljava/lang/String; = "android.media.effect.effects.PosterizeEffect"

.field public static final EFFECT_REDEYE:Ljava/lang/String; = "android.media.effect.effects.RedEyeEffect"

.field public static final EFFECT_ROTATE:Ljava/lang/String; = "android.media.effect.effects.RotateEffect"

.field public static final EFFECT_SATURATE:Ljava/lang/String; = "android.media.effect.effects.SaturateEffect"

.field public static final EFFECT_SEPIA:Ljava/lang/String; = "android.media.effect.effects.SepiaEffect"

.field public static final EFFECT_SHARPEN:Ljava/lang/String; = "android.media.effect.effects.SharpenEffect"

.field public static final EFFECT_STRAIGHTEN:Ljava/lang/String; = "android.media.effect.effects.StraightenEffect"

.field public static final EFFECT_TEMPERATURE:Ljava/lang/String; = "android.media.effect.effects.ColorTemperatureEffect"

.field public static final EFFECT_TINT:Ljava/lang/String; = "android.media.effect.effects.TintEffect"

.field public static final EFFECT_VIGNETTE:Ljava/lang/String; = "android.media.effect.effects.VignetteEffect"


# instance fields
.field private mEffectContext:Landroid/media/effect/EffectContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "android.media.effect.effects."

    const-string v1, ""

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/effect/EffectFactory;->EFFECT_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/media/effect/EffectContext;)V
    .locals 0
    .param p1, "effectContext"    # Landroid/media/effect/EffectContext;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Landroid/media/effect/EffectFactory;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 427
    return-void
.end method

.method private static getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;

    .line 467
    const/4 v0, 0x0

    .line 470
    .local v0, "effectClass":Ljava/lang/Class;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 473
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    sget-object v2, Landroid/media/effect/EffectFactory;->EFFECT_PACKAGES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 475
    .local v5, "packageName":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 478
    nop

    .line 480
    if-eqz v0, :cond_0

    .line 481
    goto :goto_1

    .line 476
    :catch_0
    move-exception v6

    .line 477
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 473
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 484
    :cond_1
    :goto_1
    return-object v0
.end method

.method private instantiateEffect(Ljava/lang/Class;Ljava/lang/String;)Landroid/media/effect/Effect;
    .locals 7
    .param p1, "effectClass"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;

    .line 490
    :try_start_0
    const-class v0, Landroid/media/effect/Effect;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 494
    nop

    .line 497
    const/4 v0, 0x0

    move-object v1, v0

    .line 499
    .local v1, "effectConstructor":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x2

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/media/effect/EffectContext;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 503
    nop

    .line 506
    nop

    .line 508
    .local v0, "effect":Landroid/media/effect/Effect;
    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/media/effect/EffectFactory;->mEffectContext:Landroid/media/effect/EffectContext;

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/effect/Effect;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v2

    .line 512
    nop

    .line 514
    return-object v0

    .line 509
    :catch_0
    move-exception v2

    .line 510
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There was an error constructing the effect \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 500
    .end local v0    # "effect":Landroid/media/effect/Effect;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The effect class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' does not have the required constructor."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 491
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v1    # "effectConstructor":Ljava/lang/reflect/Constructor;
    :catch_2
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to allocate effect \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' which is not a subclass of Effect!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isEffectSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "effectName"    # Ljava/lang/String;

    .line 463
    invoke-static {p0}, Landroid/media/effect/EffectFactory;->getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;
    .locals 4
    .param p1, "effectName"    # Ljava/lang/String;

    .line 444
    invoke-static {p1}, Landroid/media/effect/EffectFactory;->getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 445
    .local v0, "effectClass":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 449
    invoke-direct {p0, v0, p1}, Landroid/media/effect/EffectFactory;->instantiateEffect(Ljava/lang/Class;Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    return-object v1

    .line 446
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instantiate unknown effect \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

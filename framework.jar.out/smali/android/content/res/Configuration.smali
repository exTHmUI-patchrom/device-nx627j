.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$NativeConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final ASSETS_SEQ_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_HDR_MASK:I = 0xc

.field public static final COLOR_MODE_HDR_NO:I = 0x4

.field public static final COLOR_MODE_HDR_SHIFT:I = 0x2

.field public static final COLOR_MODE_HDR_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_HDR_YES:I = 0x8

.field public static final COLOR_MODE_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_MASK:I = 0x3

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_NO:I = 0x1

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_YES:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_DPI_ANY:I = 0xfffe

.field public static final DENSITY_DPI_NONE:I = 0xffff

.field public static final DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final EMPTY:Landroid/content/res/Configuration;

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final MNC_ZERO:I = 0xffff

.field public static final NATIVE_CONFIG_COLOR_MODE:I = 0x10000

.field public static final NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final NATIVE_CONFIG_KEYBOARD:I = 0x10

.field public static final NATIVE_CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final NATIVE_CONFIG_LAYOUTDIR:I = 0x4000

.field public static final NATIVE_CONFIG_LOCALE:I = 0x4

.field public static final NATIVE_CONFIG_MCC:I = 0x1

.field public static final NATIVE_CONFIG_MNC:I = 0x2

.field public static final NATIVE_CONFIG_NAVIGATION:I = 0x40

.field public static final NATIVE_CONFIG_ORIENTATION:I = 0x80

.field public static final NATIVE_CONFIG_SCREEN_LAYOUT:I = 0x800

.field public static final NATIVE_CONFIG_SCREEN_SIZE:I = 0x200

.field public static final NATIVE_CONFIG_SMALLEST_SCREEN_SIZE:I = 0x2000

.field public static final NATIVE_CONFIG_TOUCHSCREEN:I = 0x8

.field public static final NATIVE_CONFIG_UI_MODE:I = 0x1000

.field public static final NATIVE_CONFIG_VERSION:I = 0x400

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_ROUND_MASK:I = 0x300

.field public static final SCREENLAYOUT_ROUND_NO:I = 0x100

.field public static final SCREENLAYOUT_ROUND_SHIFT:I = 0x8

.field public static final SCREENLAYOUT_ROUND_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_ROUND_YES:I = 0x200

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_SCALE_HUGE:I = 0xf

.field public static final UI_MODE_TYPE_SCALE_LARGE:I = 0xe

.field public static final UI_MODE_TYPE_SCALE_MEDIUM:I = 0xd

.field public static final UI_MODE_TYPE_SCALE_SMALL:I = 0xc

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I = 0x0

.field public static final UI_MODE_TYPE_VR_HEADSET:I = 0x7

.field public static final UI_MODE_TYPE_WATCH:I = 0x6

.field private static final XML_ATTR_APP_BOUNDS:Ljava/lang/String; = "app_bounds"

.field private static final XML_ATTR_COLOR_MODE:Ljava/lang/String; = "clrMod"

.field private static final XML_ATTR_DENSITY:Ljava/lang/String; = "density"

.field private static final XML_ATTR_FONT_SCALE:Ljava/lang/String; = "fs"

.field private static final XML_ATTR_HARD_KEYBOARD_HIDDEN:Ljava/lang/String; = "hardKeyHid"

.field private static final XML_ATTR_KEYBOARD:Ljava/lang/String; = "key"

.field private static final XML_ATTR_KEYBOARD_HIDDEN:Ljava/lang/String; = "keyHid"

.field private static final XML_ATTR_LOCALES:Ljava/lang/String; = "locales"

.field private static final XML_ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final XML_ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final XML_ATTR_NAVIGATION:Ljava/lang/String; = "nav"

.field private static final XML_ATTR_NAVIGATION_HIDDEN:Ljava/lang/String; = "navHid"

.field private static final XML_ATTR_ORIENTATION:Ljava/lang/String; = "ori"

.field private static final XML_ATTR_ROTATION:Ljava/lang/String; = "rot"

.field private static final XML_ATTR_SCREEN_HEIGHT:Ljava/lang/String; = "height"

.field private static final XML_ATTR_SCREEN_LAYOUT:Ljava/lang/String; = "scrLay"

.field private static final XML_ATTR_SCREEN_WIDTH:Ljava/lang/String; = "width"

.field private static final XML_ATTR_SMALLEST_WIDTH:Ljava/lang/String; = "sw"

.field private static final XML_ATTR_TOUCHSCREEN:Ljava/lang/String; = "touch"

.field private static final XML_ATTR_UI_MODE:Ljava/lang/String; = "ui"


# instance fields
.field public assetsSeq:I

.field public colorMode:I

.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public densityDpi:I

.field public extraConfig:Lnubia/content/res/ExtraConfiguration;

.field public fontScale:F

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mLocaleList:Landroid/os/LocaleList;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public seq:I

.field public smallestScreenWidthDp:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z

.field public final windowConfiguration:Landroid/app/WindowConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 1763
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 905
    new-instance v0, Lnubia/content/res/ExtraConfiguration;

    invoke-direct {v0}, Lnubia/content/res/ExtraConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    .line 908
    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    .line 909
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "o"    # Landroid/content/res/Configuration;

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 917
    new-instance v0, Lnubia/content/res/ExtraConfiguration;

    invoke-direct {v0}, Lnubia/content/res/ExtraConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    .line 920
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 921
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1780
    new-instance v0, Lnubia/content/res/ExtraConfiguration;

    invoke-direct {v0}, Lnubia/content/res/ExtraConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    .line 1783
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 1784
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/res/Configuration$1;

    .line 86
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static configurationDiffToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "diff"    # I

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 412
    const-string v1, "CONFIG_MCC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 415
    const-string v1, "CONFIG_MNC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 418
    const-string v1, "CONFIG_LOCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 421
    const-string v1, "CONFIG_TOUCHSCREEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 424
    const-string v1, "CONFIG_KEYBOARD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    .line 427
    const-string v1, "CONFIG_KEYBOARD_HIDDEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    .line 430
    const-string v1, "CONFIG_NAVIGATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    .line 433
    const-string v1, "CONFIG_ORIENTATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    .line 436
    const-string v1, "CONFIG_SCREEN_LAYOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_8
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_9

    .line 439
    const-string v1, "CONFIG_COLOR_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_9
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_a

    .line 442
    const-string v1, "CONFIG_UI_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_a
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_b

    .line 445
    const-string v1, "CONFIG_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_b
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_c

    .line 448
    const-string v1, "CONFIG_SMALLEST_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_c
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_d

    .line 451
    const-string v1, "CONFIG_LAYOUT_DIRECTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_d
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_e

    .line 454
    const-string v1, "CONFIG_FONT_SCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_e
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    .line 457
    const-string v1, "CONFIG_ASSETS_PATHS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 460
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 460
    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_11

    .line 461
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    add-int/lit8 v4, v3, -0x1

    if-eq v2, v4, :cond_10

    .line 463
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_11
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private fixUpLocaleList()V
    .locals 4

    .line 926
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 927
    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 928
    :cond_1
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_0
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 930
    :cond_3
    return-void
.end method

.method public static generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 3
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "change"    # Landroid/content/res/Configuration;

    .line 2373
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 2374
    .local v0, "delta":Landroid/content/res/Configuration;
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 2375
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2378
    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1

    .line 2379
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    .line 2382
    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2

    .line 2383
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, v0, Landroid/content/res/Configuration;->mnc:I

    .line 2386
    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2387
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2388
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2389
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2390
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2393
    :cond_3
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_4

    .line 2394
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 2397
    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_5

    .line 2398
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 2401
    :cond_5
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_6

    .line 2402
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2405
    :cond_6
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_7

    .line 2406
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    iput v1, v0, Landroid/content/res/Configuration;->navigation:I

    .line 2409
    :cond_7
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_8

    .line 2410
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2413
    :cond_8
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_9

    .line 2414
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2417
    :cond_9
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_a

    .line 2419
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2422
    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_b

    .line 2424
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2427
    :cond_b
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_c

    .line 2429
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2432
    :cond_c
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    if-eq v1, v2, :cond_d

    .line 2434
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2437
    :cond_d
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eq v1, v2, :cond_e

    .line 2439
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 2442
    :cond_e
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eq v1, v2, :cond_f

    .line 2444
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 2447
    :cond_f
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_10

    .line 2448
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 2451
    :cond_10
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_11

    .line 2452
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 2455
    :cond_11
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_12

    .line 2456
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2459
    :cond_12
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_13

    .line 2460
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2463
    :cond_13
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_14

    .line 2464
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2467
    :cond_14
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_15

    .line 2468
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2471
    :cond_15
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v2, :cond_16

    .line 2472
    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2475
    :cond_16
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2476
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 2480
    :cond_17
    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget v1, v1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget v2, v2, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    if-eq v1, v2, :cond_18

    .line 2482
    iget-object v1, v0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    invoke-virtual {v1, v2}, Lnubia/content/res/ExtraConfiguration;->setTo(Lnubia/content/res/ExtraConfiguration;)V

    .line 2485
    :cond_18
    return-object v0
.end method

.method private static getScreenLayoutNoDirection(I)I
    .locals 1
    .param p0, "screenLayout"    # I

    .line 1996
    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;
    .locals 9
    .param p0, "locs"    # Landroid/os/LocaleList;

    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2039
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 2040
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 2041
    .local v2, "loc":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 2042
    .local v3, "l":I
    if-nez v3, :cond_0

    .line 2043
    goto/16 :goto_1

    .line 2045
    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 2046
    .local v4, "s":I
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 2047
    .local v5, "c":I
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 2050
    .local v6, "v":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 2051
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2053
    :cond_1
    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_3

    :cond_2
    if-nez v6, :cond_3

    .line 2055
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    if-ne v5, v7, :cond_6

    .line 2057
    const-string v7, "-r"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2060
    :cond_3
    const-string v7, "b+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2061
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    if-eqz v4, :cond_4

    .line 2063
    const-string v7, "+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    :cond_4
    if-eqz v5, :cond_5

    .line 2067
    const-string v7, "+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2070
    :cond_5
    if-eqz v6, :cond_6

    .line 2071
    const-string v7, "+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    .end local v2    # "loc":Ljava/util/Locale;
    .end local v3    # "l":I
    .end local v4    # "s":I
    .end local v5    # "c":I
    .end local v6    # "v":I
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2076
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static needNewResources(II)Z
    .locals 2
    .param p0, "configChanges"    # I
    .param p1, "interestingChanges"    # I

    .line 1636
    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    or-int p1, v0, v1

    .line 1643
    and-int v0, p0, p1

    if-nez v0, :cond_1

    .line 1644
    invoke-static {p0}, Lnubia/content/res/ExtraConfiguration;->needNewResources(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1643
    :goto_1
    return v0
.end method

.method public static readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "configOut"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2519
    const-string v0, "fs"

    .line 2520
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 2519
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2521
    const-string/jumbo v0, "mcc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mcc:I

    .line 2522
    const-string/jumbo v0, "mnc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mnc:I

    .line 2524
    const-string/jumbo v0, "locales"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2525
    .local v0, "localesStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2526
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2528
    const-string/jumbo v2, "touch"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 2530
    const-string/jumbo v2, "key"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 2532
    const-string/jumbo v2, "keyHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2534
    const-string v2, "hardKeyHid"

    .line 2535
    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2537
    const-string/jumbo v2, "nav"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigation:I

    .line 2539
    const-string/jumbo v2, "navHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2541
    const-string/jumbo v2, "ori"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2543
    const-string/jumbo v2, "scrLay"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2545
    const-string v2, "clrMod"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 2547
    const-string/jumbo v2, "ui"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 2548
    const-string/jumbo v2, "width"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2550
    const-string v2, "height"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2552
    const-string/jumbo v2, "sw"

    .line 2553
    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2555
    const-string v2, "density"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 2560
    return-void
.end method

.method public static reduceScreenLayout(III)I
    .locals 6
    .param p0, "curLayout"    # I
    .param p1, "longSizeDp"    # I
    .param p2, "shortSizeDp"    # I

    .line 355
    const/4 v0, 0x0

    const/16 v1, 0x1d6

    if-ge p1, v1, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 359
    .local v0, "screenLayoutSize":I
    const/4 v1, 0x0

    .line 360
    .local v1, "screenLayoutLong":Z
    const/4 v2, 0x0

    .line 389
    .local v2, "screenLayoutCompatNeeded":Z
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_4

    .line 363
    .end local v0    # "screenLayoutSize":I
    .end local v1    # "screenLayoutLong":Z
    .end local v2    # "screenLayoutCompatNeeded":Z
    :cond_0
    const/16 v1, 0x3c0

    if-lt p1, v1, :cond_1

    const/16 v1, 0x2d0

    if-lt p2, v1, :cond_1

    .line 366
    const/4 v1, 0x4

    .local v1, "screenLayoutSize":I
    :goto_0
    goto :goto_1

    .line 367
    .end local v1    # "screenLayoutSize":I
    :cond_1
    const/16 v1, 0x280

    if-lt p1, v1, :cond_2

    const/16 v1, 0x1e0

    if-lt p2, v1, :cond_2

    .line 370
    const/4 v1, 0x3

    goto :goto_0

    .line 372
    :cond_2
    const/4 v1, 0x2

    .line 378
    .restart local v1    # "screenLayoutSize":I
    :goto_1
    const/16 v2, 0x141

    if-gt p2, v2, :cond_4

    const/16 v2, 0x23a

    if-le p1, v2, :cond_3

    goto :goto_2

    .line 381
    :cond_3
    move v2, v0

    goto :goto_3

    .line 379
    :cond_4
    :goto_2
    const/4 v2, 0x1

    .line 381
    .restart local v2    # "screenLayoutCompatNeeded":Z
    :goto_3
    nop

    .line 385
    mul-int/lit8 v3, p1, 0x3

    div-int/lit8 v3, v3, 0x5

    add-int/lit8 v4, p2, -0x1

    if-lt v3, v4, :cond_5

    .line 387
    const/4 v0, 0x1

    .local v0, "screenLayoutLong":Z
    goto :goto_4

    .line 389
    .end local v0    # "screenLayoutLong":Z
    :cond_5
    nop

    .line 395
    .restart local v0    # "screenLayoutLong":Z
    :goto_4
    if-nez v0, :cond_6

    .line 396
    and-int/lit8 v3, p0, -0x31

    or-int/lit8 p0, v3, 0x10

    .line 398
    :cond_6
    if-eqz v2, :cond_7

    .line 399
    const/high16 v3, 0x10000000

    or-int/2addr p0, v3

    .line 401
    :cond_7
    and-int/lit8 v3, p0, 0xf

    .line 402
    .local v3, "curSize":I
    if-ge v1, v3, :cond_8

    .line 403
    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v1

    .line 405
    :cond_8
    return p0
.end method

.method public static resetScreenLayout(I)I
    .locals 1
    .param p0, "curLayout"    # I

    .line 340
    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public static resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 2087
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 5
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 2097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2099
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_0

    .line 2100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2101
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_0

    .line 2102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2106
    :cond_0
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2107
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v1}, Landroid/content/res/Configuration;->localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v1

    .line 2108
    .local v1, "resourceQualifier":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2113
    .end local v1    # "resourceQualifier":Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    const/16 v2, 0x40

    if-eq v1, v2, :cond_3

    const/16 v2, 0x80

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 2118
    :cond_2
    const-string/jumbo v1, "ldrtl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2119
    goto :goto_0

    .line 2115
    :cond_3
    const-string/jumbo v1, "ldltr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2116
    nop

    .line 2124
    :goto_0
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_4

    .line 2125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2128
    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_5

    .line 2129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2132
    :cond_5
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_6

    .line 2133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2136
    :cond_6
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 2147
    :pswitch_0
    const-string/jumbo v1, "xlarge"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2148
    goto :goto_1

    .line 2144
    :pswitch_1
    const-string/jumbo v1, "large"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2145
    goto :goto_1

    .line 2141
    :pswitch_2
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2142
    goto :goto_1

    .line 2138
    :pswitch_3
    const-string/jumbo v1, "small"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2139
    nop

    .line 2153
    :goto_1
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    const/16 v3, 0x10

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_7

    goto :goto_2

    .line 2155
    :cond_7
    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2156
    goto :goto_2

    .line 2158
    :cond_8
    const-string/jumbo v1, "notlong"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2159
    nop

    .line 2164
    :goto_2
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    const/16 v4, 0x100

    if-eq v1, v4, :cond_a

    const/16 v4, 0x200

    if-eq v1, v4, :cond_9

    goto :goto_3

    .line 2166
    :cond_9
    const-string/jumbo v1, "round"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2167
    goto :goto_3

    .line 2169
    :cond_a
    const-string/jumbo v1, "notround"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2170
    nop

    .line 2175
    :goto_3
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    const/4 v4, 0x4

    if-eq v1, v4, :cond_c

    const/16 v4, 0x8

    if-eq v1, v4, :cond_b

    goto :goto_4

    .line 2177
    :cond_b
    const-string v1, "highdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2178
    goto :goto_4

    .line 2180
    :cond_c
    const-string/jumbo v1, "lowdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2181
    nop

    .line 2186
    :goto_4
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    const/4 v4, 0x3

    and-int/2addr v1, v4

    packed-switch v1, :pswitch_data_1

    goto :goto_5

    .line 2188
    :pswitch_4
    const-string/jumbo v1, "widecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2189
    goto :goto_5

    .line 2191
    :pswitch_5
    const-string/jumbo v1, "nowidecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2192
    nop

    .line 2197
    :goto_5
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_2

    goto :goto_6

    .line 2199
    :pswitch_6
    const-string/jumbo v1, "land"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2200
    goto :goto_6

    .line 2202
    :pswitch_7
    const-string/jumbo v1, "port"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2203
    nop

    .line 2208
    :goto_6
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_3

    goto :goto_7

    .line 2225
    :pswitch_8
    const-string/jumbo v1, "vrheadset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2226
    goto :goto_7

    .line 2222
    :pswitch_9
    const-string/jumbo v1, "watch"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2223
    goto :goto_7

    .line 2210
    :pswitch_a
    const-string v1, "appliance"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2211
    goto :goto_7

    .line 2216
    :pswitch_b
    const-string/jumbo v1, "television"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2217
    goto :goto_7

    .line 2219
    :pswitch_c
    const-string v1, "car"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2220
    goto :goto_7

    .line 2213
    :pswitch_d
    const-string v1, "desk"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2214
    nop

    .line 2231
    :goto_7
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-eq v1, v3, :cond_e

    if-eq v1, v2, :cond_d

    goto :goto_8

    .line 2233
    :cond_d
    const-string/jumbo v1, "night"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2234
    goto :goto_8

    .line 2236
    :cond_e
    const-string/jumbo v1, "notnight"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2237
    nop

    .line 2242
    :goto_8
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_16

    const/16 v2, 0x78

    if-eq v1, v2, :cond_15

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_14

    const/16 v2, 0xd5

    if-eq v1, v2, :cond_13

    const/16 v2, 0xf0

    if-eq v1, v2, :cond_12

    const/16 v2, 0x140

    if-eq v1, v2, :cond_11

    const/16 v2, 0x1e0

    if-eq v1, v2, :cond_10

    const/16 v2, 0x280

    if-eq v1, v2, :cond_f

    packed-switch v1, :pswitch_data_4

    .line 2273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2270
    :pswitch_e
    const-string/jumbo v1, "nodpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2271
    goto :goto_9

    .line 2267
    :pswitch_f
    const-string v1, "anydpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2268
    goto :goto_9

    .line 2264
    :cond_f
    const-string/jumbo v1, "xxxhdpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2265
    goto :goto_9

    .line 2261
    :cond_10
    const-string/jumbo v1, "xxhdpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2262
    goto :goto_9

    .line 2258
    :cond_11
    const-string/jumbo v1, "xhdpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2259
    goto :goto_9

    .line 2255
    :cond_12
    const-string v1, "hdpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2256
    goto :goto_9

    .line 2252
    :cond_13
    const-string/jumbo v1, "tvdpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2253
    goto :goto_9

    .line 2249
    :cond_14
    const-string/jumbo v1, "mdpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2250
    goto :goto_9

    .line 2246
    :cond_15
    const-string/jumbo v1, "ldpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2247
    goto :goto_9

    .line 2244
    :cond_16
    nop

    .line 2277
    :goto_9
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    if-eq v1, v4, :cond_17

    goto :goto_a

    .line 2282
    :cond_17
    const-string v1, "finger"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2283
    goto :goto_a

    .line 2279
    :cond_18
    const-string/jumbo v1, "notouch"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2280
    nop

    .line 2288
    :goto_a
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v1, :pswitch_data_5

    goto :goto_b

    .line 2296
    :pswitch_10
    const-string/jumbo v1, "keyssoft"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2297
    goto :goto_b

    .line 2293
    :pswitch_11
    const-string/jumbo v1, "keyshidden"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2294
    goto :goto_b

    .line 2290
    :pswitch_12
    const-string/jumbo v1, "keysexposed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2291
    nop

    .line 2302
    :goto_b
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v1, :pswitch_data_6

    goto :goto_c

    .line 2310
    :pswitch_13
    const-string v1, "12key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2311
    goto :goto_c

    .line 2307
    :pswitch_14
    const-string/jumbo v1, "qwerty"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2308
    goto :goto_c

    .line 2304
    :pswitch_15
    const-string/jumbo v1, "nokeys"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2305
    nop

    .line 2316
    :goto_c
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v1, :pswitch_data_7

    goto :goto_d

    .line 2321
    :pswitch_16
    const-string/jumbo v1, "navhidden"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2322
    goto :goto_d

    .line 2318
    :pswitch_17
    const-string/jumbo v1, "navexposed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2319
    nop

    .line 2327
    :goto_d
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v1, :pswitch_data_8

    goto :goto_e

    .line 2338
    :pswitch_18
    const-string/jumbo v1, "wheel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2339
    goto :goto_e

    .line 2335
    :pswitch_19
    const-string/jumbo v1, "trackball"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2336
    goto :goto_e

    .line 2332
    :pswitch_1a
    const-string v1, "dpad"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2333
    goto :goto_e

    .line 2329
    :pswitch_1b
    const-string/jumbo v1, "nonav"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2330
    nop

    .line 2344
    :goto_e
    if-eqz p1, :cond_1a

    .line 2346
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v1, v2, :cond_19

    .line 2347
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2348
    .local v1, "width":I
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2348
    .local v2, "height":I
    goto :goto_f

    .line 2351
    .end local v1    # "width":I
    .end local v2    # "height":I
    :cond_19
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2353
    .restart local v1    # "width":I
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2355
    .restart local v2    # "height":I
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2358
    .end local v1    # "width":I
    .end local v2    # "height":I
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2359
    const-string v1, "-"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xfffe
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method public static uiModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "uiMode"    # I

    .line 1201
    packed-switch p0, :pswitch_data_0

    .line 1219
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1217
    :pswitch_0
    const-string v0, "UI_MODE_TYPE_VR_HEADSET"

    return-object v0

    .line 1215
    :pswitch_1
    const-string v0, "UI_MODE_TYPE_WATCH"

    return-object v0

    .line 1213
    :pswitch_2
    const-string v0, "UI_MODE_TYPE_APPLIANCE"

    return-object v0

    .line 1211
    :pswitch_3
    const-string v0, "UI_MODE_TYPE_TELEVISION"

    return-object v0

    .line 1209
    :pswitch_4
    const-string v0, "UI_MODE_TYPE_CAR"

    return-object v0

    .line 1207
    :pswitch_5
    const-string v0, "UI_MODE_TYPE_DESK"

    return-object v0

    .line 1205
    :pswitch_6
    const-string v0, "UI_MODE_TYPE_NORMAL"

    return-object v0

    .line 1203
    :pswitch_7
    const-string v0, "UI_MODE_TYPE_UNDEFINED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2573
    const-string v0, "fs"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2574
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2573
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2575
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v0, :cond_0

    .line 2576
    const-string/jumbo v0, "mcc"

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2578
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v0, :cond_1

    .line 2579
    const-string/jumbo v0, "mnc"

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2581
    :cond_1
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2582
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2583
    const-string/jumbo v0, "locales"

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2585
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v0, :cond_3

    .line 2586
    const-string/jumbo v0, "touch"

    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2588
    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v0, :cond_4

    .line 2589
    const-string/jumbo v0, "key"

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2591
    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v0, :cond_5

    .line 2592
    const-string/jumbo v0, "keyHid"

    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2594
    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v0, :cond_6

    .line 2595
    const-string v0, "hardKeyHid"

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2598
    :cond_6
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v0, :cond_7

    .line 2599
    const-string/jumbo v0, "nav"

    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2601
    :cond_7
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v0, :cond_8

    .line 2602
    const-string/jumbo v0, "navHid"

    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2604
    :cond_8
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v0, :cond_9

    .line 2605
    const-string/jumbo v0, "ori"

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2607
    :cond_9
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v0, :cond_a

    .line 2608
    const-string/jumbo v0, "scrLay"

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2610
    :cond_a
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    if-eqz v0, :cond_b

    .line 2611
    const-string v0, "clrMod"

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2613
    :cond_b
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v0, :cond_c

    .line 2614
    const-string/jumbo v0, "ui"

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2616
    :cond_c
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v0, :cond_d

    .line 2617
    const-string/jumbo v0, "width"

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2619
    :cond_d
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v0, :cond_e

    .line 2620
    const-string v0, "height"

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2622
    :cond_e
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v0, :cond_f

    .line 2623
    const-string/jumbo v0, "sw"

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2625
    :cond_f
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_10

    .line 2626
    const-string v0, "density"

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2631
    :cond_10
    return-void
.end method


# virtual methods
.method public clearLocales()V
    .locals 1

    .line 1961
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1962
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1963
    return-void
.end method

.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 9
    .param p1, "that"    # Landroid/content/res/Configuration;

    .line 1788
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1789
    .local v0, "a":F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1790
    .local v1, "b":F
    cmpg-float v2, v0, v1

    const/4 v3, -0x1

    if-gez v2, :cond_0

    return v3

    .line 1791
    :cond_0
    cmpl-float v2, v0, v1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    return v4

    .line 1792
    :cond_1
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v5, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int/2addr v2, v5

    .line 1793
    .local v2, "n":I
    if-eqz v2, :cond_2

    return v2

    .line 1794
    :cond_2
    iget v5, p0, Landroid/content/res/Configuration;->mnc:I

    iget v6, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int/2addr v5, v6

    .line 1795
    .end local v2    # "n":I
    .local v5, "n":I
    if-eqz v5, :cond_3

    return v5

    .line 1797
    :cond_3
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1798
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1801
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1802
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    return v4

    .line 1803
    :cond_4
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1804
    return v3

    .line 1806
    :cond_5
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1807
    .local v2, "minSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_a

    .line 1808
    iget-object v4, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v4, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    .line 1809
    .local v4, "thisLocale":Ljava/util/Locale;
    iget-object v6, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v6, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    .line 1810
    .local v6, "thatLocale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 1811
    if-eqz v5, :cond_6

    return v5

    .line 1812
    :cond_6
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 1813
    if-eqz v5, :cond_7

    return v5

    .line 1814
    :cond_7
    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 1815
    if-eqz v5, :cond_8

    return v5

    .line 1816
    :cond_8
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 1817
    if-eqz v5, :cond_9

    return v5

    .line 1807
    .end local v4    # "thisLocale":Ljava/util/Locale;
    .end local v6    # "thatLocale":Ljava/util/Locale;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1819
    .end local v3    # "i":I
    :cond_a
    iget-object v3, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    iget-object v4, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v4

    sub-int v5, v3, v4

    .line 1820
    if-eqz v5, :cond_b

    return v5

    .line 1823
    .end local v2    # "minSize":I
    :cond_b
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int/2addr v2, v3

    .line 1824
    .end local v5    # "n":I
    .local v2, "n":I
    if-eqz v2, :cond_c

    return v2

    .line 1825
    :cond_c
    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int/2addr v3, v4

    .line 1826
    .end local v2    # "n":I
    .local v3, "n":I
    if-eqz v3, :cond_d

    return v3

    .line 1827
    :cond_d
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int/2addr v2, v4

    .line 1828
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_e

    return v2

    .line 1829
    :cond_e
    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int/2addr v3, v4

    .line 1830
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_f

    return v3

    .line 1831
    :cond_f
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int/2addr v2, v4

    .line 1832
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_10

    return v2

    .line 1833
    :cond_10
    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int/2addr v3, v4

    .line 1834
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_11

    return v3

    .line 1835
    :cond_11
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int/2addr v2, v4

    .line 1836
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_12

    return v2

    .line 1837
    :cond_12
    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    iget v4, p1, Landroid/content/res/Configuration;->colorMode:I

    sub-int/2addr v3, v4

    .line 1838
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_13

    return v3

    .line 1839
    :cond_13
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int/2addr v2, v4

    .line 1840
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_14

    return v2

    .line 1841
    :cond_14
    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int/2addr v3, v4

    .line 1842
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_15

    return v3

    .line 1843
    :cond_15
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int/2addr v2, v4

    .line 1844
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_16

    return v2

    .line 1845
    :cond_16
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int/2addr v3, v4

    .line 1846
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_17

    return v3

    .line 1847
    :cond_17
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int/2addr v2, v4

    .line 1848
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_18

    return v2

    .line 1849
    :cond_18
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int/2addr v3, v4

    .line 1850
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_19

    return v3

    .line 1851
    :cond_19
    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v4, p1, Landroid/content/res/Configuration;->assetsSeq:I

    sub-int/2addr v2, v4

    .line 1852
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_1a

    return v2

    .line 1853
    :cond_1a
    iget-object v3, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v2

    .line 1854
    if-eqz v2, :cond_1b

    return v2

    .line 1860
    :cond_1b
    if-eqz v2, :cond_1c

    .line 1861
    return v2

    .line 1862
    :cond_1c
    iget-object v3, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-object v4, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    invoke-virtual {v3, v4}, Lnubia/content/res/ExtraConfiguration;->compareTo(Lnubia/content/res/ExtraConfiguration;)I

    move-result v2

    .line 1865
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 86
    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    .line 1684
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .locals 1
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 1491
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;ZZ)I
    .locals 6
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "compareUndefined"    # Z
    .param p3, "publicOnly"    # Z

    .line 1512
    const/4 v0, 0x0

    .line 1513
    .local v0, "changed":I
    if-nez p2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 1514
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 1516
    :cond_1
    if-nez p2, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_3

    .line 1517
    or-int/lit8 v0, v0, 0x1

    .line 1519
    :cond_3
    if-nez p2, :cond_4

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_5

    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_5

    .line 1520
    or-int/lit8 v0, v0, 0x2

    .line 1522
    :cond_5
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1523
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1524
    if-nez p2, :cond_6

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1525
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1526
    or-int/lit8 v0, v0, 0x4

    .line 1527
    or-int/lit16 v0, v0, 0x2000

    .line 1529
    :cond_7
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    .line 1530
    .local v1, "deltaScreenLayoutDir":I
    if-nez p2, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_9

    .line 1532
    or-int/lit16 v0, v0, 0x2000

    .line 1534
    :cond_9
    if-nez p2, :cond_a

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_b

    :cond_a
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_b

    .line 1536
    or-int/lit8 v0, v0, 0x8

    .line 1538
    :cond_b
    if-nez p2, :cond_c

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_d

    :cond_c
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_d

    .line 1540
    or-int/lit8 v0, v0, 0x10

    .line 1542
    :cond_d
    if-nez p2, :cond_e

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_f

    :cond_e
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_f

    .line 1544
    or-int/lit8 v0, v0, 0x20

    .line 1546
    :cond_f
    if-nez p2, :cond_10

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_11

    :cond_10
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_11

    .line 1548
    or-int/lit8 v0, v0, 0x20

    .line 1550
    :cond_11
    if-nez p2, :cond_12

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_13

    :cond_12
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_13

    .line 1552
    or-int/lit8 v0, v0, 0x40

    .line 1554
    :cond_13
    if-nez p2, :cond_14

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_15

    :cond_14
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_15

    .line 1556
    or-int/lit8 v0, v0, 0x20

    .line 1558
    :cond_15
    if-nez p2, :cond_16

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_17

    :cond_16
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_17

    .line 1560
    or-int/lit16 v0, v0, 0x80

    .line 1562
    :cond_17
    if-nez p2, :cond_18

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1564
    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 1565
    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eq v2, v3, :cond_19

    .line 1566
    or-int/lit16 v0, v0, 0x100

    .line 1568
    :cond_19
    if-nez p2, :cond_1a

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_1b

    :cond_1a
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    if-eq v2, v3, :cond_1b

    .line 1572
    or-int/lit16 v0, v0, 0x4000

    .line 1574
    :cond_1b
    if-nez p2, :cond_1c

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_1d

    :cond_1c
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    if-eq v2, v3, :cond_1d

    .line 1579
    or-int/lit16 v0, v0, 0x4000

    .line 1581
    :cond_1d
    if-nez p2, :cond_1e

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_1f

    :cond_1e
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v3, :cond_1f

    .line 1583
    or-int/lit16 v0, v0, 0x200

    .line 1585
    :cond_1f
    if-nez p2, :cond_20

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_21

    :cond_20
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v3, :cond_21

    .line 1587
    or-int/lit16 v0, v0, 0x400

    .line 1589
    :cond_21
    if-nez p2, :cond_22

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_23

    :cond_22
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v3, :cond_23

    .line 1591
    or-int/lit16 v0, v0, 0x400

    .line 1593
    :cond_23
    if-nez p2, :cond_24

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_25

    :cond_24
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v3, :cond_25

    .line 1595
    or-int/lit16 v0, v0, 0x800

    .line 1597
    :cond_25
    if-nez p2, :cond_26

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_27

    :cond_26
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_27

    .line 1599
    or-int/lit16 v0, v0, 0x1000

    .line 1601
    :cond_27
    if-nez p2, :cond_28

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v2, :cond_29

    :cond_28
    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v2, v3, :cond_29

    .line 1603
    const/high16 v2, -0x80000000

    or-int/2addr v0, v2

    .line 1607
    :cond_29
    if-nez p3, :cond_2a

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1608
    invoke-virtual {v2, v3, p2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2a

    .line 1609
    const/high16 v2, 0x20000000

    or-int/2addr v0, v2

    .line 1614
    :cond_2a
    iget-object v2, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-object v3, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    invoke-virtual {v2, v3}, Lnubia/content/res/ExtraConfiguration;->diff(Lnubia/content/res/ExtraConfiguration;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1617
    return v0
.end method

.method public diffPublicOnly(Landroid/content/res/Configuration;)I
    .locals 2
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 1503
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .locals 3
    .param p1, "that"    # Landroid/content/res/Configuration;

    .line 1869
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1870
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 1871
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .line 1876
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1877
    :catch_0
    move-exception v0

    .line 1879
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 2

    .line 1973
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 1974
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1973
    :goto_0
    return v0
.end method

.method public getLocales()Landroid/os/LocaleList;
    .locals 1

    .line 1918
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1919
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1883
    const/16 v0, 0x11

    .line 1884
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 1885
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    add-int/2addr v0, v3

    .line 1886
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    add-int/2addr v2, v3

    .line 1887
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 1888
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int/2addr v2, v3

    .line 1889
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int/2addr v0, v3

    .line 1890
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int/2addr v2, v3

    .line 1891
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int/2addr v0, v3

    .line 1892
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    add-int/2addr v2, v3

    .line 1893
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int/2addr v0, v3

    .line 1894
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    add-int/2addr v2, v3

    .line 1895
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int/2addr v0, v3

    .line 1896
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    add-int/2addr v2, v3

    .line 1897
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int/2addr v0, v3

    .line 1898
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/2addr v2, v3

    .line 1899
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int/2addr v0, v3

    .line 1900
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int/2addr v2, v3

    .line 1901
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int/2addr v0, v3

    .line 1902
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    add-int/2addr v1, v2

    .line 1905
    .end local v0    # "result":I
    .local v1, "result":I
    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    invoke-virtual {v0}, Lnubia/content/res/ExtraConfiguration;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1908
    return v1
.end method

.method public isLayoutSizeAtLeast(I)Z
    .locals 2
    .param p1, "size"    # I

    .line 481
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 482
    .local v0, "cur":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 483
    :cond_0
    if-lt v0, p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .locals 4
    .param p1, "other"    # Landroid/content/res/Configuration;

    .line 1657
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1659
    return v0

    .line 1661
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1664
    return v2

    .line 1666
    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-nez v1, :cond_2

    .line 1669
    return v2

    .line 1671
    :cond_2
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    sub-int/2addr v1, v3

    .line 1672
    .local v1, "diff":I
    const/high16 v3, 0x10000

    if-le v1, v3, :cond_3

    .line 1675
    return v0

    .line 1677
    :cond_3
    if-lez v1, :cond_4

    move v0, v2

    nop

    :cond_4
    return v0
.end method

.method public isScreenHdr()Z
    .locals 2

    .line 2030
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenRound()Z
    .locals 2

    .line 2006
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0x300

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenWideColorGamut()Z
    .locals 2

    .line 2021
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1267
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1268
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1728
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1729
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1730
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1732
    const-class v0, Landroid/os/LocaleList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1733
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1735
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1736
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1737
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1738
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1739
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1740
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1741
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1744
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1745
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1746
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1747
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1748
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1749
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1751
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1752
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1753
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 1754
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1758
    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    invoke-virtual {v0, p1}, Lnubia/content/res/ExtraConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 1761
    return-void
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 1990
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v1, v0

    .line 1991
    .local v1, "layoutDirection":I
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, -0xc1

    shl-int/lit8 v2, v1, 0x6

    or-int/2addr v0, v2

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1993
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 1952
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1953
    return-void
.end method

.method public setLocales(Landroid/os/LocaleList;)V
    .locals 2
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 1934
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1935
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1936
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1937
    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "o"    # Landroid/content/res/Configuration;

    .line 938
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 939
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 940
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 941
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    :goto_0
    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 942
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 943
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 944
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 945
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 946
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 947
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 948
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 949
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 950
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 951
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 952
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 953
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 954
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 955
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 956
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 957
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 958
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 959
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 960
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 961
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 962
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 963
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 964
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 967
    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    invoke-virtual {v0, v1}, Lnubia/content/res/ExtraConfiguration;->setTo(Lnubia/content/res/ExtraConfiguration;)V

    .line 970
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .line 1227
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1228
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1229
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1230
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1231
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1232
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1233
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1234
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1235
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1236
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1237
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1238
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1239
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1240
    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1241
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1242
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1243
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1244
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1245
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1246
    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1247
    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1248
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 1251
    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    invoke-virtual {v0}, Lnubia/content/res/ExtraConfiguration;->setToDefaults()V

    .line 1254
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 974
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 976
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_0

    .line 978
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 979
    const-string/jumbo v2, "mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 981
    :cond_0
    const-string v2, "?mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_1

    .line 984
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 985
    const-string/jumbo v2, "mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 987
    :cond_1
    const-string v2, "?mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    :goto_1
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 990
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 991
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 994
    :cond_2
    const-string v2, " ?localeList"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    :goto_2
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    .line 997
    .local v2, "layoutDir":I
    if-eqz v2, :cond_5

    const/16 v3, 0x40

    if-eq v2, v3, :cond_4

    if-eq v2, v1, :cond_3

    .line 1001
    const-string v1, " layoutDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    shr-int/lit8 v1, v2, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1000
    :cond_3
    const-string v1, " ldrtl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 999
    :cond_4
    const-string v1, " ldltr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 998
    :cond_5
    const-string v1, " ?layoutDir"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    :goto_3
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_6

    .line 1005
    const-string v1, " sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1007
    :cond_6
    const-string v1, " ?swdp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    :goto_4
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_7

    .line 1010
    const-string v1, " w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1012
    :cond_7
    const-string v1, " ?wdp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    :goto_5
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_8

    .line 1015
    const-string v1, " h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1017
    :cond_8
    const-string v1, " ?hdp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    :goto_6
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_9

    .line 1020
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1022
    :cond_9
    const-string v1, " ?density"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    :goto_7
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_0

    .line 1030
    const-string v1, " layoutSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1029
    :pswitch_0
    const-string v1, " xlrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1028
    :pswitch_1
    const-string v1, " lrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1027
    :pswitch_2
    const-string v1, " nrml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1026
    :pswitch_3
    const-string v1, " smll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1025
    :pswitch_4
    const-string v1, " ?lsize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    :goto_8
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    const/16 v3, 0x20

    const/16 v4, 0x10

    if-eqz v1, :cond_c

    if-eq v1, v4, :cond_b

    if-eq v1, v3, :cond_a

    .line 1037
    const-string v1, " layoutLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1036
    :cond_a
    const-string v1, " long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1035
    :cond_b
    goto :goto_9

    .line 1034
    :cond_c
    const-string v1, " ?long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    :goto_9
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_f

    const/4 v5, 0x4

    if-eq v1, v5, :cond_e

    const/16 v5, 0x8

    if-eq v1, v5, :cond_d

    .line 1044
    const-string v1, " dynamicRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1043
    :cond_d
    const-string v1, " hdr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1042
    :cond_e
    goto :goto_a

    .line 1041
    :cond_f
    const-string v1, " ?ldr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    :goto_a
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_1

    .line 1051
    const-string v1, " wideColorGamut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1050
    :pswitch_5
    const-string v1, " widecg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1049
    :pswitch_6
    goto :goto_b

    .line 1048
    :pswitch_7
    const-string v1, " ?wideColorGamut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    :goto_b
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_2

    .line 1058
    const-string v1, " orien="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1056
    :pswitch_8
    const-string v1, " land"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1057
    :pswitch_9
    const-string v1, " port"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1055
    :pswitch_a
    const-string v1, " ?orien"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    :goto_c
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_3

    .line 1069
    const-string v1, " uimode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1068
    :pswitch_b
    const-string v1, " vrheadset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1067
    :pswitch_c
    const-string v1, " watch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1066
    :pswitch_d
    const-string v1, " appliance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1065
    :pswitch_e
    const-string v1, " television"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1064
    :pswitch_f
    const-string v1, " car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1063
    :pswitch_10
    const-string v1, " desk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1062
    :pswitch_11
    goto :goto_d

    .line 1061
    :pswitch_12
    const-string v1, " ?uimode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :goto_d
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_12

    if-eq v1, v4, :cond_11

    if-eq v1, v3, :cond_10

    .line 1075
    const-string v1, " night="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1074
    :cond_10
    const-string v1, " night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1073
    :cond_11
    goto :goto_e

    .line 1072
    :cond_12
    const-string v1, " ?night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    :goto_e
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v1, :pswitch_data_4

    .line 1082
    const-string v1, " touch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1081
    :pswitch_13
    const-string v1, " finger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1080
    :pswitch_14
    const-string v1, " stylus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1079
    :pswitch_15
    const-string v1, " -touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1078
    :pswitch_16
    const-string v1, " ?touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    :goto_f
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v1, :pswitch_data_5

    .line 1089
    const-string v1, " keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1088
    :pswitch_17
    const-string v1, " 12key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1087
    :pswitch_18
    const-string v1, " qwerty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1086
    :pswitch_19
    const-string v1, " -keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1085
    :pswitch_1a
    const-string v1, " ?keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    :goto_10
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v1, :pswitch_data_6

    .line 1096
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1095
    :pswitch_1b
    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1094
    :pswitch_1c
    const-string v1, "/h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1093
    :pswitch_1d
    const-string v1, "/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1092
    :pswitch_1e
    const-string v1, "/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    :goto_11
    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v1, :pswitch_data_7

    .line 1102
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1101
    :pswitch_1f
    const-string v1, "/h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1100
    :pswitch_20
    const-string v1, "/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1099
    :pswitch_21
    const-string v1, "/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    :goto_12
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v1, :pswitch_data_8

    .line 1110
    const-string v1, " nav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 1109
    :pswitch_22
    const-string v1, " wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 1108
    :pswitch_23
    const-string v1, " tball"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 1107
    :pswitch_24
    const-string v1, " dpad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 1106
    :pswitch_25
    const-string v1, " -nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 1105
    :pswitch_26
    const-string v1, " ?nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    :goto_13
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v1, :pswitch_data_9

    .line 1116
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 1115
    :pswitch_27
    const-string v1, "/h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 1114
    :pswitch_28
    const-string v1, "/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 1113
    :pswitch_29
    const-string v1, "/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :goto_14
    const-string v1, " winConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1119
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_13

    .line 1120
    const-string v1, " as."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1122
    :cond_13
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_14

    .line 1123
    const-string v1, " s."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1127
    :cond_14
    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    invoke-virtual {v1}, Lnubia/content/res/ExtraConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch
.end method

.method public unset()V
    .locals 1

    .line 1261
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1262
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1263
    return-void
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 5
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 1278
    const/4 v0, 0x0

    .line 1279
    .local v0, "changed":I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 1280
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 1281
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1283
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1

    .line 1284
    or-int/lit8 v0, v0, 0x1

    .line 1285
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1287
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2

    .line 1288
    or-int/lit8 v0, v0, 0x2

    .line 1289
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1291
    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1292
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1293
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1294
    or-int/lit8 v0, v0, 0x4

    .line 1295
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1297
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1298
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1300
    or-int/lit16 v0, v0, 0x2000

    .line 1303
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1306
    :cond_3
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    .line 1307
    .local v1, "deltaScreenLayoutDir":I
    if-eqz v1, :cond_4

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_4

    .line 1309
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, -0xc1

    or-int/2addr v2, v1

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1310
    or-int/lit16 v0, v0, 0x2000

    .line 1312
    :cond_4
    iget-boolean v2, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_5

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_6

    .line 1314
    :cond_5
    or-int/lit8 v0, v0, 0x4

    .line 1315
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1317
    :cond_6
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_7

    .line 1319
    or-int/lit8 v0, v0, 0x8

    .line 1320
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1322
    :cond_7
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_8

    .line 1324
    or-int/lit8 v0, v0, 0x10

    .line 1325
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v2, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1327
    :cond_8
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_9

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_9

    .line 1329
    or-int/lit8 v0, v0, 0x20

    .line 1330
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1332
    :cond_9
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_a

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_a

    .line 1334
    or-int/lit8 v0, v0, 0x20

    .line 1335
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1337
    :cond_a
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_b

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_b

    .line 1339
    or-int/lit8 v0, v0, 0x40

    .line 1340
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    iput v2, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1342
    :cond_b
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_c

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_c

    .line 1344
    or-int/lit8 v0, v0, 0x20

    .line 1345
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1347
    :cond_c
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_d

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_d

    .line 1349
    or-int/lit16 v0, v0, 0x80

    .line 1350
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1352
    :cond_d
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_e

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    if-eq v2, v3, :cond_e

    .line 1355
    or-int/lit16 v0, v0, 0x100

    .line 1356
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, -0x10

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1359
    :cond_e
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    if-eqz v2, :cond_f

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x30

    if-eq v2, v3, :cond_f

    .line 1362
    or-int/lit16 v0, v0, 0x100

    .line 1363
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, -0x31

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1366
    :cond_f
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    if-eqz v2, :cond_10

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0x300

    if-eq v2, v3, :cond_10

    .line 1369
    or-int/lit16 v0, v0, 0x100

    .line 1370
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, -0x301

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0x300

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1373
    :cond_10
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/2addr v4, v3

    if-eq v2, v4, :cond_11

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v2, :cond_11

    .line 1376
    or-int/lit16 v0, v0, 0x100

    .line 1377
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    const v4, -0x10000001

    and-int/2addr v2, v4

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1381
    :cond_11
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_12

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    if-eq v2, v3, :cond_12

    .line 1385
    or-int/lit16 v0, v0, 0x4000

    .line 1386
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, -0x4

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1390
    :cond_12
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_13

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    if-eq v2, v3, :cond_13

    .line 1393
    or-int/lit16 v0, v0, 0x4000

    .line 1394
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, -0xd

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1398
    :cond_13
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_15

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v3, :cond_15

    .line 1400
    or-int/lit16 v0, v0, 0x200

    .line 1401
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_14

    .line 1402
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x10

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1405
    :cond_14
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eqz v2, :cond_15

    .line 1406
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1410
    :cond_15
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_16

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v3, :cond_16

    .line 1412
    or-int/lit16 v0, v0, 0x400

    .line 1413
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1415
    :cond_16
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_17

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v3, :cond_17

    .line 1417
    or-int/lit16 v0, v0, 0x400

    .line 1418
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1420
    :cond_17
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_18

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v3, :cond_18

    .line 1422
    or-int/lit16 v0, v0, 0x800

    .line 1423
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1425
    :cond_18
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_19

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_19

    .line 1427
    or-int/lit16 v0, v0, 0x1000

    .line 1428
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1430
    :cond_19
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v2, :cond_1a

    .line 1431
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1433
    :cond_1a
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v2, :cond_1b

    .line 1434
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1436
    :cond_1b
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v2, :cond_1c

    .line 1437
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1439
    :cond_1c
    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v2, :cond_1d

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iget v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v2, v3, :cond_1d

    .line 1440
    const/high16 v2, -0x80000000

    or-int/2addr v0, v2

    .line 1441
    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1443
    :cond_1d
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_1e

    .line 1444
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    iput v2, p0, Landroid/content/res/Configuration;->seq:I

    .line 1446
    :cond_1e
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->updateFrom(Landroid/app/WindowConfiguration;)I

    move-result v2

    if-eqz v2, :cond_1f

    .line 1447
    const/high16 v2, 0x20000000

    or-int/2addr v0, v2

    .line 1452
    :cond_1f
    iget-object v2, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-object v3, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    invoke-virtual {v2, v3}, Lnubia/content/res/ExtraConfiguration;->updateFrom(Lnubia/content/res/ExtraConfiguration;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1456
    return v0
.end method

.method public writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V
    .locals 7
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "metrics"    # Landroid/util/DisplayMetrics;

    .line 1178
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v0, v1, :cond_0

    .line 1179
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1180
    .local v0, "width":I
    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v1, "height":I
    goto :goto_0

    .line 1183
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    iget v0, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1185
    .restart local v0    # "width":I
    iget v1, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1188
    .restart local v1    # "height":I
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1189
    .local v2, "token":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {p0, p1, v4, v5}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1190
    const-wide v4, 0x10d00000002L

    sget v6, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1191
    const-wide v4, 0x10d00000003L

    invoke-virtual {p1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1192
    const-wide v4, 0x10d00000004L

    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1193
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1194
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1688
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1689
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1690
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1692
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1693
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1695
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_0

    .line 1696
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1698
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1700
    :goto_0
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1701
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1702
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1703
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1705
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1707
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1708
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1709
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1710
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1711
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1713
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1714
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1715
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1716
    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1717
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1718
    iget v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1719
    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1722
    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    invoke-virtual {v0, p1, p2}, Lnubia/content/res/ExtraConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1725
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1143
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1144
    .local v0, "token":J
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    const-wide v3, 0x10200000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1145
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    const-wide v3, 0x10d00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1146
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    const-wide v3, 0x10d00000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1147
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/LocaleList;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1148
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    const-wide v3, 0x10d00000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1149
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    const-wide v3, 0x10d00000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1150
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    const-wide v3, 0x10d00000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1151
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    const-wide v3, 0x10d00000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1152
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    const-wide v3, 0x10d00000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1153
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const-wide v3, 0x10d0000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1154
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    const-wide v3, 0x10d0000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1155
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    const-wide v3, 0x10d0000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1156
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    const-wide v3, 0x10d0000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1157
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    const-wide v3, 0x10d0000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1158
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    const-wide v3, 0x10d0000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1159
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    const-wide v3, 0x10d00000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1160
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-wide v3, 0x10d00000011L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1161
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    const-wide v3, 0x10d00000012L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1162
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const-wide v3, 0x10b00000013L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/WindowConfiguration;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1163
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1164
    return-void
.end method

.class public Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;
.super Ljava/lang/Object;
.source "TouchGameKeyMapHelper.java"


# static fields
.field public static final ACTION_SCREEN_CHANGED:Ljava/lang/String; = "cn.nubia.action.SCREEN_CHANGED"

.field public static final ACTION_TOUCH_GAME_KEY_MAP_OPTION:Ljava/lang/String; = "cn.nubia.intent.action.TOUCH_GAME_KEY_MAP_OPTION"

.field private static DEBUG:Z = false

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_DWRG:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_CF:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_DEFAULT:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_SGAME:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_SGAME_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_SM:[Landroid/graphics/Rect;

.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field private static final ENABLE_GAME_LIST:Ljava/lang/String; = "touch_game_key_enable_game_list"

.field private static final GAME_APP_NAME:Ljava/lang/String; = "cn.nubia.gamelauncher"

.field public static final GAME_NETEASE_DWRG:Ljava/lang/String; = "com.netease.dwrg"

.field public static final GAME_NETEASE_HYXD_PRE:Ljava/lang/String; = "com.netease.hyxd"

.field public static final GAME_NETEASE_ZJZ_PRE:Ljava/lang/String; = "com.netease.zjz"

.field public static final GAME_TENCENT_CF:Ljava/lang/String; = "com.tencent.tmgp.cf"

.field public static final GAME_TENCENT_PUBGM:Ljava/lang/String; = "com.tencent.tmgp.pubgm"

.field public static final GAME_TENCENT_PUBGMHD:Ljava/lang/String; = "com.tencent.tmgp.pubgmhd"

.field public static final GAME_TENCENT_SGAME:Ljava/lang/String; = "com.tencent.tmgp.sgame"

.field public static final GAME_TENCENT_SPEEDMOBILE:Ljava/lang/String; = "com.tencent.tmgp.speedmobile"

.field private static final HOME_APP_NAME:Ljava/lang/String; = "cn.nubia.launcher"

.field public static final IS_SUPPORT_SENSITIVITY_ENABLE:Z = false

.field private static final IS_THREE_OR_TWO_FINGER:Ljava/lang/String; = "_touch_game_finger_num"

.field public static final KEY_MAIN_SCREEN:Ljava/lang/String; = "main_"

.field public static final KEY_SECONDARY_SCREEN:Ljava/lang/String; = "secondary_"

.field public static final PRE_TOUCH_GAME_KEY_MAP:Ljava/lang/String; = "touch_game_key_map_"

.field public static final TAG:Ljava/lang/String; = "TouchGameKeyMapHelper"

.field private static final TIP_NUM:Ljava/lang/String; = "touch_tip_num"

.field private static final TOUCH_GAME_KEY_SENSITIVITY_L:Ljava/lang/String; = "_touch_game_key_sensitivity_l"

.field private static final TOUCH_GAME_KEY_SENSITIVITY_L_FILENAME:Ljava/lang/String; = "/sys/devices/platform/soc/884000.i2c/i2c-2/2-0010/L_sensitivity"

.field private static final TOUCH_GAME_KEY_SENSITIVITY_R:Ljava/lang/String; = "_touch_game_key_sensitivity_r"

.field private static final TOUCH_GAME_KEY_SENSITIVITY_R_FILENAME:Ljava/lang/String; = "/sys/devices/platform/soc/884000.i2c/i2c-2/2-0010/R_sensitivity"

.field private static final TOUCH_GAME_KEY_SENSITIVITY_T:Ljava/lang/String; = "_touch_game_key_sensitivity_t"

.field private static final TOUCH_GAME_KEY_SENSITIVITY_T_FILENAME:Ljava/lang/String; = ""

.field private static final TOUCH_HAPTIC_FEED_BACK_ENABLE:Ljava/lang/String; = "_touch_haptic_feed_back"

.field public static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 28
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    .line 46
    const/4 v0, 0x3

    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x55

    const/16 v6, 0xa9

    const/16 v7, 0x253

    const/16 v8, 0x1ff

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x20a

    const/16 v6, 0x25e

    const/16 v9, 0x84d

    const/16 v10, 0x7f9

    invoke-direct {v4, v10, v5, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x4bc

    const/16 v6, 0x468

    const/16 v11, 0x217

    const/16 v12, 0x1c3

    invoke-direct {v4, v6, v12, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x2

    aput-object v4, v3, v13

    sput-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD:[Landroid/graphics/Rect;

    .line 47
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v14, 0x59

    const/16 v15, 0x201

    const/16 v7, 0xad

    const/16 v8, 0x255

    invoke-direct {v4, v14, v15, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x7f2

    const/16 v8, 0x213

    const/16 v14, 0x846

    const/16 v15, 0x267

    invoke-direct {v4, v7, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v12, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v13

    sput-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM:[Landroid/graphics/Rect;

    .line 48
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x3c

    const/16 v8, 0x90

    const/16 v14, 0x27d

    const/16 v15, 0x229

    invoke-direct {v4, v7, v15, v8, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x22f

    const/16 v8, 0x283

    invoke-direct {v4, v10, v7, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v12, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v13

    sput-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD:[Landroid/graphics/Rect;

    .line 49
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x68

    const/16 v8, 0x1e9

    const/16 v9, 0xbc

    const/16 v10, 0x23d

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x7b3

    const/16 v8, 0x1f8

    const/16 v9, 0x807

    const/16 v10, 0x24c

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v12, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v13

    sput-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ:[Landroid/graphics/Rect;

    .line 50
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x6a8

    const/16 v8, 0x6fc

    const/16 v9, 0x27d

    invoke-direct {v4, v7, v15, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x5fa

    const/16 v8, 0x294

    const/16 v9, 0x64e

    const/16 v10, 0x2e8

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v12, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v13

    sput-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_SM:[Landroid/graphics/Rect;

    .line 51
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x741

    const/16 v8, 0x318

    const/16 v9, 0x795

    const/16 v10, 0x36c

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x54e

    const/16 v8, 0x3da

    const/16 v9, 0x5a2

    const/16 v10, 0x42e

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v12, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v13

    sput-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_CF:[Landroid/graphics/Rect;

    .line 52
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x1e

    const/16 v8, 0x1aa

    const/16 v9, 0x72

    const/16 v10, 0x1fe

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x52a

    const/16 v8, 0x39f

    const/16 v9, 0x57e

    const/16 v10, 0x3f3

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v12, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v13

    sput-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_SGAME:[Landroid/graphics/Rect;

    .line 53
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x7df

    const/16 v8, 0x1df

    const/16 v9, 0x833

    const/16 v10, 0x233

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x791

    const/16 v8, 0x35a

    const/16 v9, 0x7e5

    const/16 v10, 0x3ae

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v12, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v13

    sput-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_DWRG:[Landroid/graphics/Rect;

    .line 57
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x56

    const/16 v8, 0x1fe

    const/16 v9, 0xaa

    const/16 v10, 0x252

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x8aa

    const/16 v8, 0x208

    const/16 v9, 0x8fe

    const/16 v10, 0x25c

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Rect;

    const/16 v8, 0x2c8

    const/16 v10, 0x31c

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v13

    sput-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_629:[Landroid/graphics/Rect;

    .line 58
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x5b

    const/16 v8, 0xaf

    const/16 v9, 0x1ff

    const/16 v10, 0x253

    invoke-direct {v4, v7, v9, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x211

    const/16 v8, 0x265

    const/16 v9, 0x8fa

    const/16 v10, 0x8a6

    invoke-direct {v4, v10, v7, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x2bb

    const/16 v8, 0x30f

    invoke-direct {v4, v10, v7, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v13

    sput-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_629:[Landroid/graphics/Rect;

    .line 59
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x4a

    const/16 v8, 0x223

    const/16 v14, 0x9e

    const/16 v15, 0x277

    invoke-direct {v4, v7, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x89e

    const/16 v8, 0x234

    const/16 v14, 0x8f2

    const/16 v15, 0x288

    invoke-direct {v4, v7, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x304

    const/16 v8, 0x358

    invoke-direct {v4, v10, v7, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v13

    sput-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_629:[Landroid/graphics/Rect;

    .line 60
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x6a

    const/16 v8, 0x1eb

    const/16 v9, 0xbe

    const/16 v10, 0x23f

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x842

    const/16 v8, 0x20f

    const/16 v9, 0x896

    const/16 v10, 0x263

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x8a9

    const/16 v8, 0x2a3

    const/16 v9, 0x8fd

    const/16 v10, 0x2f7

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v13

    sput-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_629:[Landroid/graphics/Rect;

    .line 61
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x77

    const/16 v8, 0x1b1

    const/16 v9, 0xcb

    const/16 v10, 0x205

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x595

    const/16 v8, 0x3a0

    const/16 v9, 0x5e9

    const/16 v10, 0x3f4

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    new-instance v4, Landroid/graphics/Rect;

    const/16 v7, 0x1b0

    const/16 v8, 0x12f

    const/16 v9, 0x204

    const/16 v10, 0x183

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v13

    sput-object v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_SGAME_629:[Landroid/graphics/Rect;

    .line 62
    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x37e

    const/16 v7, 0x3d2

    invoke-direct {v3, v4, v12, v7, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v0, v2

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x552

    const/16 v4, 0x5a6

    invoke-direct {v2, v3, v12, v4, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6, v12, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v0, v13

    sput-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_DEFAULT:[Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;
    .locals 7
    .param p0, "rects"    # [Landroid/graphics/Rect;
    .param p1, "rotation"    # I

    .line 190
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .local v0, "sb":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 192
    const-string v1, "TouchGameKeyMapHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildCoordinateString, rect[0] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", rects[1] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v5, p0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", rects[2] = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-object v6, p0, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v3

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v4

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v4

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v5

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v5

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_1
    const-string v1, "TouchGameKeyMapHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildCoordinateString, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static enableGameKeyMap(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 477
    :try_start_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TouchGameKeyMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch gam key-- enableGameKeyMap enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 479
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const-class v1, Landroid/hardware/input/InputManager;

    const-string/jumbo v2, "setFingerprintKeyEnable"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/Context;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 480
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    if-eqz p1, :cond_1

    .line 482
    const-string/jumbo v2, "sys.fp.enable"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_1
    const-string/jumbo v2, "sys.fp.enable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 489
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public static getAndSaveDefaultMainScreenRects(Landroid/content/Context;Ljava/lang/String;I)[Landroid/graphics/Rect;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "rotation"    # I

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "tRects":[Landroid/graphics/Rect;
    invoke-static {}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isNX629V1S()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 293
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_629:[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 295
    :cond_0
    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_629:[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 297
    :cond_1
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_629:[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 299
    :cond_2
    const-string v1, "com.netease.zjz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_629:[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 301
    :cond_3
    const-string v1, "com.tencent.tmgp.sgame"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 302
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_SGAME_629:[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 304
    :cond_4
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_DEFAULT:[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 307
    :cond_5
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "NX629J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 308
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 309
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_629:[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 310
    :cond_6
    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 311
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_629:[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 312
    :cond_7
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 313
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_629:[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 314
    :cond_8
    const-string v1, "com.netease.zjz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 315
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_629:[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 316
    :cond_9
    const-string v1, "com.tencent.tmgp.speedmobile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 317
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_SM:[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 318
    :cond_a
    const-string v1, "com.tencent.tmgp.cf"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 319
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_CF:[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 320
    :cond_b
    const-string v1, "com.tencent.tmgp.sgame"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 321
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_SGAME_629:[Landroid/graphics/Rect;

    goto :goto_0

    .line 322
    :cond_c
    const-string v1, "com.netease.dwrg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 323
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_DWRG:[Landroid/graphics/Rect;

    goto :goto_0

    .line 326
    :cond_d
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 327
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD:[Landroid/graphics/Rect;

    goto :goto_0

    .line 328
    :cond_e
    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 329
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM:[Landroid/graphics/Rect;

    goto :goto_0

    .line 330
    :cond_f
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 331
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD:[Landroid/graphics/Rect;

    goto :goto_0

    .line 332
    :cond_10
    const-string v1, "com.netease.zjz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 333
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ:[Landroid/graphics/Rect;

    goto :goto_0

    .line 334
    :cond_11
    const-string v1, "com.tencent.tmgp.speedmobile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 335
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_SM:[Landroid/graphics/Rect;

    goto :goto_0

    .line 336
    :cond_12
    const-string v1, "com.tencent.tmgp.cf"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 337
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_CF:[Landroid/graphics/Rect;

    goto :goto_0

    .line 338
    :cond_13
    const-string v1, "com.tencent.tmgp.sgame"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 339
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_SGAME:[Landroid/graphics/Rect;

    goto :goto_0

    .line 340
    :cond_14
    const-string v1, "com.netease.dwrg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 341
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_DWRG:[Landroid/graphics/Rect;

    .line 345
    :cond_15
    :goto_0
    invoke-static {v0, p2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "targetPos":Ljava/lang/String;
    const-string/jumbo v2, "main_"

    invoke-static {p0, p1, v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-object v0
.end method

.method public static getFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 705
    const/4 v0, 0x0

    move v1, v0

    .line 707
    .local v1, "isThreeFinger":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_touch_game_finger_num"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 710
    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 711
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1
.end method

.method public static getFloatViewPos(Landroid/content/Context;Ljava/lang/String;)[Landroid/graphics/Rect;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 492
    const-string/jumbo v0, "main_"

    invoke-static {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "positionStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 494
    .local v1, "mMainRects":[Landroid/graphics/Rect;
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 495
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 496
    .local v3, "rotation":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 497
    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v4

    .line 498
    .local v4, "positionSet":[I
    array-length v5, v4

    const/16 v6, 0xd

    if-ge v5, v6, :cond_0

    .line 499
    const-string v5, "TouchGameKeyMapHelper"

    const-string v6, " getFloatViewPos positionSet.length < 13"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    sget-object v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_DEFAULT:[Landroid/graphics/Rect;

    goto :goto_0

    .line 502
    :cond_0
    const-string/jumbo v5, "main_"

    invoke-static {v4, v5}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v1

    .line 505
    :goto_0
    return-object v1

    .line 507
    .end local v4    # "positionSet":[I
    :cond_1
    sget-object v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_DEFAULT:[Landroid/graphics/Rect;

    .line 508
    return-object v1
.end method

.method public static getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "positionStr":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "touch_game_key_map_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 170
    :cond_0
    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getGameKeyState(Landroid/content/Context;)Z
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .line 618
    const/4 v0, 0x0

    .line 620
    .local v0, "gameKeyState":Z
    :try_start_0
    invoke-static {}, Lcn/nubia/game/GameKeysHelper;->getDefault()Lcn/nubia/game/GameKeysHelper;

    move-result-object v1

    .line 621
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "nubia_db_game_keys"

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 620
    invoke-virtual {v1, v2}, Lcn/nubia/game/GameKeysHelper;->isOpenGameKeys(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 626
    goto :goto_0

    .line 624
    :catch_0
    move-exception v1

    .line 625
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 627
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public static getHouchHapticFeedbackEnable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 723
    const/4 v0, 0x0

    move v1, v0

    .line 725
    .local v1, "flag":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_touch_haptic_feed_back"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 728
    goto :goto_0

    .line 726
    :catch_0
    move-exception v2

    .line 727
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 729
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public static getTipNumStatus(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 740
    const/4 v0, 0x0

    move v1, v0

    .line 742
    .local v1, "number":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "touch_tip_num"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 745
    goto :goto_0

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 746
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1
.end method

.method public static getTouchGameKeySensitivityValue(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gamekey"    # I

    .line 679
    const/4 v0, 0x1

    .line 680
    .local v0, "sensitivityValue":I
    const-string v1, ""

    .line 681
    .local v1, "touchGameKeySensitivity":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 682
    const-string v1, "_touch_game_key_sensitivity_l"

    goto :goto_0

    .line 683
    :cond_0
    if-ne p2, v2, :cond_1

    .line 684
    const-string v1, "_touch_game_key_sensitivity_t"

    goto :goto_0

    .line 686
    :cond_1
    const-string v1, "_touch_game_key_sensitivity_r"

    .line 689
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 692
    goto :goto_1

    .line 690
    :catch_0
    move-exception v2

    .line 691
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "TouchGameKeyMapHelper"

    const-string v4, "getTouchGameKeySensitivityValue FAIL !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public static isDefaultGame(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "enable":Z
    invoke-static {}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isNX629V1S()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.tmgp.pubgm"

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.netease.hyxd"

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.netease.zjz"

    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.tmgp.sgame"

    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.tencent.tmgp.pubgm"

    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.netease.hyxd"

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.netease.zjz"

    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.tencent.tmgp.cf"

    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.tencent.tmgp.sgame"

    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    :cond_2
    const/4 v0, 0x1

    .line 84
    :cond_3
    :goto_0
    return v0
.end method

.method public static isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "enable":Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    return v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "touch_game_key_enable_game_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "enableGameList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 99
    .end local v1    # "enableGameList":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return v0
.end method

.method public static isNX629V1S()Z
    .locals 3

    .line 471
    const-string v0, "1"

    const-string/jumbo v1, "ro.nubia.freeselectiontouch.support"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;
    .locals 8
    .param p0, "positionSet"    # [I
    .param p1, "type"    # Ljava/lang/String;

    .line 205
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 206
    .local v1, "rects":[Landroid/graphics/Rect;
    const-string/jumbo v2, "main_"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    aget-object v2, v1, v3

    aget v3, p0, v4

    aget v6, p0, v5

    aget v0, p0, v0

    const/4 v7, 0x4

    aget v7, p0, v7

    invoke-virtual {v2, v3, v6, v0, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 208
    aget-object v0, v1, v4

    const/4 v2, 0x5

    aget v2, p0, v2

    const/4 v3, 0x6

    aget v3, p0, v3

    const/4 v4, 0x7

    aget v4, p0, v4

    const/16 v6, 0x8

    aget v6, p0, v6

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 209
    aget-object v0, v1, v5

    const/16 v2, 0x9

    aget v2, p0, v2

    const/16 v3, 0xa

    aget v3, p0, v3

    const/16 v4, 0xb

    aget v4, p0, v4

    const/16 v5, 0xc

    aget v5, p0, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 217
    return-object v1

    .line 211
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static rectToPoint(Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 3
    .param p0, "rect"    # Landroid/graphics/Rect;

    .line 602
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 603
    .local v0, "pointX":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 604
    .local v1, "pointY":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 605
    .local v2, "point":Landroid/graphics/Point;
    return-object v2
.end method

.method private static reduceRectArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "rect"    # Landroid/graphics/Rect;

    .line 221
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0xa

    .line 222
    .local v0, "offseth":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0xa

    .line 223
    .local v1, "offsetv":I
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    .line 224
    .local v2, "left":I
    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    .line 225
    .local v3, "right":I
    iget v4, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    .line 226
    .local v4, "top":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    .line 227
    .local v5, "bottom":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method public static resumeDefaultDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 274
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 275
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 276
    .local v1, "rotation":I
    invoke-static {p0, p1, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getAndSaveDefaultMainScreenRects(Landroid/content/Context;Ljava/lang/String;I)[Landroid/graphics/Rect;

    move-result-object v2

    .line 277
    .local v2, "tRects":[Landroid/graphics/Rect;
    invoke-static {}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isNX629V1S()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 278
    invoke-static {p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isDefaultGame(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {p0, p1, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 285
    :cond_1
    :goto_0
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;[Landroid/graphics/Rect;ILjava/lang/String;)V

    .line 286
    invoke-static {p0, v4, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;ZLjava/lang/String;)V

    .line 287
    invoke-static {p0, p1, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 288
    return-void
.end method

.method public static resumeDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 231
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 232
    .local v1, "tRects":[Landroid/graphics/Rect;
    const-string/jumbo v2, "main_"

    invoke-static {p0, p1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "targetPos":Ljava/lang/String;
    const/4 v6, 0x0

    .line 234
    .local v6, "rotation":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v7

    .line 238
    .local v7, "posSet":[I
    aget v6, v7, v3

    .line 239
    array-length v8, v7

    const/16 v9, 0xd

    if-ge v8, v9, :cond_1

    .line 240
    const-string v0, "TouchGameKeyMapHelper"

    const-string v3, " resumeDualScreenMap posSet.length < 13"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_DEFAULT:[Landroid/graphics/Rect;

    goto :goto_0

    .line 244
    :cond_1
    aget-object v3, v1, v3

    aget v8, v7, v4

    aget v9, v7, v5

    aget v0, v7, v0

    const/4 v10, 0x4

    aget v10, v7, v10

    invoke-virtual {v3, v8, v9, v0, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 245
    aget-object v0, v1, v4

    const/4 v3, 0x5

    aget v3, v7, v3

    const/4 v8, 0x6

    aget v8, v7, v8

    const/4 v9, 0x7

    aget v9, v7, v9

    const/16 v10, 0x8

    aget v10, v7, v10

    invoke-virtual {v0, v3, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 246
    aget-object v0, v1, v5

    const/16 v3, 0x9

    aget v3, v7, v3

    const/16 v5, 0xa

    aget v5, v7, v5

    const/16 v8, 0xb

    aget v8, v7, v8

    const/16 v9, 0xc

    aget v9, v7, v9

    invoke-virtual {v0, v3, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 268
    .end local v7    # "posSet":[I
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v6, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;[Landroid/graphics/Rect;ILjava/lang/String;)V

    .line 269
    invoke-static {p0, v4, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;ZLjava/lang/String;)V

    .line 270
    return-void
.end method

.method public static saveFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isThreeFinger"    # I

    .line 699
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_touch_game_finger_num"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 703
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "positions"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 149
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch_game_key_map_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_1

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public static saveHouchHapticFeedbackEnable(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .line 716
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_touch_haptic_feed_back"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 720
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static saveTipNumStatus(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # I

    .line 734
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "touch_tip_num"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 738
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static saveTouchGameKeySensitivityValue(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sensitivityValue"    # I
    .param p3, "gamekey"    # I

    .line 663
    const-string v0, ""

    .line 664
    .local v0, "touchGameKeySensitivity":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 665
    const-string v0, "_touch_game_key_sensitivity_l"

    goto :goto_0

    .line 666
    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 667
    const-string v0, "_touch_game_key_sensitivity_t"

    goto :goto_0

    .line 669
    :cond_1
    const-string v0, "_touch_game_key_sensitivity_r"

    .line 672
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    goto :goto_1

    .line 673
    :catch_0
    move-exception v1

    .line 674
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TouchGameKeyMapHelper"

    const-string/jumbo v3, "saveTouchGameKeySensitivityValue FAIL !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static setDoubleScreenTouchEnable(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 358
    invoke-static {p0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getGameKeyState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    const/4 p1, 0x0

    .line 361
    :cond_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "TouchGameKeyMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDoubleScreenTouchEnable, enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1
    :try_start_0
    invoke-static {}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isNX629V1S()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    .line 364
    :cond_2
    invoke-static {p0, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setGameKeyEnable(Landroid/content/Context;Z)V

    .line 367
    :cond_3
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 368
    invoke-static {p0, v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 369
    invoke-static {p0, v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setHouchHapticFeedbackEnable(Landroid/content/Context;Z)V

    goto/16 :goto_7

    .line 371
    :cond_4
    invoke-static {p0, p2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getHouchHapticFeedbackEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 372
    invoke-static {p0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setHouchHapticFeedbackEnable(Landroid/content/Context;Z)V

    goto :goto_0

    .line 374
    :cond_5
    invoke-static {p0, v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setHouchHapticFeedbackEnable(Landroid/content/Context;Z)V

    .line 376
    :goto_0
    invoke-static {p0, p2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFingerTouchNumStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 377
    .local v1, "isThreeOrTwoFingerOrOneFinger":I
    invoke-static {}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isNX629V1S()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 378
    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_7

    if-ne v1, v3, :cond_6

    goto :goto_1

    .line 381
    :cond_6
    invoke-static {p0, v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    goto :goto_2

    .line 379
    :cond_7
    :goto_1
    invoke-static {p0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 383
    :goto_2
    invoke-static {p0, p2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFloatViewPos(Landroid/content/Context;Ljava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v6

    .line 384
    .local v6, "positionSet":[Landroid/graphics/Rect;
    invoke-static {p0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setGameKeyEnable(Landroid/content/Context;Z)V

    .line 385
    if-eqz v1, :cond_e

    if-ne v1, v2, :cond_8

    goto :goto_5

    .line 387
    :cond_8
    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    if-ne v1, v4, :cond_9

    goto :goto_4

    .line 389
    :cond_9
    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    if-ne v1, v3, :cond_a

    goto :goto_3

    .line 391
    :cond_a
    if-eq v1, v5, :cond_b

    const/4 v2, 0x7

    if-ne v1, v2, :cond_f

    .line 392
    :cond_b
    invoke-static {p0, v6, v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setGameKeyRectLR(Landroid/content/Context;[Landroid/graphics/Rect;Z)V

    .line 392
    .end local v6    # "positionSet":[Landroid/graphics/Rect;
    goto :goto_6

    .line 390
    .restart local v6    # "positionSet":[Landroid/graphics/Rect;
    :cond_c
    :goto_3
    invoke-static {p0, v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setRightGameKeyEnable(Landroid/content/Context;[Landroid/graphics/Rect;)V

    goto :goto_6

    .line 388
    :cond_d
    :goto_4
    invoke-static {p0, v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setLeftGameKeyEnable(Landroid/content/Context;[Landroid/graphics/Rect;)V

    goto :goto_6

    .line 386
    :cond_e
    :goto_5
    invoke-static {p0, v6, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setGameKeyRectLR(Landroid/content/Context;[Landroid/graphics/Rect;Z)V

    .line 394
    .end local v6    # "positionSet":[Landroid/graphics/Rect;
    :cond_f
    :goto_6
    goto :goto_7

    .line 395
    :cond_10
    if-nez v1, :cond_11

    .line 396
    invoke-static {p0, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    goto :goto_7

    .line 398
    :cond_11
    invoke-static {p0, v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v1    # "isThreeOrTwoFingerOrOneFinger":I
    :goto_7
    goto :goto_8

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 405
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_8
    return-void
.end method

.method public static setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;[Landroid/graphics/Rect;ILjava/lang/String;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sources"    # [Landroid/graphics/Rect;
    .param p2, "targets"    # [Landroid/graphics/Rect;
    .param p3, "rotation"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 409
    :try_start_0
    array-length v0, v2

    .line 410
    .local v0, "size":I
    new-array v3, v0, [Landroid/graphics/Point;

    .line 411
    .local v3, "newTarget":[Landroid/graphics/Point;
    const/4 v4, 0x0

    move v5, v4

    .line 411
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 412
    aget-object v6, v2, v5

    invoke-static {v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->rectToPoint(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v6

    aput-object v6, v3, v5

    .line 411
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 414
    .end local v5    # "i":I
    :cond_0
    const/4 v5, 0x0

    .line 415
    .local v5, "pointL":Landroid/graphics/Point;
    const/4 v6, 0x0

    .line 416
    .local v6, "pointR":Landroid/graphics/Point;
    const/4 v7, 0x0

    .line 417
    .local v7, "pointT":Landroid/graphics/Point;
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lt v0, v8, :cond_1

    .line 418
    aget-object v10, v3, v4

    move-object v5, v10

    .line 419
    aget-object v10, v3, v9

    move-object v6, v10

    .line 420
    aget-object v10, v3, v8

    move-object v7, v10

    .line 423
    :cond_1
    invoke-static {}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isNX629V1S()Z

    move-result v10

    if-nez v10, :cond_2

    .line 424
    const-string/jumbo v10, "input"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/input/InputManager;

    .line 425
    .local v10, "inputManager":Landroid/hardware/input/InputManager;
    const-class v11, Landroid/hardware/input/InputManager;

    const-string/jumbo v12, "setDoubleGamePoint"

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Class;

    const-class v15, Landroid/graphics/Point;

    aput-object v15, v14, v4

    const-class v15, Landroid/graphics/Point;

    aput-object v15, v14, v9

    const-class v15, Landroid/content/Context;

    aput-object v15, v14, v8

    invoke-virtual {v11, v12, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 427
    .local v11, "method":Ljava/lang/reflect/Method;
    new-array v12, v13, [Ljava/lang/Object;

    aput-object v6, v12, v4

    aput-object v5, v12, v9

    aput-object v1, v12, v8

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .end local v10    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    :cond_2
    invoke-static {v1, v7}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setGameKeyMapRect(Landroid/content/Context;Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v0    # "size":I
    .end local v3    # "newTarget":[Landroid/graphics/Point;
    .end local v5    # "pointL":Landroid/graphics/Point;
    .end local v6    # "pointR":Landroid/graphics/Point;
    .end local v7    # "pointT":Landroid/graphics/Point;
    goto :goto_1

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "TouchGameKeyMapHelper"

    const-string/jumbo v4, "setDoubleScreenTouchRects fail "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method

.method public static setGameKeyEnable(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 461
    :try_start_0
    const-string v0, "TouchGameKeyMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGameKeyEnable enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 463
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const-class v1, Landroid/hardware/input/InputManager;

    const-string/jumbo v2, "setGameKeyEnable"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/Context;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 464
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p0, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "TouchGameKeyMapHelper"

    const-string/jumbo v2, "setGameKeyEnable fail "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static setGameKeyMapRect(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pointT"    # Landroid/graphics/Point;

    .line 589
    if-nez p1, :cond_0

    .line 590
    :try_start_0
    const-string v0, "TouchGameKeyMapHelper"

    const-string/jumbo v1, "setGameKeyMapRect, pointT is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void

    .line 596
    :catch_0
    move-exception v0

    goto :goto_0

    .line 593
    :cond_0
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 594
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const-class v1, Landroid/hardware/input/InputManager;

    const-string/jumbo v2, "setGamePoint"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Point;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 595
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 596
    :goto_0
    nop

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "TouchGameKeyMapHelper"

    const-string/jumbo v2, "setGameKeyMapRect fail "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public static setGameKeyRectLR(Landroid/content/Context;[Landroid/graphics/Rect;Z)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targets"    # [Landroid/graphics/Rect;
    .param p2, "enable"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 438
    :try_start_0
    array-length v0, v2

    .line 439
    .local v0, "size":I
    new-array v3, v0, [Landroid/graphics/Point;

    .line 440
    .local v3, "newTarget":[Landroid/graphics/Point;
    const/4 v4, 0x0

    move v5, v4

    .line 440
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 441
    aget-object v6, v2, v5

    invoke-static {v6}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->rectToPoint(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v6

    aput-object v6, v3, v5

    .line 440
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 443
    .end local v5    # "i":I
    :cond_0
    const/4 v5, 0x0

    .line 444
    .local v5, "pointL":Landroid/graphics/Point;
    const/4 v6, 0x0

    .line 445
    .local v6, "pointR":Landroid/graphics/Point;
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-lt v0, v7, :cond_1

    .line 446
    aget-object v9, v3, v4

    move-object v5, v9

    .line 447
    aget-object v9, v3, v8

    move-object v6, v9

    .line 449
    :cond_1
    const-string v9, "TouchGameKeyMapHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "touch gam key-- setGameKeyRectLR pointR:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ";pointL:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ";enable:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v11, p2

    :try_start_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string/jumbo v9, "input"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/input/InputManager;

    .line 451
    .local v9, "inputManager":Landroid/hardware/input/InputManager;
    const-class v10, Landroid/hardware/input/InputManager;

    const-string/jumbo v12, "setLeftAndRightGameKeyEnable"

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/Class;

    const-class v15, Landroid/graphics/Point;

    aput-object v15, v14, v4

    const-class v15, Landroid/graphics/Point;

    aput-object v15, v14, v8

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v7

    const-class v15, Landroid/content/Context;

    const/16 v16, 0x3

    aput-object v15, v14, v16

    invoke-virtual {v10, v12, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 453
    .local v10, "method":Ljava/lang/reflect/Method;
    new-array v12, v13, [Ljava/lang/Object;

    aput-object v6, v12, v4

    aput-object v5, v12, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v12, v7

    aput-object v1, v12, v16

    invoke-virtual {v10, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 456
    .end local v0    # "size":I
    .end local v3    # "newTarget":[Landroid/graphics/Point;
    .end local v5    # "pointL":Landroid/graphics/Point;
    .end local v6    # "pointR":Landroid/graphics/Point;
    .end local v9    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v10    # "method":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 454
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move/from16 v11, p2

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "TouchGameKeyMapHelper"

    const-string/jumbo v4, "setGameKeyRectLR fail "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method public static setHouchHapticFeedbackEnable(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 578
    :try_start_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TouchGameKeyMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch gam key-- setHouchHapticFeedbackEnable enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 580
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const-class v1, Landroid/hardware/input/InputManager;

    const-string/jumbo v2, "setHouchHapticFeedbackEnable"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/Context;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 581
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "TouchGameKeyMapHelper"

    const-string/jumbo v2, "setHouchHapticFeedbackEnable fail "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public static setLeftGameKeyEnable(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pointL"    # Landroid/graphics/Point;

    .line 514
    :try_start_0
    const-string v0, "TouchGameKeyMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch gam key-- setLeftGameKeyEnable pointL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 516
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const-class v1, Landroid/hardware/input/InputManager;

    const-string/jumbo v2, "setOnlyLeftGameKeyEnable"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Point;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/Context;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 517
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "TouchGameKeyMapHelper"

    const-string/jumbo v2, "setLeftGameKeyEnable fail "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static setLeftGameKeyEnable(Landroid/content/Context;[Landroid/graphics/Rect;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targets"    # [Landroid/graphics/Rect;

    .line 536
    :try_start_0
    const-string v0, "TouchGameKeyMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch gam key-- setLeftGameKeyEnable targets:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    array-length v0, p1

    .line 538
    .local v0, "size":I
    new-array v1, v0, [Landroid/graphics/Point;

    .line 539
    .local v1, "newTarget":[Landroid/graphics/Point;
    const/4 v2, 0x0

    move v3, v2

    .line 539
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 540
    aget-object v4, p1, v3

    invoke-static {v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->rectToPoint(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v4

    aput-object v4, v1, v3

    .line 539
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 542
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .line 543
    .local v3, "pointL":Landroid/graphics/Point;
    const/4 v4, 0x2

    if-lt v0, v4, :cond_1

    .line 544
    aget-object v5, v1, v2

    move-object v3, v5

    .line 546
    :cond_1
    const-string v5, "TouchGameKeyMapHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "touch gam key-- setLeftGameKeyEnable pointL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string/jumbo v5, "input"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputManager;

    .line 548
    .local v5, "inputManager":Landroid/hardware/input/InputManager;
    const-class v6, Landroid/hardware/input/InputManager;

    const-string/jumbo v7, "setOnlyLeftGameKeyEnable"

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Landroid/graphics/Point;

    aput-object v9, v8, v2

    const-class v9, Landroid/content/Context;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 549
    .local v6, "method":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const/4 v2, 0x0

    aput-object v2, v4, v10

    invoke-virtual {v6, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v0    # "size":I
    .end local v1    # "newTarget":[Landroid/graphics/Point;
    .end local v3    # "pointL":Landroid/graphics/Point;
    .end local v5    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "TouchGameKeyMapHelper"

    const-string/jumbo v2, "setLeftGameKeyEnable fail "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public static setRightGameKeyEnable(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pointR"    # Landroid/graphics/Point;

    .line 525
    :try_start_0
    const-string v0, "TouchGameKeyMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch gam key-- setRightGameKeyEnable pointR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 527
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const-class v1, Landroid/hardware/input/InputManager;

    const-string/jumbo v2, "setOnlyRightGameKeyEnable"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Point;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/Context;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 528
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "TouchGameKeyMapHelper"

    const-string/jumbo v2, "setRightGameKeyEnable fail "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static setRightGameKeyEnable(Landroid/content/Context;[Landroid/graphics/Rect;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targets"    # [Landroid/graphics/Rect;

    .line 557
    :try_start_0
    const-string v0, "TouchGameKeyMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch gam key-- setRightGameKeyEnable targets:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    array-length v0, p1

    .line 559
    .local v0, "size":I
    new-array v1, v0, [Landroid/graphics/Point;

    .line 560
    .local v1, "newTarget":[Landroid/graphics/Point;
    const/4 v2, 0x0

    move v3, v2

    .line 560
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 561
    aget-object v4, p1, v3

    invoke-static {v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->rectToPoint(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v4

    aput-object v4, v1, v3

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 563
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .line 564
    .local v3, "pointR":Landroid/graphics/Point;
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v0, v4, :cond_1

    .line 565
    aget-object v6, v1, v5

    move-object v3, v6

    .line 567
    :cond_1
    const-string v6, "TouchGameKeyMapHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "touch gam key-- setRightGameKeyEnable pointR:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string/jumbo v6, "input"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputManager;

    .line 569
    .local v6, "inputManager":Landroid/hardware/input/InputManager;
    const-class v7, Landroid/hardware/input/InputManager;

    const-string/jumbo v8, "setOnlyRightGameKeyEnable"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Landroid/graphics/Point;

    aput-object v10, v9, v2

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 570
    .local v7, "method":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const/4 v2, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v7, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v0    # "size":I
    .end local v1    # "newTarget":[Landroid/graphics/Point;
    .end local v3    # "pointR":Landroid/graphics/Point;
    .end local v6    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "TouchGameKeyMapHelper"

    const-string/jumbo v2, "setRightGameKeyEnable fail "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public static showScreenTouchesDot(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "display"    # Z

    .line 616
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .line 140
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->mToast:Landroid/widget/Toast;

    .line 143
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 144
    sget-object v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    return-void
.end method

.method public static toPositionSet(Ljava/lang/String;)[I
    .locals 7
    .param p0, "positions"    # Ljava/lang/String;

    .line 175
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "posSet":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 181
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 182
    .local v2, "index":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 183
    .local v5, "pos":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v2

    .line 184
    add-int/lit8 v2, v2, 0x1

    .line 182
    .end local v5    # "pos":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    :cond_1
    return-object v1

    .line 177
    .end local v0    # "posSet":[Ljava/lang/String;
    .end local v1    # "result":[I
    .end local v2    # "index":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 104
    if-eqz p1, :cond_9

    const-string v0, "cn.nubia.gamelauncher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "cn.nubia.launcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "pkgNameValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "touch_game_key_enable_game_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "enableGameList":Ljava/lang/String;
    const-string v2, ""

    .line 111
    .local v2, "updateGameList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    if-eqz p2, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    move-object v2, v3

    goto :goto_3

    .line 114
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    if-eqz p2, :cond_3

    const-string v3, ""

    goto :goto_1

    :cond_3
    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v2, v3

    .line 116
    if-nez p2, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    const-string v3, "TouchGameKeyMapHelper"

    const-string/jumbo v4, "updateEnabledGameList, clearn!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "touch_game_key_enable_game_list"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    return-void

    .line 122
    :cond_4
    if-eqz p2, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    const-string v3, ""

    :goto_2
    move-object v2, v3

    .line 125
    :cond_6
    :goto_3
    const-string v3, "TouchGameKeyMapHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEnabledGameList, updateGameList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    .line 127
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "touch_game_key_enable_game_list"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "enableGameList":Ljava/lang/String;
    .end local v2    # "updateGameList":Ljava/lang/String;
    goto :goto_4

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_8
    :goto_4
    return-void

    .line 105
    .end local v0    # "pkgNameValue":Ljava/lang/String;
    :cond_9
    :goto_5
    return-void
.end method

.method public static writeTouchGameKeySensitivityValue(II)V
    .locals 5
    .param p0, "sensitivityValue"    # I
    .param p1, "gamekey"    # I

    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, "writer":Ljava/io/BufferedWriter;
    const-string v1, ""

    .line 644
    .local v1, "outfileName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 645
    const-string v1, "/sys/devices/platform/soc/884000.i2c/i2c-2/2-0010/L_sensitivity"

    goto :goto_0

    .line 646
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 647
    const-string v1, ""

    goto :goto_0

    .line 649
    :cond_1
    const-string v1, "/sys/devices/platform/soc/884000.i2c/i2c-2/2-0010/R_sensitivity"

    .line 652
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v2

    .line 653
    add-int/lit8 v2, p0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 655
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    goto :goto_1

    .line 656
    :catch_0
    move-exception v2

    .line 657
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->DEBUG:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 658
    :cond_2
    const-string v3, "TouchGameKeyMapHelper"

    const-string/jumbo v4, "writeTouchGameKeySensitivityValue FAIL !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

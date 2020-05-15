.class public Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;
.super Ljava/lang/Object;
.source "HandShankScreenMapHelper.java"


# static fields
.field public static final ACTION_GAMEHANDLE_CONNECTED_STATE:Ljava/lang/String; = "cn.nubia.gamelauncher.ACTION_GAMEHANDLE_CONNECTION_STATE_CHANGE"

.field public static final ACTION_HAND_SHANK_SCREEN_MAP_OPTION:Ljava/lang/String; = "cn.nubia.intent.action.HAND_SHANK_SCREEN_MAP_OPTION"

.field private static DEBUG:Z = false

.field public static final DEFAULT_MAIN_SCREEN_RECTS_CHIJIGAME_RIGHT:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_RIGHT:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_RIGHT_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_RIGHT:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_RIGHT_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_RIGHT_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_RIGHT_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_SGAME:[Landroid/graphics/Rect;

.field public static final DEFAULT_NOT_DEFAULT_GAME_POSITION:[Landroid/graphics/Rect;

.field public static final DEFAULT_NOT_DEFAULT_GAME_POSITION_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_NOT_DEFAULT_GAME_POSITION_RIGHT:[Landroid/graphics/Rect;

.field public static final DEFAULT_NOT_DEFAULT_GAME_POSITION_RIGHT_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_SECONDARY_SCREEN_RECTS:[Landroid/graphics/Rect;

.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field private static final ENABLE_HAND_SHANK_GAME_LIST:Ljava/lang/String; = "hand_shank_map_enable_game_list"

.field private static final GAME_APP_NAME:Ljava/lang/String; = "cn.nubia.gamelauncher"

.field public static final GAME_NETEASE_DWRG:Ljava/lang/String; = "com.netease.dwrg"

.field public static final GAME_NETEASE_HYXD_PRE:Ljava/lang/String; = "com.netease.hyxd"

.field public static final GAME_NETEASE_ZJZ_PRE:Ljava/lang/String; = "com.netease.zjz"

.field public static final GAME_TENCENT_CF:Ljava/lang/String; = "com.tencent.tmgp.cf"

.field public static final GAME_TENCENT_PUBGM:Ljava/lang/String; = "com.tencent.tmgp.pubgm"

.field public static final GAME_TENCENT_PUBGMHD:Ljava/lang/String; = "com.tencent.tmgp.pubgmhd"

.field public static final GAME_TENCENT_SGAME:Ljava/lang/String; = "com.tencent.tmgp.sgame"

.field public static final GAME_TENCENT_SPEEDMOBILE:Ljava/lang/String; = "com.tencent.tmgp.speedmobile"

.field private static final HAND_LEFT_OR_RIGHT:Ljava/lang/String; = "_hand_shank_hand_left_or_right"

.field private static final HAS_SET_AREA_STATUS:Ljava/lang/String; = "_hand_shank_hasSetArea_Status"

.field private static final HOME_APP_NAME:Ljava/lang/String; = "cn.nubia.launcher"

.field public static final KEY_MAIN_SCREEN:Ljava/lang/String; = "main_"

.field private static final MOVE_AREA_DIRECTION:Ljava/lang/String; = "_hand_shank_moveArea_direction"

.field public static final PRE_HAND_SHANK_SCREEN_MAP:Ljava/lang/String; = "hand_shank_screen_map_"

.field private static ROATTION_0:I = 0x0

.field private static ROATTION_180:I = 0x0

.field private static ROATTION_270:I = 0x0

.field private static ROATTION_90:I = 0x0

.field private static final SCALE_NUM:Ljava/lang/String; = "_hand_shank_moveArea_scaleNum"

.field public static final TAG:Ljava/lang/String; = "HandShankScreenMapHelper"

.field public static final URI_GAME_SPACE_PKG:Landroid/net/Uri;

.field public static final keyCodeA:I = 0x60

.field public static final keyCodeB:I = 0x61

.field public static final keyCodeLB:I = 0x66

.field public static final keyCodeLT:I = 0x68

.field public static final keyCodeRB:I = 0x67

.field public static final keyCodeRT:I = 0x69

.field public static final keyCodeX:I = 0x63

.field public static final keyCodeY:I = 0x64

.field public static mDialogIsShowing:Z

.field public static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 31
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x1a3

    const/16 v4, 0x186

    const/16 v5, 0x365

    const/16 v6, 0x348

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Rect;

    const/16 v4, 0x581

    const/16 v5, 0x186

    const/16 v6, 0x743

    const/16 v7, 0x348

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_SECONDARY_SCREEN_RECTS:[Landroid/graphics/Rect;

    .line 50
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x258

    const/16 v7, 0x51

    const/16 v8, 0x1f8

    const/16 v9, 0xb1

    invoke-direct {v5, v7, v8, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v3

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x7f2

    const/16 v8, 0x204

    const/16 v9, 0x852

    const/16 v10, 0x264

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v4

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x7f8

    const/16 v8, 0x84c

    const/16 v9, 0x2ca

    const/16 v10, 0x31e

    invoke-direct {v5, v7, v9, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v0

    new-instance v5, Landroid/graphics/Rect;

    const/16 v9, 0x7d7

    const/16 v10, 0x39f

    const/16 v11, 0x82b

    const/16 v12, 0x3f3

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x3

    aput-object v5, v2, v9

    new-instance v5, Landroid/graphics/Rect;

    const/16 v10, 0x67e

    const/16 v11, 0x3cc

    const/16 v12, 0x6d2

    const/16 v13, 0x420

    invoke-direct {v5, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x4

    aput-object v5, v2, v10

    new-instance v5, Landroid/graphics/Rect;

    const/16 v11, 0x3c3

    const/16 v12, 0x71d

    const/16 v13, 0x771

    const/16 v14, 0x417

    invoke-direct {v5, v12, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v12, 0x5

    aput-object v5, v2, v12

    new-instance v5, Landroid/graphics/Rect;

    const/16 v13, 0xcc

    invoke-direct {v5, v13, v6, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x6

    aput-object v5, v2, v13

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD:[Landroid/graphics/Rect;

    .line 53
    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v14, 0x51

    const/16 v15, 0x1f8

    const/16 v1, 0xb1

    invoke-direct {v5, v14, v15, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x7f2

    const/16 v14, 0x204

    const/16 v15, 0x852

    const/16 v13, 0x264

    invoke-direct {v1, v5, v14, v15, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x2ca

    const/16 v13, 0x31e

    invoke-direct {v1, v7, v5, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x7d7

    const/16 v13, 0x39f

    const/16 v14, 0x82b

    const/16 v15, 0x3f3

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x67e

    const/16 v13, 0x3cc

    const/16 v14, 0x6d2

    const/16 v15, 0x420

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x71d

    const/16 v13, 0x771

    const/16 v14, 0x417

    invoke-direct {v1, v5, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0xcc

    invoke-direct {v1, v5, v6, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x6

    aput-object v1, v2, v5

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM:[Landroid/graphics/Rect;

    .line 56
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x1e6

    const/16 v13, 0x36

    const/16 v14, 0x8a

    const/16 v15, 0x23a

    invoke-direct {v1, v13, v5, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v13, 0x7e9

    const/16 v14, 0x22b

    const/16 v15, 0x83d

    const/16 v5, 0x27f

    invoke-direct {v1, v13, v14, v15, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x7dc

    const/16 v13, 0x3ab

    const/16 v14, 0x830

    const/16 v15, 0x3ff

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x63f

    const/16 v13, 0x3cc

    const/16 v14, 0x693

    const/16 v15, 0x420

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x71a

    const/16 v13, 0x76e

    const/16 v14, 0x417

    invoke-direct {v1, v5, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x303

    const/16 v13, 0x357

    invoke-direct {v1, v7, v5, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0xcc

    invoke-direct {v1, v5, v6, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x6

    aput-object v1, v2, v5

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD:[Landroid/graphics/Rect;

    .line 59
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x63

    const/16 v13, 0xc3

    const/16 v14, 0x246

    const/16 v15, 0x1e6

    invoke-direct {v1, v5, v15, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x20a

    const/16 v13, 0x786

    const/16 v14, 0x7e6

    const/16 v15, 0x26a

    invoke-direct {v1, v13, v5, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v13, 0x32d

    const/16 v14, 0x381

    invoke-direct {v1, v7, v13, v8, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v13, 0x63c

    const/16 v14, 0x3c6

    const/16 v15, 0x690

    const/16 v5, 0x41a

    invoke-direct {v1, v13, v14, v15, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x6c0

    const/16 v13, 0x3c6

    const/16 v14, 0x714

    const/16 v15, 0x41a

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x2a6

    const/16 v13, 0x2fa

    invoke-direct {v1, v7, v5, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0xcc

    invoke-direct {v1, v5, v6, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x6

    aput-object v1, v2, v5

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ:[Landroid/graphics/Rect;

    .line 63
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x51

    const/16 v13, 0x1f8

    const/16 v14, 0xb1

    invoke-direct {v1, v5, v13, v14, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x7f2

    const/16 v13, 0x204

    const/16 v14, 0x852

    const/16 v15, 0x264

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x2ca

    const/16 v13, 0x31e

    invoke-direct {v1, v7, v5, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x7d7

    const/16 v13, 0x39f

    const/16 v14, 0x82b

    const/16 v15, 0x3f3

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x67e

    const/16 v13, 0x3cc

    const/16 v14, 0x6d2

    const/16 v15, 0x420

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x71d

    const/16 v13, 0x771

    const/16 v14, 0x417

    invoke-direct {v1, v5, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x61e

    const/16 v13, 0x1e6

    invoke-direct {v1, v5, v13, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x6

    aput-object v1, v2, v5

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_CHIJIGAME_RIGHT:[Landroid/graphics/Rect;

    .line 66
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x36

    const/16 v14, 0x8a

    const/16 v15, 0x23a

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x7e9

    const/16 v13, 0x22b

    const/16 v14, 0x83d

    const/16 v15, 0x27f

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x7dc

    const/16 v13, 0x3ab

    const/16 v14, 0x830

    const/16 v15, 0x3ff

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x63f

    const/16 v13, 0x3cc

    const/16 v14, 0x693

    const/16 v15, 0x420

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x71a

    const/16 v13, 0x76e

    const/16 v14, 0x417

    invoke-direct {v1, v5, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x303

    const/16 v13, 0x357

    invoke-direct {v1, v7, v5, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x61e

    const/16 v13, 0x1e6

    invoke-direct {v1, v5, v13, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x6

    aput-object v1, v2, v5

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_RIGHT:[Landroid/graphics/Rect;

    .line 69
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x63

    const/16 v14, 0xc3

    const/16 v15, 0x246

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x786

    const/16 v13, 0x7e6

    const/16 v14, 0x26a

    const/16 v15, 0x20a

    invoke-direct {v1, v5, v15, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x32d

    const/16 v13, 0x381

    invoke-direct {v1, v7, v5, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x63c

    const/16 v13, 0x3c6

    const/16 v14, 0x690

    const/16 v15, 0x41a

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x6c0

    const/16 v14, 0x714

    invoke-direct {v1, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x2a6

    const/16 v13, 0x2fa

    invoke-direct {v1, v7, v5, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x61e

    const/16 v7, 0x1e6

    invoke-direct {v1, v5, v7, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x6

    aput-object v1, v2, v5

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_RIGHT:[Landroid/graphics/Rect;

    .line 72
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x9c

    const/16 v7, 0x1f5

    const/16 v13, 0xfc

    const/16 v14, 0x255

    invoke-direct {v1, v5, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x17d

    const/16 v14, 0x1dd

    invoke-direct {v1, v5, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x49e

    const/16 v7, 0x39f

    const/16 v13, 0x4f2

    const/16 v14, 0x3f3

    invoke-direct {v1, v5, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0xba

    const/16 v7, 0xc9

    const/16 v13, 0x10e

    const/16 v14, 0x11d

    invoke-direct {v1, v5, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x5a

    const/16 v7, 0x5a

    const/16 v13, 0xae

    const/16 v14, 0xae

    invoke-direct {v1, v5, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x52e

    const/16 v7, 0x39f

    const/16 v13, 0x582

    const/16 v14, 0x3f3

    invoke-direct {v1, v5, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0xb4

    const/16 v7, 0x28a

    invoke-direct {v1, v5, v7, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x6

    aput-object v1, v2, v5

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_SGAME:[Landroid/graphics/Rect;

    .line 76
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v5, 0x24f

    const/16 v7, 0x3a8

    const/16 v13, 0x408

    const/16 v14, 0x2af

    invoke-direct {v1, v7, v5, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x468

    const/16 v13, 0x4c8

    invoke-direct {v1, v7, v5, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x6c9

    const/16 v13, 0x2f4

    const/16 v14, 0x71d

    const/16 v15, 0x348

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x72c

    const/16 v13, 0x291

    const/16 v14, 0x780

    const/16 v15, 0x2e5

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x666

    const/16 v14, 0x6ba

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x6c9

    const/16 v13, 0x22e

    const/16 v14, 0x71d

    const/16 v15, 0x282

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0xf0

    invoke-direct {v1, v7, v13, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x6

    aput-object v1, v2, v7

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION:[Landroid/graphics/Rect;

    .line 79
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x3a8

    const/16 v13, 0x408

    const/16 v14, 0x2af

    invoke-direct {v1, v7, v5, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x468

    const/16 v13, 0x4c8

    invoke-direct {v1, v7, v5, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x153

    const/16 v13, 0x2f4

    const/16 v14, 0x1a7

    const/16 v15, 0x348

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x1b6

    const/16 v13, 0x291

    const/16 v14, 0x2e5

    const/16 v15, 0x20a

    invoke-direct {v1, v7, v13, v15, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0xf0

    const/16 v14, 0x144

    const/16 v15, 0x2e5

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x153

    const/16 v13, 0x22e

    const/16 v14, 0x1a7

    const/16 v15, 0x282

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x666

    invoke-direct {v1, v7, v13, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x6

    aput-object v1, v2, v7

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION_RIGHT:[Landroid/graphics/Rect;

    .line 83
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x51

    const/16 v13, 0x1f8

    const/16 v14, 0xb1

    invoke-direct {v1, v7, v13, v14, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x8a6

    const/16 v13, 0x204

    const/16 v14, 0x906

    const/16 v15, 0x264

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x88b

    const/16 v13, 0x39f

    const/16 v14, 0x8eb

    const/16 v15, 0x3ff

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x732

    const/16 v13, 0x3cc

    const/16 v14, 0x792

    const/16 v15, 0x42c

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x7d1

    const/16 v13, 0x831

    const/16 v14, 0x423

    invoke-direct {v1, v7, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x8ac

    const/16 v13, 0x2ca

    const/16 v14, 0x90c

    const/16 v15, 0x32a

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0xe9

    const/16 v13, 0x29a

    invoke-direct {v1, v7, v13, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x6

    aput-object v1, v2, v7

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_629:[Landroid/graphics/Rect;

    .line 86
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x54

    const/16 v13, 0x1f8

    const/16 v14, 0xb4

    invoke-direct {v1, v7, v13, v14, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x8a1

    const/16 v13, 0x901

    const/16 v14, 0x26a

    const/16 v15, 0x20a

    invoke-direct {v1, v7, v15, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x88a

    const/16 v13, 0x39b

    const/16 v14, 0x8ea

    const/16 v15, 0x3fb

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x72b

    const/16 v13, 0x3c5

    const/16 v14, 0x78b

    const/16 v15, 0x425

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x7cb

    const/16 v14, 0x82b

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x8a7

    const/16 v13, 0x2b9

    const/16 v14, 0x907

    const/16 v15, 0x319

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0xa7

    const/16 v13, 0x286

    invoke-direct {v1, v7, v13, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x6

    aput-object v1, v2, v7

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_629:[Landroid/graphics/Rect;

    .line 89
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x45

    const/16 v13, 0x222

    const/16 v14, 0xa5

    const/16 v15, 0x282

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x8a9

    const/16 v13, 0x228

    const/16 v14, 0x909

    const/16 v15, 0x288

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x89d

    const/16 v13, 0x3ab

    const/16 v14, 0x8fd

    const/16 v15, 0x3ff

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x71a

    const/16 v13, 0x3c0

    const/16 v14, 0x77a

    const/16 v15, 0x420

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x7ec

    const/16 v13, 0x417

    invoke-direct {v1, v7, v11, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x8b5

    const/16 v13, 0x303

    const/16 v14, 0x915

    const/16 v15, 0x357

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0xde

    const/16 v13, 0x28e

    invoke-direct {v1, v7, v13, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x6

    aput-object v1, v2, v7

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_629:[Landroid/graphics/Rect;

    .line 92
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x63

    const/16 v13, 0xc3

    const/16 v14, 0x246

    const/16 v15, 0x1e6

    invoke-direct {v1, v7, v15, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x83c

    const/16 v13, 0x89c

    const/16 v14, 0x26a

    const/16 v15, 0x20a

    invoke-direct {v1, v7, v15, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x8ab

    const/16 v13, 0x32d

    const/16 v14, 0x90b

    const/16 v15, 0x381

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x6f0

    const/16 v13, 0x3c8

    const/16 v14, 0x750

    const/16 v15, 0x428

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x776

    const/16 v14, 0x7d6

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x8ab

    const/16 v13, 0x2a6

    const/16 v14, 0x90b

    const/16 v15, 0x2fa

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0xb6

    const/16 v13, 0x28a

    invoke-direct {v1, v7, v13, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x6

    aput-object v1, v2, v7

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_629:[Landroid/graphics/Rect;

    .line 96
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x51

    const/16 v13, 0x1f8

    const/16 v14, 0xb1

    invoke-direct {v1, v7, v13, v14, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x8a6

    const/16 v13, 0x204

    const/16 v14, 0x906

    const/16 v15, 0x264

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x88b

    const/16 v13, 0x39f

    const/16 v14, 0x8eb

    const/16 v15, 0x3ff

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x732

    const/16 v13, 0x3cc

    const/16 v14, 0x792

    const/16 v15, 0x42c

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x7d1

    const/16 v13, 0x831

    const/16 v14, 0x423

    invoke-direct {v1, v7, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x8ac

    const/16 v13, 0x2ca

    const/16 v14, 0x90c

    const/16 v15, 0x32a

    invoke-direct {v1, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x6d2

    const/16 v13, 0x1e6

    invoke-direct {v1, v7, v13, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x6

    aput-object v1, v2, v7

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_RIGHT_629:[Landroid/graphics/Rect;

    .line 99
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v7, 0x54

    const/16 v13, 0x1f8

    const/16 v14, 0xb4

    invoke-direct {v1, v7, v13, v14, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x8a1

    const/16 v7, 0x901

    const/16 v13, 0x26a

    const/16 v14, 0x20a

    invoke-direct {v1, v6, v14, v7, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x88a

    const/16 v7, 0x39b

    const/16 v13, 0x8ea

    const/16 v14, 0x3fb

    invoke-direct {v1, v6, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x72b

    const/16 v7, 0x3c5

    const/16 v13, 0x78b

    const/16 v14, 0x425

    invoke-direct {v1, v6, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x7cb

    const/16 v13, 0x82b

    invoke-direct {v1, v6, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x8a7

    const/16 v7, 0x2b9

    const/16 v13, 0x907

    const/16 v14, 0x319

    invoke-direct {v1, v6, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x6c8

    const/16 v7, 0x1dc

    invoke-direct {v1, v6, v7, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x6

    aput-object v1, v2, v6

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_RIGHT_629:[Landroid/graphics/Rect;

    .line 102
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x45

    const/16 v7, 0x222

    const/16 v13, 0xa5

    const/16 v14, 0x282

    invoke-direct {v1, v6, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x8a9

    const/16 v7, 0x228

    const/16 v13, 0x909

    const/16 v14, 0x288

    invoke-direct {v1, v6, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x89d

    const/16 v7, 0x3ab

    const/16 v13, 0x8fd

    const/16 v14, 0x3ff

    invoke-direct {v1, v6, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x71a

    const/16 v7, 0x3c0

    const/16 v13, 0x77a

    const/16 v14, 0x420

    invoke-direct {v1, v6, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x7ec

    const/16 v7, 0x417

    invoke-direct {v1, v6, v11, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x8b5

    const/16 v7, 0x303

    const/16 v8, 0x915

    const/16 v11, 0x357

    invoke-direct {v1, v6, v7, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x69c

    const/16 v7, 0x1ce

    invoke-direct {v1, v6, v7, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x6

    aput-object v1, v2, v6

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_RIGHT_629:[Landroid/graphics/Rect;

    .line 105
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x63

    const/16 v7, 0xc3

    const/16 v8, 0x246

    const/16 v11, 0x1e6

    invoke-direct {v1, v6, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x83c

    const/16 v7, 0x89c

    const/16 v8, 0x26a

    const/16 v11, 0x20a

    invoke-direct {v1, v6, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x8ab

    const/16 v7, 0x32d

    const/16 v8, 0x90b

    const/16 v11, 0x381

    invoke-direct {v1, v6, v7, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x6f0

    const/16 v7, 0x3c8

    const/16 v8, 0x750

    const/16 v11, 0x428

    invoke-direct {v1, v6, v7, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x776

    const/16 v8, 0x7d6

    invoke-direct {v1, v6, v7, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x8ab

    const/16 v7, 0x2a6

    const/16 v8, 0x90b

    const/16 v11, 0x2fa

    invoke-direct {v1, v6, v7, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x6d2

    const/16 v7, 0x1e6

    invoke-direct {v1, v6, v7, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x6

    aput-object v1, v2, v6

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_RIGHT_629:[Landroid/graphics/Rect;

    .line 109
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x402

    const/16 v7, 0x462

    const/16 v8, 0x2af

    invoke-direct {v1, v6, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x4c2

    const/16 v7, 0x522

    invoke-direct {v1, v6, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x77d

    const/16 v7, 0x2f4

    const/16 v8, 0x7d1

    const/16 v11, 0x348

    invoke-direct {v1, v6, v7, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x7e0

    const/16 v7, 0x291

    const/16 v8, 0x834

    const/16 v11, 0x2e5

    invoke-direct {v1, v6, v7, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x71a

    const/16 v8, 0x76e

    invoke-direct {v1, v6, v7, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v10

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0x77d

    const/16 v7, 0x22e

    const/16 v8, 0x7d1

    const/16 v11, 0x282

    invoke-direct {v1, v6, v7, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v6, 0xf0

    invoke-direct {v1, v6, v7, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x6

    aput-object v1, v2, v6

    sput-object v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION_629:[Landroid/graphics/Rect;

    .line 112
    const/4 v1, 0x7

    new-array v1, v1, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v6, 0x402

    const/16 v7, 0x462

    const/16 v8, 0x2af

    invoke-direct {v2, v6, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Rect;

    const/16 v6, 0x4c2

    const/16 v7, 0x522

    invoke-direct {v2, v6, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Rect;

    const/16 v5, 0x153

    const/16 v6, 0x2f4

    const/16 v7, 0x1a7

    const/16 v8, 0x348

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v0

    new-instance v2, Landroid/graphics/Rect;

    const/16 v5, 0x1b6

    const/16 v6, 0x291

    const/16 v7, 0x2e5

    const/16 v8, 0x20a

    invoke-direct {v2, v5, v6, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v9

    new-instance v2, Landroid/graphics/Rect;

    const/16 v5, 0xf0

    const/16 v7, 0x144

    const/16 v8, 0x2e5

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v10

    new-instance v2, Landroid/graphics/Rect;

    const/16 v5, 0x153

    const/16 v6, 0x22e

    const/16 v7, 0x1a7

    const/16 v8, 0x282

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v12

    new-instance v2, Landroid/graphics/Rect;

    const/16 v5, 0x71a

    invoke-direct {v2, v5, v6, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x6

    aput-object v2, v1, v5

    sput-object v1, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION_RIGHT_629:[Landroid/graphics/Rect;

    .line 125
    sput v3, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->ROATTION_0:I

    .line 126
    sput v4, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->ROATTION_90:I

    .line 127
    sput v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->ROATTION_180:I

    .line 128
    sput v9, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->ROATTION_270:I

    .line 129
    const-string v0, "content://cn.nubia.gamelauncher.db.AppAddProvider/appadd?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->URI_GAME_SPACE_PKG:Landroid/net/Uri;

    .line 132
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    nop

    :cond_1
    :goto_0
    sput-boolean v4, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    .line 420
    sput-boolean v3, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->mDialogIsShowing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;
    .locals 12
    .param p0, "rects"    # [Landroid/graphics/Rect;
    .param p1, "rotation"    # I

    .line 257
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 258
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x7

    .line 259
    .local v1, "setAreakeyNum":I
    array-length v2, p0

    if-ne v1, v2, :cond_1

    .line 260
    const-string v2, "HandShankScreenMapHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildCoordinateString, rect[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v5, p0, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", rects[1] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v6, p0, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", rects[2] = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget-object v7, p0, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", rects[3] = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    aget-object v8, p0, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", rects[4] = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    aget-object v9, p0, v8

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", rects[5] = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x5

    aget-object v10, p0, v9

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", rects[6] = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x6

    aget-object v11, p0, v10

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v2, -0x1

    if-eq v2, p1, :cond_0

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v5

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v5

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v5

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v5

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v6

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v6

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v6

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v6

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v7

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v7

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v7

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v7

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v8

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v8

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v8

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v8

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v9

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v9

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v9

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v9

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v10

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v10

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v10

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v10

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    :cond_1
    const-string v2, "HandShankScreenMapHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildCoordinateString, value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getAndSaveDefaultMainScreenRects(Landroid/content/Context;Ljava/lang/String;I)[Landroid/graphics/Rect;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "rotation"    # I

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "tRects":[Landroid/graphics/Rect;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "NX629J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 343
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_629:[Landroid/graphics/Rect;

    goto :goto_0

    .line 345
    :cond_0
    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_629:[Landroid/graphics/Rect;

    goto :goto_0

    .line 347
    :cond_1
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_629:[Landroid/graphics/Rect;

    goto :goto_0

    .line 349
    :cond_2
    const-string v1, "com.netease.zjz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 350
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_629:[Landroid/graphics/Rect;

    goto :goto_0

    .line 353
    :cond_3
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 354
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD:[Landroid/graphics/Rect;

    goto :goto_0

    .line 355
    :cond_4
    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM:[Landroid/graphics/Rect;

    goto :goto_0

    .line 357
    :cond_5
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 358
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD:[Landroid/graphics/Rect;

    goto :goto_0

    .line 359
    :cond_6
    const-string v1, "com.netease.zjz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 360
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ:[Landroid/graphics/Rect;

    .line 363
    :cond_7
    :goto_0
    invoke-static {v0, p2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "targetPos":Ljava/lang/String;
    const-string/jumbo v2, "main_"

    invoke-static {p0, p1, v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-object v0
.end method

.method public static getDefaultGameDefaultLocation(Ljava/lang/String;)[Landroid/graphics/Rect;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "tRects":[Landroid/graphics/Rect;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "NX629J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_629:[Landroid/graphics/Rect;

    goto :goto_0

    .line 373
    :cond_0
    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_629:[Landroid/graphics/Rect;

    goto :goto_0

    .line 375
    :cond_1
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_629:[Landroid/graphics/Rect;

    goto :goto_0

    .line 377
    :cond_2
    const-string v1, "com.netease.zjz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 378
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_629:[Landroid/graphics/Rect;

    goto :goto_0

    .line 381
    :cond_3
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 382
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD:[Landroid/graphics/Rect;

    goto :goto_0

    .line 383
    :cond_4
    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 384
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM:[Landroid/graphics/Rect;

    goto :goto_0

    .line 385
    :cond_5
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 386
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD:[Landroid/graphics/Rect;

    goto :goto_0

    .line 387
    :cond_6
    const-string v1, "com.netease.zjz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 388
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ:[Landroid/graphics/Rect;

    .line 391
    :cond_7
    :goto_0
    return-object v0
.end method

.method public static getDefaultGameDefaultLocationRight(Ljava/lang/String;)[Landroid/graphics/Rect;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "tRects":[Landroid/graphics/Rect;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "NX629J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_RIGHT_629:[Landroid/graphics/Rect;

    goto :goto_0

    .line 399
    :cond_0
    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_RIGHT_629:[Landroid/graphics/Rect;

    goto :goto_0

    .line 401
    :cond_1
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_RIGHT_629:[Landroid/graphics/Rect;

    goto :goto_0

    .line 403
    :cond_2
    const-string v1, "com.netease.zjz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 404
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_RIGHT_629:[Landroid/graphics/Rect;

    goto :goto_0

    .line 407
    :cond_3
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 408
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_CHIJIGAME_RIGHT:[Landroid/graphics/Rect;

    goto :goto_0

    .line 409
    :cond_4
    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 410
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_CHIJIGAME_RIGHT:[Landroid/graphics/Rect;

    goto :goto_0

    .line 411
    :cond_5
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 412
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_RIGHT:[Landroid/graphics/Rect;

    goto :goto_0

    .line 413
    :cond_6
    const-string v1, "com.netease.zjz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 414
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_RIGHT:[Landroid/graphics/Rect;

    .line 417
    :cond_7
    :goto_0
    return-object v0
.end method

.method public static getDefaultPositionLeft()[Landroid/graphics/Rect;
    .locals 2

    .line 135
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX629J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION_629:[Landroid/graphics/Rect;

    return-object v0

    .line 138
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getDefaultPositionRight()[Landroid/graphics/Rect;
    .locals 2

    .line 142
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX629J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION_RIGHT_629:[Landroid/graphics/Rect;

    return-object v0

    .line 145
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION_RIGHT:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "positionStr":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hand_shank_screen_map_"

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

    .line 237
    :cond_0
    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HandShankScreenMapHelper"

    const-string v3, "getFloatViewPosition, fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getHandLRDirection(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 616
    const/4 v0, 0x0

    move v1, v0

    .line 618
    .local v1, "handDirection":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_hand_shank_hand_left_or_right"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 621
    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 622
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1
.end method

.method public static getHasSetAreaStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 650
    const/4 v0, 0x0

    move v1, v0

    .line 652
    .local v1, "hasSetAreaStatus":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_hand_shank_hasSetArea_Status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 655
    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 656
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1
.end method

.method public static getMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 633
    const/4 v0, 0x0

    move v1, v0

    .line 635
    .local v1, "moveAreaDirection":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_hand_shank_moveArea_direction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 638
    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 639
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1
.end method

.method public static inGameSpacePkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 583
    const/4 v0, 0x0

    .line 585
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->URI_GAME_SPACE_PKG:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, " component like ?"

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 587
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 591
    move v1, v8

    goto :goto_0

    .line 587
    :cond_0
    nop

    .line 591
    :goto_0
    if-eqz v0, :cond_1

    .line 592
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_1
    return v1

    .line 591
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 588
    :catch_0
    move-exception v2

    .line 589
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v0, :cond_3

    .line 592
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 595
    :cond_3
    return v1

    .line 591
    :goto_1
    if-eqz v0, :cond_4

    .line 592
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static isDefaultGame(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "enable":Z
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.tmgp.pubgm"

    .line 152
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.netease.hyxd"

    .line 153
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.netease.zjz"

    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x1

    .line 157
    :cond_1
    return v0
.end method

.method public static isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "enable":Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    return v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hand_shank_map_enable_game_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "enableGameList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
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

    .line 172
    .end local v1    # "enableGameList":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HandShankScreenMapHelper"

    const-string/jumbo v3, "isGameTouchEnabled, fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static isHandShankMapViewShowing(Z)V
    .locals 0
    .param p0, "isShowing"    # Z

    .line 422
    sput-boolean p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->mDialogIsShowing:Z

    .line 423
    return-void
.end method

.method public static parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;
    .locals 14
    .param p0, "positionSet"    # [I
    .param p1, "type"    # Ljava/lang/String;

    .line 280
    const/16 v0, 0x1c

    .line 281
    .local v0, "rectAllSize":I
    const/4 v1, 0x7

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x3

    aput-object v3, v2, v7

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x5

    aput-object v3, v2, v9

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v10, 0x6

    aput-object v3, v2, v10

    .line 282
    .local v2, "rects":[Landroid/graphics/Rect;
    const-string/jumbo v3, "main_"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    array-length v3, p0

    if-lt v3, v0, :cond_0

    .line 283
    aget-object v3, v2, v4

    aget v4, p0, v5

    aget v11, p0, v6

    aget v12, p0, v7

    aget v13, p0, v8

    invoke-virtual {v3, v4, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 284
    aget-object v3, v2, v5

    aget v4, p0, v9

    aget v5, p0, v10

    aget v1, p0, v1

    const/16 v11, 0x8

    aget v11, p0, v11

    invoke-virtual {v3, v4, v5, v1, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 285
    aget-object v1, v2, v6

    const/16 v3, 0x9

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p0, v4

    const/16 v5, 0xb

    aget v5, p0, v5

    const/16 v6, 0xc

    aget v6, p0, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 286
    aget-object v1, v2, v7

    const/16 v3, 0xd

    aget v3, p0, v3

    const/16 v4, 0xe

    aget v4, p0, v4

    const/16 v5, 0xf

    aget v5, p0, v5

    const/16 v6, 0x10

    aget v6, p0, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 287
    aget-object v1, v2, v8

    const/16 v3, 0x11

    aget v3, p0, v3

    const/16 v4, 0x12

    aget v4, p0, v4

    const/16 v5, 0x13

    aget v5, p0, v5

    const/16 v6, 0x14

    aget v6, p0, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 288
    aget-object v1, v2, v9

    const/16 v3, 0x15

    aget v3, p0, v3

    const/16 v4, 0x16

    aget v4, p0, v4

    const/16 v5, 0x17

    aget v5, p0, v5

    const/16 v6, 0x18

    aget v6, p0, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    aget-object v1, v2, v10

    const/16 v3, 0x19

    aget v3, p0, v3

    const/16 v4, 0x1a

    aget v4, p0, v4

    const/16 v5, 0x1b

    aget v5, p0, v5

    const/16 v6, 0x1c

    aget v6, p0, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 293
    return-object v2

    .line 291
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static rectToPoint(Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 3
    .param p0, "rect"    # Landroid/graphics/Rect;

    .line 576
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 577
    .local v0, "pointX":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 578
    .local v1, "pointY":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 579
    .local v2, "point":Landroid/graphics/Point;
    return-object v2
.end method

.method private static reduceRectArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "rect"    # Landroid/graphics/Rect;

    .line 297
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0xa

    .line 298
    .local v0, "offseth":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0xa

    .line 299
    .local v1, "offsetv":I
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    .line 300
    .local v2, "left":I
    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    .line 301
    .local v3, "right":I
    iget v4, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    .line 302
    .local v4, "top":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    .line 303
    .local v5, "bottom":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method public static resumeDefaultDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 332
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 333
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 334
    .local v1, "rotation":I
    invoke-static {p0, p1, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getAndSaveDefaultMainScreenRects(Landroid/content/Context;Ljava/lang/String;I)[Landroid/graphics/Rect;

    move-result-object v2

    .line 335
    .local v2, "tRects":[Landroid/graphics/Rect;
    invoke-static {p0, v2, v1, p1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;)V

    .line 336
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 337
    invoke-static {p0, p1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 338
    return-void
.end method

.method public static resumeDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 307
    move-object/from16 v1, p1

    const/16 v2, 0x1c

    .line 308
    .local v2, "rectAllSize":I
    const/4 v3, 0x7

    new-array v4, v3, [Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x3

    aput-object v5, v4, v9

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v10, 0x4

    aput-object v5, v4, v10

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x5

    aput-object v5, v4, v11

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v12, 0x6

    aput-object v5, v4, v12

    .line 309
    .local v4, "tRects":[Landroid/graphics/Rect;
    const-string/jumbo v5, "main_"

    invoke-static {v0, v1, v5}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "targetPos":Ljava/lang/String;
    const/4 v13, 0x0

    .line 311
    .local v13, "rotation":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    invoke-static {v5}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v14

    .line 315
    .local v14, "posSet":[I
    if-eqz v14, :cond_1

    array-length v15, v14

    if-lt v15, v2, :cond_1

    .line 316
    aget v13, v14, v6

    .line 317
    aget-object v6, v4, v6

    aget v15, v14, v7

    aget v3, v14, v8

    aget v8, v14, v9

    aget v9, v14, v10

    invoke-virtual {v6, v15, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 318
    aget-object v3, v4, v7

    aget v6, v14, v11

    aget v8, v14, v12

    const/4 v9, 0x7

    aget v9, v14, v9

    const/16 v15, 0x8

    aget v15, v14, v15

    invoke-virtual {v3, v6, v8, v9, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 319
    const/4 v3, 0x2

    aget-object v3, v4, v3

    const/16 v6, 0x9

    aget v6, v14, v6

    const/16 v8, 0xa

    aget v8, v14, v8

    const/16 v9, 0xb

    aget v9, v14, v9

    const/16 v15, 0xc

    aget v15, v14, v15

    invoke-virtual {v3, v6, v8, v9, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 320
    const/4 v3, 0x3

    aget-object v3, v4, v3

    const/16 v6, 0xd

    aget v6, v14, v6

    const/16 v8, 0xe

    aget v8, v14, v8

    const/16 v9, 0xf

    aget v9, v14, v9

    const/16 v15, 0x10

    aget v15, v14, v15

    invoke-virtual {v3, v6, v8, v9, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 321
    aget-object v3, v4, v10

    const/16 v6, 0x11

    aget v6, v14, v6

    const/16 v8, 0x12

    aget v8, v14, v8

    const/16 v9, 0x13

    aget v9, v14, v9

    const/16 v10, 0x14

    aget v10, v14, v10

    invoke-virtual {v3, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 322
    aget-object v3, v4, v11

    const/16 v6, 0x15

    aget v6, v14, v6

    const/16 v8, 0x16

    aget v8, v14, v8

    const/16 v9, 0x17

    aget v9, v14, v9

    const/16 v10, 0x18

    aget v10, v14, v10

    invoke-virtual {v3, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 323
    aget-object v3, v4, v12

    const/16 v6, 0x19

    aget v6, v14, v6

    const/16 v8, 0x1a

    aget v8, v14, v8

    const/16 v9, 0x1b

    aget v9, v14, v9

    const/16 v10, 0x1c

    aget v10, v14, v10

    invoke-virtual {v3, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 326
    .end local v14    # "posSet":[I
    :cond_1
    invoke-static {v0, v4, v13, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;)V

    .line 327
    invoke-static {v0, v7}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 328
    return-void
.end method

.method public static saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "positions"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 216
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hand_shank_screen_map_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_1

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "HandShankScreenMapHelper"

    const-string/jumbo v2, "saveFloatViewPosition, fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static saveHandLRDirection(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "handDirection"    # I

    .line 610
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_hand_shank_hand_left_or_right"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static saveHasSetAreaStatus(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hasSetAreaStatus"    # I

    .line 644
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_hand_shank_hasSetArea_Status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static saveMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "moveAreaDirection"    # I

    .line 627
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_hand_shank_moveArea_direction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 631
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static setDoubleScreenTouchEnable(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 425
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HandShankScreenMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDoubleScreenTouchEnable, enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDialogIsShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->mDialogIsShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    :try_start_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->mDialogIsShowing:Z

    if-eqz v0, :cond_1

    .line 428
    const/4 p1, 0x0

    .line 430
    :cond_1
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 431
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const-class v1, Landroid/hardware/input/InputManager;

    const-string/jumbo v2, "setGamepadEnable"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 432
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HandShankScreenMapHelper"

    const-string/jumbo v2, "setDoubleScreenTouchEnable, fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;)V
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targets"    # [Landroid/graphics/Rect;
    .param p2, "rotation"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 439
    move-object/from16 v3, p3

    const/4 v0, 0x0

    .line 441
    .local v0, "gamepadId":I
    const/4 v4, 0x0

    :try_start_0
    aget-object v5, v2, v4

    .line 442
    .local v5, "L":Landroid/graphics/Rect;
    const/4 v6, 0x1

    aget-object v7, v2, v6

    .line 443
    .local v7, "R":Landroid/graphics/Rect;
    const/4 v8, 0x2

    aget-object v9, v2, v8

    .line 444
    .local v9, "A":Landroid/graphics/Rect;
    const/4 v10, 0x3

    aget-object v11, v2, v10

    .line 445
    .local v11, "B":Landroid/graphics/Rect;
    const/4 v12, 0x4

    aget-object v13, v2, v12

    .line 446
    .local v13, "X":Landroid/graphics/Rect;
    const/4 v14, 0x5

    aget-object v15, v2, v14

    .line 447
    .local v15, "Y":Landroid/graphics/Rect;
    const/16 v16, 0x6

    aget-object v17, v2, v16

    move-object/from16 v18, v17

    .line 449
    .local v18, "MoveArea":Landroid/graphics/Rect;
    array-length v14, v2

    .line 450
    .local v14, "size":I
    new-array v12, v14, [Landroid/graphics/Point;

    .line 451
    .local v12, "newTarget":[Landroid/graphics/Point;
    move/from16 v17, v4

    .line 451
    .local v17, "i":I
    :goto_0
    move/from16 v19, v17

    .line 451
    .end local v17    # "i":I
    .local v19, "i":I
    move/from16 v10, v19

    if-ge v10, v14, :cond_0

    .line 452
    .end local v19    # "i":I
    .local v10, "i":I
    aget-object v8, v2, v10

    invoke-static {v8}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->rectToPoint(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v8

    aput-object v8, v12, v10

    .line 451
    add-int/lit8 v17, v10, 0x1

    .line 451
    .end local v10    # "i":I
    .restart local v17    # "i":I
    const/4 v8, 0x2

    const/4 v10, 0x3

    goto :goto_0

    .line 454
    .end local v17    # "i":I
    :cond_0
    const/4 v8, 0x7

    if-ge v14, v8, :cond_1

    .line 455
    const-string v4, "HandShankScreenMapHelper"

    const-string v6, "dont have 7 point"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void

    .line 458
    :cond_1
    aget-object v4, v12, v4

    .line 459
    .local v4, "pointL":Landroid/graphics/Point;
    aget-object v6, v12, v6

    .line 460
    .local v6, "pointR":Landroid/graphics/Point;
    const/4 v8, 0x2

    aget-object v10, v12, v8

    move-object v8, v10

    .line 461
    .local v8, "pointA":Landroid/graphics/Point;
    const/4 v10, 0x3

    aget-object v10, v12, v10

    .line 462
    .local v10, "pointB":Landroid/graphics/Point;
    const/16 v17, 0x4

    aget-object v17, v12, v17

    move-object/from16 v20, v17

    .line 463
    .local v20, "pointX":Landroid/graphics/Point;
    const/16 v17, 0x5

    aget-object v17, v12, v17

    move-object/from16 v21, v17

    .line 464
    .local v21, "pointY":Landroid/graphics/Point;
    aget-object v16, v12, v16

    move-object/from16 v22, v16

    .line 465
    .local v22, "pointMArea":Landroid/graphics/Point;
    move-object/from16 v23, v5

    move-object/from16 v2, v18

    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 465
    .end local v5    # "L":Landroid/graphics/Rect;
    .end local v18    # "MoveArea":Landroid/graphics/Rect;
    .local v2, "MoveArea":Landroid/graphics/Rect;
    .local v23, "L":Landroid/graphics/Rect;
    move-object/from16 v24, v7

    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 465
    .end local v7    # "R":Landroid/graphics/Rect;
    .local v24, "R":Landroid/graphics/Rect;
    sub-int/2addr v5, v7

    const/4 v7, 0x2

    div-int/2addr v5, v7

    .line 466
    .local v5, "radius":I
    invoke-static {v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getHandLRDirection(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 467
    .local v7, "handLRDirection":I
    invoke-static {v1, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    move/from16 v25, v16

    .line 468
    .local v25, "moveArearDirection":I
    move-object/from16 v26, v2

    const-string v2, "HandShankScreenMapHelper"

    .line 468
    .end local v2    # "MoveArea":Landroid/graphics/Rect;
    .local v26, "MoveArea":Landroid/graphics/Rect;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v9

    const-string/jumbo v9, "setDoubleScreenTouchRects handLRDirection:"

    .line 468
    .end local v9    # "A":Landroid/graphics/Rect;
    .local v27, "A":Landroid/graphics/Rect;
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " moveArearDirection:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v25

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v25    # "moveArearDirection":I
    .local v9, "moveArearDirection":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/16 v2, 0x68

    const/4 v3, -0x1

    if-nez v7, :cond_4

    .line 471
    invoke-static {v1, v0, v2, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 472
    const/16 v2, 0x66

    invoke-static {v1, v0, v2, v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 473
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    const/16 v3, 0x69

    invoke-static {v1, v0, v3, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 474
    new-instance v3, Landroid/graphics/Point;

    const/4 v2, -0x1

    invoke-direct {v3, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/16 v2, 0x67

    invoke-static {v1, v0, v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 476
    sget v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->ROATTION_0:I

    if-ne v9, v2, :cond_2

    .line 477
    const/16 v2, 0x60

    invoke-static {v1, v0, v2, v8}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 478
    const/16 v2, 0x61

    invoke-static {v1, v0, v2, v10}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 479
    move-object/from16 v3, v20

    const/16 v2, 0x63

    invoke-static {v1, v0, v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 480
    .end local v20    # "pointX":Landroid/graphics/Point;
    .local v3, "pointX":Landroid/graphics/Point;
    move/from16 v28, v7

    move-object/from16 v2, v21

    const/16 v7, 0x64

    invoke-static {v1, v0, v7, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 480
    .end local v7    # "handLRDirection":I
    .end local v21    # "pointY":Landroid/graphics/Point;
    .local v2, "pointY":Landroid/graphics/Point;
    .local v28, "handLRDirection":I
    goto :goto_1

    .line 481
    .end local v2    # "pointY":Landroid/graphics/Point;
    .end local v3    # "pointX":Landroid/graphics/Point;
    .end local v28    # "handLRDirection":I
    .restart local v7    # "handLRDirection":I
    .restart local v20    # "pointX":Landroid/graphics/Point;
    .restart local v21    # "pointY":Landroid/graphics/Point;
    :cond_2
    move/from16 v28, v7

    move-object/from16 v3, v20

    move-object/from16 v2, v21

    .line 481
    .end local v7    # "handLRDirection":I
    .end local v20    # "pointX":Landroid/graphics/Point;
    .end local v21    # "pointY":Landroid/graphics/Point;
    .restart local v2    # "pointY":Landroid/graphics/Point;
    .restart local v3    # "pointX":Landroid/graphics/Point;
    .restart local v28    # "handLRDirection":I
    sget v7, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->ROATTION_270:I

    if-ne v9, v7, :cond_3

    .line 482
    const/16 v7, 0x60

    invoke-static {v1, v0, v7, v10}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 483
    const/16 v7, 0x61

    invoke-static {v1, v0, v7, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 484
    const/16 v7, 0x63

    invoke-static {v1, v0, v7, v8}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 485
    const/16 v7, 0x64

    invoke-static {v1, v0, v7, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 505
    :cond_3
    :goto_1
    move-object v7, v2

    move-object/from16 v29, v4

    goto :goto_2

    .line 488
    .end local v2    # "pointY":Landroid/graphics/Point;
    .end local v3    # "pointX":Landroid/graphics/Point;
    .end local v28    # "handLRDirection":I
    .restart local v7    # "handLRDirection":I
    .restart local v20    # "pointX":Landroid/graphics/Point;
    .restart local v21    # "pointY":Landroid/graphics/Point;
    :cond_4
    move/from16 v28, v7

    move-object/from16 v3, v20

    move-object/from16 v7, v21

    .line 488
    .end local v20    # "pointX":Landroid/graphics/Point;
    .end local v21    # "pointY":Landroid/graphics/Point;
    .restart local v3    # "pointX":Landroid/graphics/Point;
    .local v7, "pointY":Landroid/graphics/Point;
    .restart local v28    # "handLRDirection":I
    const/16 v2, 0x69

    invoke-static {v1, v0, v2, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 489
    const/16 v2, 0x67

    invoke-static {v1, v0, v2, v6}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 490
    new-instance v2, Landroid/graphics/Point;

    move-object/from16 v29, v4

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 490
    .end local v4    # "pointL":Landroid/graphics/Point;
    .local v29, "pointL":Landroid/graphics/Point;
    const/16 v4, 0x68

    invoke-static {v1, v0, v4, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 491
    new-instance v2, Landroid/graphics/Point;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    const/16 v4, 0x66

    invoke-static {v1, v0, v4, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 493
    sget v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->ROATTION_0:I

    if-ne v9, v2, :cond_5

    .line 494
    const/16 v2, 0x64

    invoke-static {v1, v0, v2, v8}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 495
    const/16 v2, 0x63

    invoke-static {v1, v0, v2, v10}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 496
    const/16 v2, 0x61

    invoke-static {v1, v0, v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 497
    const/16 v2, 0x60

    invoke-static {v1, v0, v2, v7}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    goto :goto_2

    .line 498
    :cond_5
    sget v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->ROATTION_270:I

    if-ne v9, v2, :cond_6

    .line 499
    const/16 v2, 0x64

    invoke-static {v1, v0, v2, v10}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 500
    const/16 v2, 0x63

    invoke-static {v1, v0, v2, v7}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 501
    const/16 v2, 0x61

    invoke-static {v1, v0, v2, v8}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 502
    const/16 v2, 0x60

    invoke-static {v1, v0, v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 505
    :cond_6
    :goto_2
    move-object/from16 v2, v22

    invoke-static {v1, v0, v2, v5}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setJoystickTouchRange(Landroid/content/Context;ILandroid/graphics/Point;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v0    # "gamepadId":I
    .end local v3    # "pointX":Landroid/graphics/Point;
    .end local v5    # "radius":I
    .end local v6    # "pointR":Landroid/graphics/Point;
    .end local v7    # "pointY":Landroid/graphics/Point;
    .end local v8    # "pointA":Landroid/graphics/Point;
    .end local v9    # "moveArearDirection":I
    .end local v10    # "pointB":Landroid/graphics/Point;
    .end local v11    # "B":Landroid/graphics/Rect;
    .end local v12    # "newTarget":[Landroid/graphics/Point;
    .end local v13    # "X":Landroid/graphics/Rect;
    .end local v14    # "size":I
    .end local v15    # "Y":Landroid/graphics/Rect;
    .end local v22    # "pointMArea":Landroid/graphics/Point;
    .end local v23    # "L":Landroid/graphics/Rect;
    .end local v24    # "R":Landroid/graphics/Rect;
    .end local v26    # "MoveArea":Landroid/graphics/Rect;
    .end local v27    # "A":Landroid/graphics/Rect;
    .end local v28    # "handLRDirection":I
    .end local v29    # "pointL":Landroid/graphics/Point;
    goto :goto_3

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    return-void
.end method

.method public static setGamepadID(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gamePadId"    # I
    .param p2, "addrBE"    # Ljava/lang/String;

    .line 564
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HandShankScreenMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGamepadID, gamePadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " addrBE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    :try_start_0
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 567
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const-class v1, Landroid/hardware/input/InputManager;

    const-string/jumbo v2, "setGamepadID"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 569
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HandShankScreenMapHelper"

    const-string/jumbo v2, "setGamepadID, fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setJoystickCenterOffset(Landroid/content/Context;FF)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 553
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HandShankScreenMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setJoystickCenterOffset, x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    :try_start_0
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 556
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const-class v1, Landroid/hardware/input/InputManager;

    const-string/jumbo v2, "setJoystickCenterOffset"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 558
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HandShankScreenMapHelper"

    const-string/jumbo v2, "setJoystickCenterOffset, fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setJoystickDirection(Landroid/content/Context;IILjava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gamePadId"    # I
    .param p2, "direction"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 534
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HandShankScreenMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setJoystickDirection, gamePadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    :try_start_0
    invoke-static {p0, p3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getHandLRDirection(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 538
    .local v0, "handLRDirection":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->ROATTION_0:I

    if-ne p2, v2, :cond_1

    .line 539
    sget v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->ROATTION_180:I

    move p2, v2

    .line 541
    :cond_1
    if-nez v0, :cond_2

    sget v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->ROATTION_270:I

    if-ne p2, v2, :cond_2

    .line 542
    sget v2, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->ROATTION_90:I

    move p2, v2

    .line 544
    :cond_2
    const-string/jumbo v2, "input"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 545
    .local v2, "inputManager":Landroid/hardware/input/InputManager;
    const-class v3, Landroid/hardware/input/InputManager;

    const-string/jumbo v4, "setJoystickDirection"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 547
    .local v3, "method":Ljava/lang/reflect/Method;
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .end local v0    # "handLRDirection":I
    .end local v2    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HandShankScreenMapHelper"

    const-string/jumbo v2, "setJoystickDirection, fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setJoystickTouchRange(Landroid/content/Context;ILandroid/graphics/Point;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gamePadId"    # I
    .param p2, "point"    # Landroid/graphics/Point;
    .param p3, "radius"    # I

    .line 523
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HandShankScreenMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setJoystickTouchRange, gamePadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " radius:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    :try_start_0
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 526
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const-class v1, Landroid/hardware/input/InputManager;

    const-string/jumbo v2, "setJoystickTouchRange"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 528
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p2, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

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
    const-string v1, "HandShankScreenMapHelper"

    const-string/jumbo v2, "setJoystickTouchRange, fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gamePadId"    # I
    .param p2, "keyCode"    # I
    .param p3, "point"    # Landroid/graphics/Point;

    .line 511
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HandShankScreenMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKeyTouchPoint, gamePadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    const/4 v0, 0x0

    .line 514
    .local v0, "isSendKey":Z
    :try_start_0
    const-string/jumbo v1, "input"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 515
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    const-class v2, Landroid/hardware/input/InputManager;

    const-string/jumbo v3, "setKeyTouchPoint"

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v6, v5, v10

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x4

    aput-object v6, v5, v11

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 517
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    iget v4, p3, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    iget v4, p3, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v0    # "isSendKey":Z
    .end local v1    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HandShankScreenMapHelper"

    const-string/jumbo v2, "setKeyTouchPoint, fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static showScreenTouchesDot(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "display"    # Z

    .line 606
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .line 207
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->mToast:Landroid/widget/Toast;

    .line 210
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 211
    sget-object v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    return-void
.end method

.method public static toPositionSet(Ljava/lang/String;)[I
    .locals 7
    .param p0, "positions"    # Ljava/lang/String;

    .line 242
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "posSet":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 248
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 249
    .local v2, "index":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 250
    .local v5, "pos":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v2

    .line 251
    add-int/lit8 v2, v2, 0x1

    .line 249
    .end local v5    # "pos":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 253
    :cond_1
    return-object v1

    .line 243
    .end local v0    # "posSet":[Ljava/lang/String;
    .end local v1    # "result":[I
    .end local v2    # "index":I
    :cond_2
    :goto_1
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "HandShankScreenMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toPositionSet, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is invalid !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 177
    if-eqz p1, :cond_8

    const-string v0, "cn.nubia.gamelauncher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "cn.nubia.launcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "pkgNameValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hand_shank_map_enable_game_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "enableGameList":Ljava/lang/String;
    const-string v2, ""

    .line 184
    .local v2, "updateGameList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    if-eqz p2, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    move-object v2, v3

    goto :goto_3

    .line 187
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 188
    if-eqz p2, :cond_3

    const-string v3, ""

    goto :goto_1

    :cond_3
    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v2, v3

    .line 189
    if-nez p2, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 190
    const-string v3, "HandShankScreenMapHelper"

    const-string/jumbo v4, "updateEnabledGameList, clearn!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hand_shank_map_enable_game_list"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    return-void

    .line 195
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

    .line 198
    :cond_6
    :goto_3
    const-string v3, "HandShankScreenMapHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEnabledGameList, updateGameList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    .line 200
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hand_shank_map_enable_game_list"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "enableGameList":Ljava/lang/String;
    .end local v2    # "updateGameList":Ljava/lang/String;
    goto :goto_4

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "HandShankScreenMapHelper"

    const-string/jumbo v3, "updateEnabledGameList, fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 178
    .end local v0    # "pkgNameValue":Ljava/lang/String;
    :cond_8
    :goto_5
    return-void
.end method

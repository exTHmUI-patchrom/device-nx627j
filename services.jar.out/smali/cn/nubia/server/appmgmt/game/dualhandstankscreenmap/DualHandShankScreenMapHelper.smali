.class public Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;
.super Ljava/lang/Object;
.source "DualHandShankScreenMapHelper.java"


# static fields
.field public static final ACTION_GAMEHANDLE_CONNECTED_STATE:Ljava/lang/String; = "cn.nubia.gamelauncher.ACTION_GAMEHANDLE_CONNECTION_STATE_CHANGE"

.field public static final ACTION_HAND_SHANK_SCREEN_MAP_OPTION:Ljava/lang/String; = "cn.nubia.intent.action.HAND_SHANK_SCREEN_MAP_OPTION"

.field public static final ACTION_HAND_SHANK_SCREEN_MAP_OPTION_TEST:Ljava/lang/String; = "cn.nubia.intent.action.HAND_SHANK_SCREEN_MAP_OPTION_TEST"

.field private static DEBUG:Z = false

.field public static final DEFAULT_NOT_DEFAULT_GAME_POSITION:[Landroid/graphics/Rect;

.field public static final DEFAULT_NOT_DEFAULT_GAME_POSITION_629:[Landroid/graphics/Rect;

.field public static final DEFAULT_NOT_DEFAULT_GAME_POSITION_RIGHT:[Landroid/graphics/Rect;

.field public static final DEFAULT_NOT_DEFAULT_GAME_POSITION_RIGHT_629:[Landroid/graphics/Rect;

.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field private static final ENABLE_DUAL_HAND_SHANK_GAME_LIST:Ljava/lang/String; = "dual_hand_shank_map_enable_game_list"

.field private static final GAME_APP_NAME:Ljava/lang/String; = "cn.nubia.gamelauncher"

.field public static final GAME_ID_LEFT:I = 0x0

.field public static final GAME_ID_RIGHT:I = 0x1

.field public static final GAME_NETEASE_DWRG:Ljava/lang/String; = "com.netease.dwrg"

.field public static final GAME_NETEASE_HYXD_PRE:Ljava/lang/String; = "com.netease.hyxd"

.field public static final GAME_NETEASE_ZJZ_PRE:Ljava/lang/String; = "com.netease.zjz"

.field public static final GAME_TENCENT_CF:Ljava/lang/String; = "com.tencent.tmgp.cf"

.field public static final GAME_TENCENT_PUBGM:Ljava/lang/String; = "com.tencent.tmgp.pubgm"

.field public static final GAME_TENCENT_PUBGMHD:Ljava/lang/String; = "com.tencent.tmgp.pubgmhd"

.field public static final GAME_TENCENT_SGAME:Ljava/lang/String; = "com.tencent.tmgp.sgame"

.field public static final GAME_TENCENT_SPEEDMOBILE:Ljava/lang/String; = "com.tencent.tmgp.speedmobile"

.field private static final HAND_SHANK_LEFT_OR_RIGHT:Ljava/lang/String; = "dual_hand_shank_left_or_right_"

.field private static final HOME_APP_NAME:Ljava/lang/String; = "cn.nubia.launcher"

.field public static final KEY_LEFT_HAND:Ljava/lang/String; = "left_"

.field public static final KEY_RIGHT_HAND:Ljava/lang/String; = "right_"

.field private static final MOVE_AREA_DIRECTION:Ljava/lang/String; = "dual_hand_shank_moveArea_direction_"

.field public static final PRE_HAND_SHANK_SCREEN_MAP:Ljava/lang/String; = "dual_hand_shank_screen_map_"

.field private static ROATTION_0:I = 0x0

.field private static ROATTION_180:I = 0x0

.field private static ROATTION_270:I = 0x0

.field private static ROATTION_90:I = 0x0

.field public static final TAG:Ljava/lang/String; = "DualHandShankScreenMapHelper"

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

    .line 50
    const/4 v0, 0x7

    new-array v1, v0, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x2af

    const/16 v4, 0x24f

    const/16 v5, 0x3a8

    const/16 v6, 0x408

    invoke-direct {v2, v5, v4, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/Rect;

    const/16 v6, 0x468

    const/16 v7, 0x4c8

    invoke-direct {v2, v6, v4, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x1

    aput-object v2, v1, v6

    new-instance v2, Landroid/graphics/Rect;

    const/16 v7, 0x348

    const/16 v8, 0x2f4

    const/16 v9, 0x6c9

    const/16 v10, 0x71d

    invoke-direct {v2, v9, v8, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x2

    aput-object v2, v1, v9

    new-instance v2, Landroid/graphics/Rect;

    const/16 v10, 0x2e5

    const/16 v11, 0x291

    const/16 v12, 0x72c

    const/16 v13, 0x780

    invoke-direct {v2, v12, v11, v13, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v12, 0x3

    aput-object v2, v1, v12

    new-instance v2, Landroid/graphics/Rect;

    const/16 v13, 0x666

    const/16 v14, 0x6ba

    invoke-direct {v2, v13, v11, v14, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x4

    aput-object v2, v1, v13

    new-instance v2, Landroid/graphics/Rect;

    const/16 v14, 0x282

    const/16 v15, 0x22e

    const/16 v13, 0x6c9

    const/16 v12, 0x71d

    invoke-direct {v2, v13, v15, v12, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v12, 0x5

    aput-object v2, v1, v12

    new-instance v2, Landroid/graphics/Rect;

    const/16 v13, 0xf0

    invoke-direct {v2, v13, v15, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x6

    aput-object v2, v1, v13

    sput-object v1, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION:[Landroid/graphics/Rect;

    .line 53
    new-array v1, v0, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v13, 0x3a8

    const/16 v0, 0x408

    invoke-direct {v2, v13, v4, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v5

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x468

    const/16 v13, 0x4c8

    invoke-direct {v0, v2, v4, v13, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v0, v1, v6

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x153

    const/16 v13, 0x1a7

    invoke-direct {v0, v2, v8, v13, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v0, v1, v9

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x1b6

    const/16 v13, 0x20a

    invoke-direct {v0, v2, v11, v13, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0xf0

    const/16 v13, 0x144

    invoke-direct {v0, v2, v11, v13, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x153

    const/16 v13, 0x1a7

    invoke-direct {v0, v2, v15, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v0, v1, v12

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x666

    invoke-direct {v0, v2, v15, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION_RIGHT:[Landroid/graphics/Rect;

    .line 57
    const/4 v0, 0x7

    new-array v1, v0, [Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x402

    const/16 v13, 0x462

    invoke-direct {v0, v2, v4, v13, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v0, v1, v5

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x4c2

    const/16 v13, 0x522

    invoke-direct {v0, v2, v4, v13, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v0, v1, v6

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x77d

    const/16 v13, 0x7d1

    invoke-direct {v0, v2, v8, v13, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v0, v1, v9

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x7e0

    const/16 v13, 0x834

    invoke-direct {v0, v2, v11, v13, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x71a

    const/16 v13, 0x76e

    invoke-direct {v0, v2, v11, v13, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x77d

    const/16 v13, 0x7d1

    invoke-direct {v0, v2, v15, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v0, v1, v12

    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0xf0

    invoke-direct {v0, v2, v15, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION_629:[Landroid/graphics/Rect;

    .line 60
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x402

    const/16 v13, 0x462

    invoke-direct {v1, v2, v4, v13, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x4c2

    const/16 v13, 0x522

    invoke-direct {v1, v2, v4, v13, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x153

    const/16 v3, 0x1a7

    invoke-direct {v1, v2, v8, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v0, v9

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x1b6

    const/16 v3, 0x20a

    invoke-direct {v1, v2, v11, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0xf0

    const/16 v3, 0x144

    invoke-direct {v1, v2, v11, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x153

    const/16 v3, 0x1a7

    invoke-direct {v1, v2, v15, v3, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v0, v12

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x71a

    invoke-direct {v1, v2, v15, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION_RIGHT_629:[Landroid/graphics/Rect;

    .line 73
    sput v5, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->ROATTION_0:I

    .line 74
    sput v6, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->ROATTION_90:I

    .line 75
    sput v9, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->ROATTION_180:I

    .line 76
    const/4 v0, 0x3

    sput v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->ROATTION_270:I

    .line 77
    const-string v0, "content://cn.nubia.gamelauncher.db.AppAddProvider/appadd?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->URI_GAME_SPACE_PKG:Landroid/net/Uri;

    .line 83
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
    move v6, v5

    nop

    :cond_1
    :goto_0
    sput-boolean v6, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    .line 296
    sput-boolean v5, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->mDialogIsShowing:Z

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

    .line 201
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x7

    .line 203
    .local v1, "setAreakeyNum":I
    array-length v2, p0

    if-ne v1, v2, :cond_1

    .line 204
    const-string v2, "DualHandShankScreenMapHelper"

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

    .line 207
    const/4 v2, -0x1

    if-eq v2, p1, :cond_0

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
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

    .line 211
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

    .line 212
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

    .line 213
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

    .line 214
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

    .line 215
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

    .line 216
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

    .line 218
    :cond_1
    const-string v2, "DualHandShankScreenMapHelper"

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

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDefaultPositionLeft()[Landroid/graphics/Rect;
    .locals 2

    .line 86
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX629J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION_629:[Landroid/graphics/Rect;

    return-object v0

    .line 89
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getDefaultPositionRight()[Landroid/graphics/Rect;
    .locals 2

    .line 93
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX629J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION_RIGHT_629:[Landroid/graphics/Rect;

    return-object v0

    .line 96
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEFAULT_NOT_DEFAULT_GAME_POSITION_RIGHT:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "positionStr":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dual_hand_shank_screen_map_"

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

    .line 181
    :cond_0
    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getGamepadDeviceId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "addrBE"    # Ljava/lang/String;

    .line 436
    const/4 v0, -0x1

    .line 438
    .local v0, "gamepadDeviceId":I
    :try_start_0
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DualHandShankScreenMapHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGamepadDeviceId, addrBE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    const-string/jumbo v1, "input"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 440
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    const-class v2, Landroid/hardware/input/InputManager;

    const-string v3, "getGamepadDeviceId"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 441
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 444
    .end local v1    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DualHandShankScreenMapHelper"

    const-string v3, "getGamepadDeviceId, fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getLastHandShankLRChoice(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 480
    const/4 v0, 0x0

    move v1, v0

    .line 482
    .local v1, "handDirection":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dual_hand_shank_left_or_right_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 485
    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 486
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1
.end method

.method public static getMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 499
    const/4 v0, 0x0

    move v1, v0

    .line 501
    .local v1, "moveAreaDirection":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dual_hand_shank_moveArea_direction_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 504
    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 505
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1
.end method

.method public static inGameSpacePkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 455
    const/4 v0, 0x0

    .line 457
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->URI_GAME_SPACE_PKG:Landroid/net/Uri;

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

    .line 459
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 463
    move v1, v8

    goto :goto_0

    .line 459
    :cond_0
    nop

    .line 463
    :goto_0
    if-eqz v0, :cond_1

    .line 464
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_1
    return v1

    .line 463
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 460
    :catch_0
    move-exception v2

    .line 461
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v0, :cond_3

    .line 464
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_3
    return v1

    .line 463
    :goto_1
    if-eqz v0, :cond_4

    .line 464
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static isDefaultGame(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "enable":Z
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.tmgp.pubgm"

    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.netease.hyxd"

    .line 104
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.netease.zjz"

    .line 105
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.tmgp.sgame"

    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x1

    .line 109
    :cond_1
    return v0
.end method

.method public static isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "enable":Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    return v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_hand_shank_map_enable_game_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "enableGameList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
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

    .line 124
    .end local v1    # "enableGameList":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return v0
.end method

.method public static isHandShankMapViewShowing(Z)V
    .locals 0
    .param p0, "isShowing"    # Z

    .line 298
    sput-boolean p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->mDialogIsShowing:Z

    .line 299
    return-void
.end method

.method public static parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;
    .locals 14
    .param p0, "positionSet"    # [I
    .param p1, "type"    # Ljava/lang/String;

    .line 224
    const/16 v0, 0x1d

    .line 225
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

    .line 226
    .local v2, "rects":[Landroid/graphics/Rect;
    if-eqz p0, :cond_0

    array-length v3, p0

    if-lt v3, v0, :cond_0

    .line 227
    aget-object v3, v2, v4

    aget v4, p0, v5

    aget v11, p0, v6

    aget v12, p0, v7

    aget v13, p0, v8

    invoke-virtual {v3, v4, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 228
    aget-object v3, v2, v5

    aget v4, p0, v9

    aget v5, p0, v10

    aget v1, p0, v1

    const/16 v11, 0x8

    aget v11, p0, v11

    invoke-virtual {v3, v4, v5, v1, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 229
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

    .line 230
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

    .line 231
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

    .line 232
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

    .line 233
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

    .line 237
    return-object v2

    .line 235
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static rectToPoint(Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 3
    .param p0, "rect"    # Landroid/graphics/Rect;

    .line 448
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 449
    .local v0, "pointX":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 450
    .local v1, "pointY":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 451
    .local v2, "point":Landroid/graphics/Point;
    return-object v2
.end method

.method private static reduceRectArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "rect"    # Landroid/graphics/Rect;

    .line 241
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0xa

    .line 242
    .local v0, "offseth":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0xa

    .line 243
    .local v1, "offsetv":I
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    .line 244
    .local v2, "left":I
    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    .line 245
    .local v3, "right":I
    iget v4, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    .line 246
    .local v4, "top":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    .line 247
    .local v5, "bottom":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method public static resumeDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 251
    move-object/from16 v1, p1

    const/16 v2, 0x1d

    .line 253
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

    .line 254
    .local v4, "lRects":[Landroid/graphics/Rect;
    const-string/jumbo v5, "left_"

    invoke-static {v0, v1, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, "targetPos":Ljava/lang/String;
    const/4 v13, 0x0

    .line 256
    .local v13, "rotation":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    invoke-static {v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v14

    .line 260
    .local v14, "posSet":[I
    const/16 v16, 0xd

    const/16 v17, 0xc

    const/16 v18, 0xb

    const/16 v19, 0xa

    const/16 v20, 0x9

    const/16 v21, 0x8

    if-eqz v14, :cond_1

    array-length v15, v14

    if-lt v15, v2, :cond_1

    .line 261
    aget v13, v14, v6

    .line 262
    aget-object v15, v4, v6

    aget v6, v14, v7

    aget v3, v14, v8

    aget v8, v14, v9

    aget v9, v14, v10

    invoke-virtual {v15, v6, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 263
    aget-object v3, v4, v7

    aget v6, v14, v11

    aget v8, v14, v12

    const/4 v9, 0x7

    aget v15, v14, v9

    aget v9, v14, v21

    invoke-virtual {v3, v6, v8, v15, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 264
    const/4 v3, 0x2

    aget-object v6, v4, v3

    aget v3, v14, v20

    aget v8, v14, v19

    aget v9, v14, v18

    aget v15, v14, v17

    invoke-virtual {v6, v3, v8, v9, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 265
    const/4 v3, 0x3

    aget-object v6, v4, v3

    aget v3, v14, v16

    const/16 v8, 0xe

    aget v9, v14, v8

    const/16 v8, 0xf

    aget v8, v14, v8

    const/16 v15, 0x10

    aget v15, v14, v15

    invoke-virtual {v6, v3, v9, v8, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 266
    aget-object v3, v4, v10

    const/16 v6, 0x11

    aget v6, v14, v6

    const/16 v8, 0x12

    aget v8, v14, v8

    const/16 v9, 0x13

    aget v9, v14, v9

    const/16 v15, 0x14

    aget v15, v14, v15

    invoke-virtual {v3, v6, v8, v9, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 267
    aget-object v3, v4, v11

    const/16 v6, 0x15

    aget v6, v14, v6

    const/16 v8, 0x16

    aget v8, v14, v8

    const/16 v9, 0x17

    aget v9, v14, v9

    const/16 v15, 0x18

    aget v15, v14, v15

    invoke-virtual {v3, v6, v8, v9, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 268
    aget-object v3, v4, v12

    const/16 v6, 0x19

    aget v6, v14, v6

    const/16 v8, 0x1a

    aget v8, v14, v8

    const/16 v9, 0x1b

    aget v9, v14, v9

    const/16 v15, 0x1c

    aget v15, v14, v15

    invoke-virtual {v3, v6, v8, v9, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 271
    .end local v14    # "posSet":[I
    :cond_1
    const-string/jumbo v3, "left_"

    invoke-static {v0, v4, v13, v1, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setDoubleHandShankScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v3, 0x7

    new-array v6, v3, [Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x0

    aput-object v3, v6, v8

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v6, v7

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x2

    aput-object v3, v6, v8

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x3

    aput-object v3, v6, v8

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v6, v10

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v6, v11

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v6, v12

    move-object v3, v6

    .line 274
    .local v3, "rRects":[Landroid/graphics/Rect;
    const-string/jumbo v6, "right_"

    invoke-static {v0, v1, v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, "targetPosforR":Ljava/lang/String;
    const/4 v8, 0x0

    .line 276
    .local v8, "rotationforR":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 277
    return-void

    .line 279
    :cond_2
    invoke-static {v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v9

    .line 280
    .local v9, "posSet":[I
    if-eqz v9, :cond_3

    array-length v14, v9

    if-lt v14, v2, :cond_3

    .line 281
    const/4 v14, 0x0

    aget v8, v9, v14

    .line 282
    aget-object v14, v3, v14

    aget v15, v9, v7

    const/16 v22, 0x2

    aget v12, v9, v22

    const/16 v22, 0x3

    aget v11, v9, v22

    aget v7, v9, v10

    invoke-virtual {v14, v15, v12, v11, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 283
    const/4 v7, 0x1

    aget-object v11, v3, v7

    const/4 v7, 0x5

    aget v12, v9, v7

    const/4 v7, 0x6

    aget v14, v9, v7

    const/4 v7, 0x7

    aget v7, v9, v7

    aget v15, v9, v21

    invoke-virtual {v11, v12, v14, v7, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 284
    const/4 v7, 0x2

    aget-object v7, v3, v7

    aget v11, v9, v20

    aget v12, v9, v19

    aget v14, v9, v18

    aget v15, v9, v17

    invoke-virtual {v7, v11, v12, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 285
    const/4 v7, 0x3

    aget-object v7, v3, v7

    aget v11, v9, v16

    const/16 v12, 0xe

    aget v12, v9, v12

    const/16 v14, 0xf

    aget v14, v9, v14

    const/16 v15, 0x10

    aget v15, v9, v15

    invoke-virtual {v7, v11, v12, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 286
    aget-object v7, v3, v10

    const/16 v10, 0x11

    aget v10, v9, v10

    const/16 v11, 0x12

    aget v11, v9, v11

    const/16 v12, 0x13

    aget v12, v9, v12

    const/16 v14, 0x14

    aget v14, v9, v14

    invoke-virtual {v7, v10, v11, v12, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 287
    const/4 v7, 0x5

    aget-object v7, v3, v7

    const/16 v10, 0x15

    aget v10, v9, v10

    const/16 v11, 0x16

    aget v11, v9, v11

    const/16 v12, 0x17

    aget v12, v9, v12

    const/16 v14, 0x18

    aget v14, v9, v14

    invoke-virtual {v7, v10, v11, v12, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 288
    const/4 v7, 0x6

    aget-object v7, v3, v7

    const/16 v10, 0x19

    aget v10, v9, v10

    const/16 v11, 0x1a

    aget v11, v9, v11

    const/16 v12, 0x1b

    aget v12, v9, v12

    const/16 v14, 0x1c

    aget v14, v9, v14

    invoke-virtual {v7, v10, v11, v12, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 291
    .end local v9    # "posSet":[I
    :cond_3
    const-string/jumbo v7, "right_"

    invoke-static {v0, v3, v8, v1, v7}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setDoubleHandShankScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 294
    return-void
.end method

.method public static saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "positions"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 160
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dual_hand_shank_screen_map_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_1

    .line 161
    :cond_1
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public static saveLastHandShankLRChoice(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "handDirection"    # I

    .line 474
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dual_hand_shank_left_or_right_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static saveMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "moveAreaDirection"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 493
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dual_hand_shank_moveArea_direction_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 497
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static setDoubleHandShankScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targets"    # [Landroid/graphics/Rect;
    .param p2, "rotation"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 315
    move-object/from16 v3, p4

    :try_start_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualHandShankScreenMapHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDoubleHandShankScreenTouchRects type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    const-string/jumbo v0, "left_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    .line 318
    .local v0, "gamepadId":I
    const/4 v5, 0x0

    aget-object v6, v2, v5

    .line 319
    .local v6, "L":Landroid/graphics/Rect;
    aget-object v7, v2, v4

    .line 320
    .local v7, "R":Landroid/graphics/Rect;
    const/4 v8, 0x2

    aget-object v9, v2, v8

    .line 321
    .local v9, "A":Landroid/graphics/Rect;
    const/4 v10, 0x3

    aget-object v11, v2, v10

    .line 322
    .local v11, "B":Landroid/graphics/Rect;
    const/4 v12, 0x4

    aget-object v13, v2, v12

    .line 323
    .local v13, "X":Landroid/graphics/Rect;
    const/4 v14, 0x5

    aget-object v15, v2, v14

    .line 324
    .local v15, "Y":Landroid/graphics/Rect;
    const/16 v16, 0x6

    aget-object v17, v2, v16

    move-object/from16 v18, v17

    .line 326
    .local v18, "MoveArea":Landroid/graphics/Rect;
    array-length v14, v2

    .line 327
    .local v14, "size":I
    new-array v12, v14, [Landroid/graphics/Point;

    .line 328
    .local v12, "newTarget":[Landroid/graphics/Point;
    move/from16 v17, v5

    .line 328
    .local v17, "i":I
    :goto_0
    move/from16 v19, v17

    .line 328
    .end local v17    # "i":I
    .local v19, "i":I
    move/from16 v10, v19

    if-ge v10, v14, :cond_1

    .line 329
    .end local v19    # "i":I
    .local v10, "i":I
    aget-object v8, v2, v10

    invoke-static {v8}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->rectToPoint(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v8

    aput-object v8, v12, v10

    .line 328
    add-int/lit8 v17, v10, 0x1

    .line 328
    .end local v10    # "i":I
    .restart local v17    # "i":I
    const/4 v8, 0x2

    const/4 v10, 0x3

    goto :goto_0

    .line 331
    .end local v17    # "i":I
    :cond_1
    const/4 v8, 0x7

    if-ge v14, v8, :cond_2

    .line 332
    const-string v4, "DualHandShankScreenMapHelper"

    const-string v5, "dont have 7 point"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 335
    :cond_2
    aget-object v5, v12, v5

    .line 336
    .local v5, "pointL":Landroid/graphics/Point;
    aget-object v4, v12, v4

    .line 337
    .local v4, "pointR":Landroid/graphics/Point;
    const/4 v8, 0x2

    aget-object v10, v12, v8

    move-object v8, v10

    .line 338
    .local v8, "pointA":Landroid/graphics/Point;
    const/4 v10, 0x3

    aget-object v10, v12, v10

    .line 339
    .local v10, "pointB":Landroid/graphics/Point;
    const/16 v17, 0x4

    aget-object v17, v12, v17

    move-object/from16 v20, v17

    .line 340
    .local v20, "pointX":Landroid/graphics/Point;
    const/16 v17, 0x5

    aget-object v17, v12, v17

    move-object/from16 v21, v17

    .line 341
    .local v21, "pointY":Landroid/graphics/Point;
    aget-object v16, v12, v16

    move-object/from16 v22, v16

    .line 342
    .local v22, "pointMArea":Landroid/graphics/Point;
    move-object/from16 v23, v6

    move-object/from16 v2, v18

    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 342
    .end local v6    # "L":Landroid/graphics/Rect;
    .end local v18    # "MoveArea":Landroid/graphics/Rect;
    .local v2, "MoveArea":Landroid/graphics/Rect;
    .local v23, "L":Landroid/graphics/Rect;
    move-object/from16 v24, v7

    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 342
    .end local v7    # "R":Landroid/graphics/Rect;
    .local v24, "R":Landroid/graphics/Rect;
    sub-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/2addr v6, v7

    .line 344
    .local v6, "radius":I
    const-string/jumbo v7, "left_"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v25, v2

    .line 344
    .end local v2    # "MoveArea":Landroid/graphics/Rect;
    .local v25, "MoveArea":Landroid/graphics/Rect;
    const/4 v2, -0x1

    if-eqz v7, :cond_3

    .line 345
    const/16 v7, 0x68

    invoke-static {v1, v0, v7, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 346
    const/16 v7, 0x66

    invoke-static {v1, v0, v7, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 347
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/16 v2, 0x69

    invoke-static {v1, v0, v2, v7}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 348
    new-instance v2, Landroid/graphics/Point;

    const/4 v7, -0x1

    invoke-direct {v2, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    const/16 v7, 0x67

    invoke-static {v1, v0, v7, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 350
    const/16 v2, 0x60

    invoke-static {v1, v0, v2, v8}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 351
    const/16 v2, 0x61

    invoke-static {v1, v0, v2, v10}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 352
    move-object/from16 v2, v20

    const/16 v7, 0x63

    invoke-static {v1, v0, v7, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 353
    .end local v20    # "pointX":Landroid/graphics/Point;
    .local v2, "pointX":Landroid/graphics/Point;
    const/16 v7, 0x64

    move-object/from16 v3, v21

    invoke-static {v1, v0, v7, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 354
    .end local v21    # "pointY":Landroid/graphics/Point;
    .local v3, "pointY":Landroid/graphics/Point;
    move-object/from16 v7, v22

    invoke-static {v1, v0, v7, v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setJoystickTouchRange(Landroid/content/Context;ILandroid/graphics/Point;I)V

    .line 354
    .end local v22    # "pointMArea":Landroid/graphics/Point;
    .local v7, "pointMArea":Landroid/graphics/Point;
    goto :goto_1

    .line 356
    .end local v2    # "pointX":Landroid/graphics/Point;
    .end local v3    # "pointY":Landroid/graphics/Point;
    .end local v7    # "pointMArea":Landroid/graphics/Point;
    .restart local v20    # "pointX":Landroid/graphics/Point;
    .restart local v21    # "pointY":Landroid/graphics/Point;
    .restart local v22    # "pointMArea":Landroid/graphics/Point;
    :cond_3
    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v7, v22

    .line 356
    .end local v20    # "pointX":Landroid/graphics/Point;
    .end local v21    # "pointY":Landroid/graphics/Point;
    .end local v22    # "pointMArea":Landroid/graphics/Point;
    .restart local v2    # "pointX":Landroid/graphics/Point;
    .restart local v3    # "pointY":Landroid/graphics/Point;
    .restart local v7    # "pointMArea":Landroid/graphics/Point;
    move-object/from16 v26, v9

    const/16 v9, 0x69

    invoke-static {v1, v0, v9, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 357
    .end local v9    # "A":Landroid/graphics/Rect;
    .local v26, "A":Landroid/graphics/Rect;
    const/16 v9, 0x67

    invoke-static {v1, v0, v9, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 358
    new-instance v9, Landroid/graphics/Point;

    move-object/from16 v27, v4

    const/4 v4, -0x1

    invoke-direct {v9, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 358
    .end local v4    # "pointR":Landroid/graphics/Point;
    .local v27, "pointR":Landroid/graphics/Point;
    const/16 v4, 0x68

    invoke-static {v1, v0, v4, v9}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 359
    new-instance v4, Landroid/graphics/Point;

    const/4 v9, -0x1

    invoke-direct {v4, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    const/16 v9, 0x66

    invoke-static {v1, v0, v9, v4}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 361
    const/16 v4, 0x64

    invoke-static {v1, v0, v4, v8}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 362
    const/16 v4, 0x63

    invoke-static {v1, v0, v4, v10}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 363
    const/16 v4, 0x61

    invoke-static {v1, v0, v4, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 364
    const/16 v4, 0x60

    invoke-static {v1, v0, v4, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setKeyTouchPoint(Landroid/content/Context;IILandroid/graphics/Point;)V

    .line 365
    invoke-static {v1, v0, v7, v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setJoystickTouchRange(Landroid/content/Context;ILandroid/graphics/Point;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v0    # "gamepadId":I
    .end local v2    # "pointX":Landroid/graphics/Point;
    .end local v3    # "pointY":Landroid/graphics/Point;
    .end local v5    # "pointL":Landroid/graphics/Point;
    .end local v6    # "radius":I
    .end local v7    # "pointMArea":Landroid/graphics/Point;
    .end local v8    # "pointA":Landroid/graphics/Point;
    .end local v10    # "pointB":Landroid/graphics/Point;
    .end local v11    # "B":Landroid/graphics/Rect;
    .end local v12    # "newTarget":[Landroid/graphics/Point;
    .end local v13    # "X":Landroid/graphics/Rect;
    .end local v14    # "size":I
    .end local v15    # "Y":Landroid/graphics/Rect;
    .end local v23    # "L":Landroid/graphics/Rect;
    .end local v24    # "R":Landroid/graphics/Rect;
    .end local v25    # "MoveArea":Landroid/graphics/Rect;
    .end local v26    # "A":Landroid/graphics/Rect;
    .end local v27    # "pointR":Landroid/graphics/Point;
    :goto_1
    goto :goto_2

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DualHandShankScreenMapHelper"

    const-string/jumbo v3, "setDoubleHandShankScreenTouchRects, fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static setDoubleScreenTouchEnable(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 301
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualHandShankScreenMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDoubleScreenTouchEnable, enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDialogIsShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->mDialogIsShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    :try_start_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->mDialogIsShowing:Z

    if-eqz v0, :cond_1

    .line 304
    const/4 p1, 0x0

    .line 306
    :cond_1
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 307
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

    .line 308
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DualHandShankScreenMapHelper"

    const-string/jumbo v2, "setDoubleScreenTouchEnable, fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setGamepadID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "addrBE"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 425
    :try_start_0
    const-string/jumbo v0, "left_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 426
    .local v0, "gamePadId":I
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DualHandShankScreenMapHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setGamepadID, gamePadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " addrBE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    const-string/jumbo v2, "input"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 428
    .local v2, "inputManager":Landroid/hardware/input/InputManager;
    const-class v3, Landroid/hardware/input/InputManager;

    const-string/jumbo v4, "setGamepadID"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 430
    .local v3, "method":Ljava/lang/reflect/Method;
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p1, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v0    # "gamePadId":I
    .end local v2    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DualHandShankScreenMapHelper"

    const-string/jumbo v2, "setGamepadID, fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setJoystickCenterOffset(Landroid/content/Context;FF)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 413
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualHandShankScreenMapHelper"

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

    .line 415
    :cond_0
    :try_start_0
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 416
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

    .line 418
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

    .line 421
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DualHandShankScreenMapHelper"

    const-string/jumbo v2, "setJoystickCenterOffset, fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setJoystickDirection(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gamePadId"    # I
    .param p2, "direction"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .line 396
    :try_start_0
    const-string/jumbo v0, "left_"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move p1, v0

    .line 397
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualHandShankScreenMapHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setJoystickDirection gamepadId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " direction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    const-string/jumbo v0, "right_"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->ROATTION_0:I

    if-ne p2, v0, :cond_1

    .line 399
    sget v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->ROATTION_180:I

    move p2, v0

    .line 401
    :cond_1
    const-string/jumbo v0, "left_"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->ROATTION_270:I

    if-ne p2, v0, :cond_2

    .line 402
    sget v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->ROATTION_90:I

    move p2, v0

    .line 404
    :cond_2
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 405
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const-class v2, Landroid/hardware/input/InputManager;

    const-string/jumbo v3, "setJoystickDirection"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 407
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DualHandShankScreenMapHelper"

    const-string/jumbo v2, "setJoystickDirection, fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
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

    .line 384
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualHandShankScreenMapHelper"

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

    .line 386
    :cond_0
    :try_start_0
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 387
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

    .line 389
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

    .line 392
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DualHandShankScreenMapHelper"

    const-string/jumbo v2, "setJoystickTouchRange, fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
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

    .line 372
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualHandShankScreenMapHelper"

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

    .line 374
    :cond_0
    const/4 v0, 0x0

    .line 375
    .local v0, "isSendKey":Z
    :try_start_0
    const-string/jumbo v1, "input"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 376
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

    .line 378
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

    .line 381
    .end local v0    # "isSendKey":Z
    .end local v1    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DualHandShankScreenMapHelper"

    const-string/jumbo v2, "setKeyTouchPoint, fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static toPositionSet(Ljava/lang/String;)[I
    .locals 7
    .param p0, "positions"    # Ljava/lang/String;

    .line 186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "posSet":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 192
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 193
    .local v2, "index":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 194
    .local v5, "pos":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 193
    .end local v5    # "pos":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_1
    return-object v1

    .line 187
    .end local v0    # "posSet":[Ljava/lang/String;
    .end local v1    # "result":[I
    .end local v2    # "index":I
    :cond_2
    :goto_1
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "DualHandShankScreenMapHelper"

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

    .line 188
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 129
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

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "pkgNameValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_hand_shank_map_enable_game_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "enableGameList":Ljava/lang/String;
    const-string v2, ""

    .line 136
    .local v2, "updateGameList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    if-eqz p2, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    move-object v2, v3

    goto :goto_3

    .line 139
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    if-eqz p2, :cond_3

    const-string v3, ""

    goto :goto_1

    :cond_3
    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v2, v3

    .line 141
    if-nez p2, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 142
    const-string v3, "DualHandShankScreenMapHelper"

    const-string/jumbo v4, "updateEnabledGameList, clearn!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dual_hand_shank_map_enable_game_list"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    return-void

    .line 147
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

    .line 150
    :cond_6
    :goto_3
    const-string v3, "DualHandShankScreenMapHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEnabledGameList, updateGameList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    .line 152
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dual_hand_shank_map_enable_game_list"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v1    # "enableGameList":Ljava/lang/String;
    .end local v2    # "updateGameList":Ljava/lang/String;
    goto :goto_4

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "DualHandShankScreenMapHelper"

    const-string/jumbo v3, "updateEnabledGameList, fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 130
    .end local v0    # "pkgNameValue":Ljava/lang/String;
    :cond_8
    :goto_5
    return-void
.end method

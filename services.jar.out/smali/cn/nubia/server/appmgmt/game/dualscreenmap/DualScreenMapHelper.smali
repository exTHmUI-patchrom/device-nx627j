.class public Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;
.super Ljava/lang/Object;
.source "DualScreenMapHelper.java"


# static fields
.field public static final ACTION_DUAL_SCREEN_MAP_OPTION:Ljava/lang/String; = "cn.nubia.intent.action.DUAL_SCREEN_MAP_OPTION"

.field public static final ACTION_SCREEN_CHANGED:Ljava/lang/String; = "cn.nubia.action.SCREEN_CHANGED"

.field private static DEBUG:Z = false

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_627:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_627:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_627:[Landroid/graphics/Rect;

.field public static final DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_627:[Landroid/graphics/Rect;

.field public static final DEFAULT_SECONDARY_SCREEN_RECTS:[Landroid/graphics/Rect;

.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field private static final ENABLE_GAME_LIST:Ljava/lang/String; = "dual_screen_map_enable_game_list"

.field public static final GAME_NETEASE_HYXD_PRE:Ljava/lang/String; = "com.netease.hyxd"

.field public static final GAME_NETEASE_ZJZ_PRE:Ljava/lang/String; = "com.netease.zjz"

.field public static final GAME_TENCENT_CF:Ljava/lang/String; = "com.tencent.tmgp.cf"

.field public static final GAME_TENCENT_POCKET:Ljava/lang/String; = "com.tencent.pocket"

.field public static final GAME_TENCENT_PUBGM:Ljava/lang/String; = "com.tencent.tmgp.pubgm"

.field public static final GAME_TENCENT_PUBGMHD:Ljava/lang/String; = "com.tencent.tmgp.pubgmhd"

.field public static final KEY_MAIN_SCREEN:Ljava/lang/String; = "main_"

.field public static final KEY_SCREEN_CHANGED:Ljava/lang/String; = "displayid"

.field public static final KEY_SECONDARY_SCREEN:Ljava/lang/String; = "secondary_"

.field public static final PRE_DUAL_SCREEN_MAP:Ljava/lang/String; = "dual_screen_map_"

.field public static final SCREEN_MAIN:I = 0x0

.field public static final SCREEN_SECONDARY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DualScreenMapHelper"

.field public static final TEXT_HINT_COUNT:I = 0x2

.field private static canMoveHeight:I

.field private static canMoveWidth:I

.field private static canToBottom:I

.field private static canToLeft_l:I

.field private static canToRight_r:I

.field private static canToTop:I

.field private static lastProgress:I

.field public static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 25
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
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEBUG:Z

    .line 32
    const/4 v0, 0x2

    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x1a3

    const/16 v6, 0x365

    const/16 v7, 0x348

    const/16 v8, 0x186

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x581

    const/16 v6, 0x743

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    sput-object v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_SECONDARY_SCREEN_RECTS:[Landroid/graphics/Rect;

    .line 45
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x253

    const/16 v6, 0xaf

    const/16 v7, 0x1ff

    const/16 v8, 0x5b

    invoke-direct {v4, v8, v7, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v9, 0x265

    const/16 v10, 0x8bf

    const/16 v11, 0x211

    const/16 v12, 0x86b

    invoke-direct {v4, v12, v11, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    sput-object v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD:[Landroid/graphics/Rect;

    .line 46
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v8, v7, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v12, v11, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    sput-object v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM:[Landroid/graphics/Rect;

    .line 47
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v13, 0x96

    const/16 v14, 0x280

    const/16 v15, 0x22c

    const/16 v9, 0x42

    invoke-direct {v4, v9, v15, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v13, 0x865

    const/16 v14, 0x231

    const/16 v9, 0x8b9

    const/16 v15, 0x285

    invoke-direct {v4, v13, v14, v9, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    sput-object v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD:[Landroid/graphics/Rect;

    .line 48
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v9, 0x6c

    const/16 v13, 0x1ed

    const/16 v14, 0xc0

    const/16 v15, 0x241

    invoke-direct {v4, v9, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v9, 0x82e

    const/16 v13, 0x1f8

    const/16 v14, 0x882

    const/16 v15, 0x24c

    invoke-direct {v4, v9, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    sput-object v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ:[Landroid/graphics/Rect;

    .line 50
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v8, v7, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v9, 0x8aa

    const/16 v13, 0x209

    const/16 v14, 0x8fe

    const/16 v15, 0x25d

    invoke-direct {v4, v9, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    sput-object v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_627:[Landroid/graphics/Rect;

    .line 51
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v8, v7, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x265

    invoke-direct {v4, v12, v11, v10, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    sput-object v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_627:[Landroid/graphics/Rect;

    .line 52
    new-array v3, v0, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x96

    const/16 v6, 0x280

    const/16 v7, 0x42

    const/16 v8, 0x22c

    invoke-direct {v4, v7, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x8ae

    const/16 v6, 0x22e

    const/16 v7, 0x902

    const/16 v8, 0x282

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v1

    sput-object v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_627:[Landroid/graphics/Rect;

    .line 53
    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x6c

    const/16 v5, 0x1ed

    const/16 v6, 0xc0

    const/16 v7, 0x241

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v0, v2

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x842

    const/16 v5, 0x210

    const/16 v6, 0x896

    const/16 v7, 0x264

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v0, v1

    sput-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_627:[Landroid/graphics/Rect;

    .line 452
    const/16 v0, 0x734

    sput v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canMoveWidth:I

    .line 453
    const/16 v0, 0x328

    sput v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canMoveHeight:I

    .line 454
    const/16 v0, 0x9f

    sput v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToTop:I

    .line 455
    const/16 v0, 0x3c7

    sput v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToBottom:I

    .line 456
    const/16 v0, 0xda

    sput v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToLeft_l:I

    .line 457
    const/16 v0, 0x80e

    sput v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToRight_r:I

    .line 458
    sput v2, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->lastProgress:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;
    .locals 4
    .param p0, "rects"    # [Landroid/graphics/Rect;
    .param p1, "rotation"    # I

    .line 188
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuffer;
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    .line 191
    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v3, p0, v2

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget-object v3, p0, v2

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    :cond_1
    const-string v1, "DualScreenMapHelper"

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

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static changeDMRectForSecondScreen(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 418
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 419
    .local v1, "mScreenWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 421
    .local v2, "mScreenHeight":I
    iget v3, p1, Landroid/graphics/Rect;->left:I

    const/16 v4, 0x2d0

    mul-int/2addr v3, v4

    div-int/2addr v3, v2

    .line 422
    .local v3, "left":I
    iget v5, p1, Landroid/graphics/Rect;->right:I

    mul-int/2addr v4, v5

    div-int/2addr v4, v2

    .line 423
    .local v4, "right":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    const/16 v6, 0x5f0

    mul-int/2addr v5, v6

    div-int/2addr v5, v1

    .line 424
    .local v5, "top":I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v6, v7

    div-int/2addr v6, v1

    .line 425
    .local v6, "bottom":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3, v5, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v7
.end method

.method private static getAndSaveDefaultMainScreenRects(Landroid/content/Context;Ljava/lang/String;I)[Landroid/graphics/Rect;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "rotation"    # I

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "tRects":[Landroid/graphics/Rect;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "NX627J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD_627:[Landroid/graphics/Rect;

    goto :goto_0

    .line 281
    :cond_0
    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM_627:[Landroid/graphics/Rect;

    goto :goto_0

    .line 283
    :cond_1
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD_627:[Landroid/graphics/Rect;

    goto :goto_0

    .line 285
    :cond_2
    const-string v1, "com.netease.zjz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 286
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ_627:[Landroid/graphics/Rect;

    goto :goto_0

    .line 289
    :cond_3
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGMHD:[Landroid/graphics/Rect;

    goto :goto_0

    .line 291
    :cond_4
    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 292
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_TENCENT_PUBGM:[Landroid/graphics/Rect;

    goto :goto_0

    .line 293
    :cond_5
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 294
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_HYXD:[Landroid/graphics/Rect;

    goto :goto_0

    .line 295
    :cond_6
    const-string v1, "com.netease.zjz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 296
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_MAIN_SCREEN_RECTS_NETEASE_ZJZ:[Landroid/graphics/Rect;

    .line 299
    :cond_7
    :goto_0
    invoke-static {v0, p2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "targetPos":Ljava/lang/String;
    const-string/jumbo v2, "main_"

    invoke-static {p0, p1, v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-object v0
.end method

.method private static getAndSaveDefaultSecondaryScreenRects(Landroid/content/Context;Ljava/lang/String;)[Landroid/graphics/Rect;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 305
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_SECONDARY_SCREEN_RECTS:[Landroid/graphics/Rect;

    .line 306
    .local v0, "sRects":[Landroid/graphics/Rect;
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->buildFloatViewCoordinateString([Landroid/graphics/Rect;I)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "sourcePos":Ljava/lang/String;
    const-string/jumbo v2, "secondary_"

    invoke-static {p0, p1, v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-object v0
.end method

.method public static getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "positionStr":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dual_screen_map_"

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

    .line 168
    :cond_0
    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getGameKeyState(Landroid/content/Context;)Z
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .line 437
    const/4 v0, 0x0

    .line 439
    .local v0, "gameKeyState":Z
    :try_start_0
    invoke-static {}, Lcn/nubia/game/GameKeysHelper;->getDefault()Lcn/nubia/game/GameKeysHelper;

    move-result-object v1

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "nubia_db_game_keys"

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 439
    invoke-virtual {v1, v2}, Lcn/nubia/game/GameKeysHelper;->isOpenGameKeys(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 445
    goto :goto_0

    .line 443
    :catch_0
    move-exception v1

    .line 444
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 446
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public static isDefaultGame(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "enable":Z
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.tmgp.pubgm"

    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.netease.hyxd"

    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.netease.zjz"

    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x1

    .line 66
    :cond_1
    return v0
.end method

.method public static isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "enable":Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    return v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_screen_map_enable_game_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "enableGameList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
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

    .line 81
    .end local v1    # "enableGameList":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEBUG:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return v0
.end method

.method public static isNX627Project()Z
    .locals 2

    .line 273
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX627J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static needShowHintMsg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 114
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 115
    const/4 v1, 0x1

    return v1

    .line 117
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static parseRectsFromCoordinateStr([ILjava/lang/String;)[Landroid/graphics/Rect;
    .locals 11
    .param p0, "positionSet"    # [I
    .param p1, "type"    # Ljava/lang/String;

    .line 202
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 203
    .local v1, "rects":[Landroid/graphics/Rect;
    const-string/jumbo v2, "main_"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz v2, :cond_0

    .line 204
    aget-object v2, v1, v3

    aget v3, p0, v4

    aget v0, p0, v0

    aget v9, p0, v9

    aget v8, p0, v8

    invoke-virtual {v2, v3, v0, v9, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 205
    aget-object v0, v1, v4

    aget v2, p0, v7

    aget v3, p0, v6

    aget v4, p0, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 206
    :cond_0
    const-string/jumbo v2, "secondary_"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    aget-object v2, v1, v3

    aget v3, p0, v3

    aget v10, p0, v4

    aget v0, p0, v0

    aget v9, p0, v9

    invoke-virtual {v2, v3, v10, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 208
    aget-object v0, v1, v4

    aget v2, p0, v8

    aget v3, p0, v7

    aget v4, p0, v6

    aget v5, p0, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 212
    :goto_0
    return-object v1

    .line 210
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static reduceCount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    :cond_0
    return-void
.end method

.method private static reduceRectArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "rect"    # Landroid/graphics/Rect;

    .line 216
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0xa

    .line 217
    .local v0, "offseth":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0xa

    .line 218
    .local v1, "offsetv":I
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    .line 219
    .local v2, "left":I
    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    .line 220
    .local v3, "right":I
    iget v4, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    .line 221
    .local v4, "top":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    .line 222
    .local v5, "bottom":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method private static reduceRectAreaToLittle(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "rect"    # Landroid/graphics/Rect;

    .line 225
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 226
    .local v0, "pointX":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 227
    .local v1, "pointY":I
    move v2, v0

    .line 228
    .local v2, "left":I
    move v3, v0

    .line 229
    .local v3, "right":I
    move v4, v1

    .line 230
    .local v4, "top":I
    move v5, v1

    .line 231
    .local v5, "bottom":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method public static resumeDefaultDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 263
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 264
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 265
    .local v1, "rotation":I
    invoke-static {p0, p1, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getAndSaveDefaultMainScreenRects(Landroid/content/Context;Ljava/lang/String;I)[Landroid/graphics/Rect;

    move-result-object v2

    .line 266
    .local v2, "tRects":[Landroid/graphics/Rect;
    invoke-static {p0, p1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getAndSaveDefaultSecondaryScreenRects(Landroid/content/Context;Ljava/lang/String;)[Landroid/graphics/Rect;

    move-result-object v3

    .line 267
    .local v3, "sRects":[Landroid/graphics/Rect;
    invoke-static {p0, v3, v2, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;[Landroid/graphics/Rect;I)V

    .line 268
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 269
    invoke-static {p0, p1, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 270
    return-void
.end method

.method public static resumeDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 236
    move-object/from16 v1, p1

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 237
    .local v3, "tRects":[Landroid/graphics/Rect;
    const-string/jumbo v4, "main_"

    invoke-static {v0, v1, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "targetPos":Ljava/lang/String;
    const/4 v7, 0x0

    .line 239
    .local v7, "rotation":I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    invoke-static {v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v8

    .line 243
    .local v8, "posSet":[I
    aget v7, v8, v5

    .line 244
    aget-object v9, v3, v5

    aget v10, v8, v6

    aget v11, v8, v2

    const/4 v12, 0x3

    aget v13, v8, v12

    const/4 v14, 0x4

    aget v15, v8, v14

    invoke-virtual {v9, v10, v11, v13, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 245
    aget-object v9, v3, v6

    const/4 v10, 0x5

    aget v11, v8, v10

    const/4 v13, 0x6

    aget v15, v8, v13

    const/16 v16, 0x7

    aget v13, v8, v16

    const/16 v17, 0x8

    aget v10, v8, v17

    invoke-virtual {v9, v11, v15, v13, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 248
    .end local v8    # "posSet":[I
    new-array v8, v2, [Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v5

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v6

    .line 249
    .local v8, "sRects":[Landroid/graphics/Rect;
    const-string/jumbo v9, "secondary_"

    invoke-static {v0, v1, v9}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 250
    .local v9, "sourcesPos":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 251
    sget-object v8, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_SECONDARY_SCREEN_RECTS:[Landroid/graphics/Rect;

    goto :goto_0

    .line 253
    :cond_1
    invoke-static {v9}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v10

    .line 254
    .local v10, "positionSet":[I
    aget-object v11, v8, v5

    aget v5, v10, v5

    aget v13, v10, v6

    aget v2, v10, v2

    aget v12, v10, v12

    invoke-virtual {v11, v5, v13, v2, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 255
    aget-object v2, v8, v6

    aget v5, v10, v14

    const/4 v11, 0x5

    aget v11, v10, v11

    const/4 v12, 0x6

    aget v12, v10, v12

    aget v13, v10, v16

    invoke-virtual {v2, v5, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    .end local v10    # "positionSet":[I
    :goto_0
    invoke-static {v0, v8, v3, v7}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;[Landroid/graphics/Rect;I)V

    .line 258
    invoke-static {v0, v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 259
    return-void
.end method

.method public static saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "positions"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 147
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dual_screen_map_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_1

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public static setCountZero(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    return-void
.end method

.method public static setDoubleScreenTouchEnable(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 312
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX627J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getGameKeyState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    const/4 p1, 0x0

    .line 315
    :cond_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DualScreenMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDoubleScreenTouchEnable, enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_1
    :try_start_0
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 318
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const-class v1, Landroid/hardware/input/InputManager;

    const-string/jumbo v2, "setDoubleScreenTouchEnable"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 319
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "DualScreenMapHelper"

    const-string/jumbo v2, "setDoubleScreenTouchEnable fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method public static setDoubleScreenTouchEnableImmediate(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 326
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX627J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getGameKeyState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    const/4 p1, 0x0

    .line 329
    :cond_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DualScreenMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDoubleScreenTouchEnableImmediate, enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    :try_start_0
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 332
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const-class v1, Landroid/hardware/input/InputManager;

    const-string/jumbo v2, "setDoubleScreenTouchEnableImmediate"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 333
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "DualScreenMapHelper"

    const-string/jumbo v2, "setDoubleScreenTouchEnableImmediate fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method public static setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targets"    # [Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 385
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEFAULT_SECONDARY_SCREEN_RECTS:[Landroid/graphics/Rect;

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;[Landroid/graphics/Rect;I)V

    .line 386
    return-void
.end method

.method public static setDoubleScreenTouchRects(Landroid/content/Context;[Landroid/graphics/Rect;[Landroid/graphics/Rect;I)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sources"    # [Landroid/graphics/Rect;
    .param p2, "targets"    # [Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 390
    :try_start_0
    array-length v0, v3

    .line 391
    .local v0, "size":I
    new-array v4, v0, [Landroid/graphics/Rect;

    .line 392
    .local v4, "newTarget":[Landroid/graphics/Rect;
    const/4 v5, 0x0

    move v6, v5

    .line 392
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 393
    aget-object v7, v3, v6

    invoke-static {v7}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->reduceRectAreaToLittle(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    aput-object v7, v4, v6

    .line 392
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 396
    .end local v6    # "i":I
    :cond_0
    array-length v6, v2

    .line 397
    .local v6, "sizeSource":I
    new-array v7, v6, [Landroid/graphics/Rect;

    .line 398
    .local v7, "newSource":[Landroid/graphics/Rect;
    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v9, "NX627J"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    .line 399
    move v8, v5

    .line 399
    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_1

    .line 400
    aget-object v10, v2, v8

    invoke-static {v1, v10}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->changeDMRectForSecondScreen(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    aput-object v10, v7, v8

    .line 399
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 402
    .end local v8    # "i":I
    :cond_1
    aget-object v8, v7, v5

    aget-object v10, v7, v5

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/lit16 v10, v10, -0x96

    iput v10, v8, Landroid/graphics/Rect;->left:I

    .line 403
    aget-object v8, v7, v9

    aget-object v10, v7, v9

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/lit16 v10, v10, 0x96

    iput v10, v8, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 405
    :cond_2
    move-object v7, v2

    .line 407
    :goto_2
    const-string/jumbo v8, "input"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/input/InputManager;

    .line 408
    .local v8, "inputManager":Landroid/hardware/input/InputManager;
    const-class v10, Landroid/hardware/input/InputManager;

    const-string/jumbo v11, "setDoubleScreenTouchRects"

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v5

    const-class v14, [Landroid/graphics/Rect;

    aput-object v14, v13, v9

    const-class v14, [Landroid/graphics/Rect;

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-virtual {v10, v11, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 410
    .local v10, "method":Ljava/lang/reflect/Method;
    new-array v11, v12, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    aput-object v7, v11, v9

    aput-object v4, v11, v15

    invoke-virtual {v10, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v0    # "size":I
    .end local v4    # "newTarget":[Landroid/graphics/Rect;
    .end local v6    # "sizeSource":I
    .end local v7    # "newSource":[Landroid/graphics/Rect;
    .end local v8    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v10    # "method":Ljava/lang/reflect/Method;
    goto :goto_3

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "DualScreenMapHelper"

    const-string/jumbo v5, "setDoubleScreenTouchRects fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void
.end method

.method public static setRadioGroupEnable(Landroid/widget/RadioGroup;Z)V
    .locals 2
    .param p0, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p1, "enable"    # Z

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static setSecondaryTouchRects(Ljava/lang/String;Landroid/content/Context;)V
    .locals 23
    .param p0, "floatBoxCoordinate"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 340
    move-object/from16 v1, p1

    sget-boolean v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualScreenMapHelper"

    const-string/jumbo v2, "setSecondaryTouchRects"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v0

    .line 343
    .local v0, "positionSet":[I
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 344
    .local v3, "sources":[Landroid/graphics/Rect;
    aget-object v4, v3, v5

    aget v7, v0, v5

    aget v8, v0, v6

    aget v9, v0, v2

    const/4 v10, 0x3

    aget v11, v0, v10

    invoke-virtual {v4, v7, v8, v9, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 345
    aget-object v4, v3, v6

    const/4 v7, 0x4

    aget v7, v0, v7

    const/4 v8, 0x5

    aget v8, v0, v8

    const/4 v9, 0x6

    aget v9, v0, v9

    const/4 v11, 0x7

    aget v11, v0, v11

    invoke-virtual {v4, v7, v8, v9, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 347
    new-array v4, v2, [Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v4, v5

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v4, v6

    .line 348
    .local v4, "targets":[Landroid/graphics/Rect;
    aget-object v7, v3, v5

    iget v7, v7, Landroid/graphics/Rect;->left:I

    aget-object v8, v3, v5

    iget v8, v8, Landroid/graphics/Rect;->right:I

    aget-object v9, v3, v5

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v2

    add-int/2addr v7, v8

    .line 349
    .local v7, "left_right_0":I
    aget-object v8, v3, v5

    iget v8, v8, Landroid/graphics/Rect;->top:I

    aget-object v9, v3, v5

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    aget-object v11, v3, v5

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v11

    div-int/2addr v9, v2

    add-int/2addr v8, v9

    .line 350
    .local v8, "top_bottom_0":I
    aget-object v9, v3, v6

    iget v9, v9, Landroid/graphics/Rect;->left:I

    aget-object v11, v3, v6

    iget v11, v11, Landroid/graphics/Rect;->right:I

    aget-object v12, v3, v6

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    div-int/2addr v11, v2

    add-int/2addr v9, v11

    .line 351
    .local v9, "left_right_1":I
    aget-object v11, v3, v6

    iget v11, v11, Landroid/graphics/Rect;->top:I

    aget-object v12, v3, v6

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    aget-object v13, v3, v6

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    div-int/2addr v12, v2

    add-int/2addr v11, v12

    .line 352
    .local v11, "top_bottom_1":I
    aget-object v12, v4, v5

    invoke-virtual {v12, v7, v8, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 353
    aget-object v12, v4, v6

    invoke-virtual {v12, v9, v11, v9, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 356
    array-length v12, v3

    .line 357
    .local v12, "sizeSource":I
    new-array v13, v12, [Landroid/graphics/Rect;

    .line 358
    .local v13, "newSource":[Landroid/graphics/Rect;
    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v15, "NX627J"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 359
    move v14, v5

    .line 359
    .local v14, "i":I
    :goto_0
    if-ge v14, v12, :cond_1

    .line 360
    aget-object v15, v3, v14

    invoke-static {v1, v15}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->changeDMRectForSecondScreen(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    aput-object v15, v13, v14

    .line 359
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 362
    .end local v14    # "i":I
    :cond_1
    aget-object v14, v13, v5

    aget-object v15, v13, v5

    iget v15, v15, Landroid/graphics/Rect;->left:I

    add-int/lit16 v15, v15, -0x96

    iput v15, v14, Landroid/graphics/Rect;->left:I

    .line 363
    aget-object v14, v13, v6

    aget-object v15, v13, v6

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int/lit16 v15, v15, 0x96

    iput v15, v14, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 365
    :cond_2
    move-object v13, v3

    .line 367
    :goto_1
    const-string/jumbo v14, "window"

    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 368
    .local v14, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getRotation()I

    move-result v15

    .line 369
    .local v15, "rotation":I
    const-string/jumbo v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 370
    .local v2, "inputManager":Landroid/hardware/input/InputManager;
    const-class v6, Landroid/hardware/input/InputManager;

    const-string/jumbo v5, "setDoubleScreenTouchRects"

    move-object/from16 v19, v0

    new-array v0, v10, [Ljava/lang/Class;

    .line 370
    .end local v0    # "positionSet":[I
    .local v19, "positionSet":[I
    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v20, v0, v18

    const-class v20, [Landroid/graphics/Rect;

    const/16 v17, 0x1

    aput-object v20, v0, v17

    const-class v20, [Landroid/graphics/Rect;

    const/16 v16, 0x2

    aput-object v20, v0, v16

    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 372
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v5, v10

    const/4 v6, 0x1

    aput-object v13, v5, v6

    const/4 v6, 0x2

    aput-object v4, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const/4 v5, 0x1

    .line 374
    .local v5, "isEnable":Z
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v10, "NX627J"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static/range {p1 .. p1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getGameKeyState(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 375
    const/4 v5, 0x0

    .line 377
    :cond_3
    const-class v6, Landroid/hardware/input/InputManager;

    const-string/jumbo v10, "setDoubleScreenTouchEnable"

    move-object/from16 v21, v0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 377
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .local v21, "method":Ljava/lang/reflect/Method;
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v0, v1, v16

    invoke-virtual {v6, v10, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 378
    .local v0, "enableFun":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v1, v10

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v0    # "enableFun":Ljava/lang/reflect/Method;
    .end local v2    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v3    # "sources":[Landroid/graphics/Rect;
    .end local v4    # "targets":[Landroid/graphics/Rect;
    .end local v5    # "isEnable":Z
    .end local v7    # "left_right_0":I
    .end local v8    # "top_bottom_0":I
    .end local v9    # "left_right_1":I
    .end local v11    # "top_bottom_1":I
    .end local v12    # "sizeSource":I
    .end local v13    # "newSource":[Landroid/graphics/Rect;
    .end local v14    # "windowManager":Landroid/view/WindowManager;
    .end local v15    # "rotation":I
    .end local v19    # "positionSet":[I
    .end local v21    # "method":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "DualScreenMapHelper"

    const-string/jumbo v2, "setSecondaryTouchRects fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return-void
.end method

.method public static showScreenTouchesDot(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "display"    # Z

    .line 435
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .line 138
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->mToast:Landroid/widget/Toast;

    .line 141
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 142
    sget-object v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    return-void
.end method

.method public static toPositionSet(Ljava/lang/String;)[I
    .locals 7
    .param p0, "positions"    # Ljava/lang/String;

    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "posSet":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 179
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 180
    .local v2, "index":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 181
    .local v5, "pos":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v2

    .line 182
    add-int/lit8 v2, v2, 0x1

    .line 180
    .end local v5    # "pos":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_1
    return-object v1

    .line 175
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

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "pkgNameValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_screen_map_enable_game_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "enableGameList":Ljava/lang/String;
    const-string v2, ""

    .line 90
    .local v2, "updateGameList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    if-eqz p2, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    move-object v2, v3

    goto :goto_3

    .line 93
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    if-eqz p2, :cond_2

    const-string v3, ""

    goto :goto_1

    :cond_2
    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v2, v3

    .line 95
    if-nez p2, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    const-string v3, "DualScreenMapHelper"

    const-string/jumbo v4, "updateEnabledGameList, clearn!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dual_screen_map_enable_game_list"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    return-void

    .line 101
    :cond_3
    if-eqz p2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-string v3, ""

    :goto_2
    move-object v2, v3

    .line 104
    :cond_5
    :goto_3
    const-string v3, "DualScreenMapHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEnabledGameList, updateGameList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    .line 106
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dual_screen_map_enable_game_list"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "enableGameList":Ljava/lang/String;
    .end local v2    # "updateGameList":Ljava/lang/String;
    goto :goto_4

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->DEBUG:Z

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_7
    :goto_4
    return-void
.end method

.method public static updateScaleBoxPosition(Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;II)V
    .locals 18
    .param p0, "view"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;
    .param p1, "progress"    # I
    .param p2, "leftOrRight"    # I

    move/from16 v0, p1

    .line 460
    move/from16 v1, p2

    const/4 v2, 0x0

    .line 461
    .local v2, "upOrDown":Z
    sget v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->lastProgress:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 462
    const/4 v2, 0x1

    .line 464
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 465
    .local v3, "parent":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 466
    .local v4, "mParentWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 467
    .local v5, "mParentHeight":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getLeft()I

    move-result v6

    .line 468
    .local v6, "left":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getRight()I

    move-result v7

    .line 469
    .local v7, "right":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getTop()I

    move-result v8

    .line 470
    .local v8, "top":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getBottom()I

    move-result v9

    .line 472
    .local v9, "bottom":I
    const/16 v10, 0x1e

    .line 473
    .local v10, "adapterFor627":I
    div-int/lit8 v11, v4, 0x2

    .line 474
    .local v11, "middleWidthPos":I
    sget-object v12, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v13, "NX627J"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 475
    div-int/lit8 v12, v4, 0x2

    sub-int v11, v12, v10

    .line 478
    :cond_1
    const/4 v12, 0x1

    if-nez v1, :cond_2

    .line 479
    sget v13, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToLeft_l:I

    if-ge v6, v13, :cond_3

    .line 480
    sget v6, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToLeft_l:I

    .line 481
    sget v13, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToLeft_l:I

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getWidth()I

    move-result v14

    add-int v7, v13, v14

    goto :goto_0

    .line 483
    :cond_2
    if-ne v1, v12, :cond_3

    .line 484
    if-ge v6, v11, :cond_3

    .line 485
    move v6, v11

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getWidth()I

    move-result v13

    add-int v7, v11, v13

    .line 489
    :cond_3
    :goto_0
    sget v13, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToTop:I

    if-ge v8, v13, :cond_4

    .line 490
    sget v8, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToTop:I

    .line 491
    sget v13, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToTop:I

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getHeight()I

    move-result v14

    add-int v9, v13, v14

    .line 493
    :cond_4
    if-nez v1, :cond_5

    .line 494
    if-le v7, v11, :cond_6

    .line 495
    move v7, v11

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getWidth()I

    move-result v12

    sub-int v6, v11, v12

    .line 497
    if-eqz v2, :cond_6

    .line 498
    add-int/lit8 v7, v7, -0x8

    .line 499
    add-int/lit8 v6, v6, -0x8

    goto :goto_1

    .line 502
    :cond_5
    if-ne v1, v12, :cond_6

    .line 503
    sget v12, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToRight_r:I

    if-le v7, v12, :cond_6

    .line 504
    sget v7, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToRight_r:I

    .line 505
    sget v12, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToRight_r:I

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getWidth()I

    move-result v13

    sub-int v6, v12, v13

    .line 506
    if-eqz v2, :cond_6

    .line 507
    add-int/lit8 v7, v7, -0x8

    .line 508
    add-int/lit8 v6, v6, -0x8

    .line 512
    :cond_6
    :goto_1
    sget v12, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToBottom:I

    if-le v9, v12, :cond_7

    .line 513
    sget v9, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToBottom:I

    .line 514
    sget v12, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->canToBottom:I

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getHeight()I

    move-result v13

    sub-int v8, v12, v13

    .line 515
    if-eqz v2, :cond_7

    .line 516
    add-int/lit8 v9, v9, -0x8

    .line 517
    add-int/lit8 v8, v8, -0x8

    .line 520
    :cond_7
    sput v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->lastProgress:I

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 523
    .local v12, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v13, 0x12c

    int-to-double v14, v0

    const-wide v16, 0x40108f5c28f5c28fL    # 4.14

    mul-double v14, v14, v16

    double-to-int v14, v14

    add-int/2addr v13, v14

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 524
    const/16 v13, 0x107

    int-to-double v14, v0

    const-wide v16, 0x400cf5c28f5c28f6L    # 3.62

    mul-double v14, v14, v16

    double-to-int v14, v14

    add-int/2addr v13, v14

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 525
    invoke-virtual {v12, v6, v8, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 526
    move-object/from16 v13, p0

    invoke-virtual {v13, v12}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    return-void
.end method

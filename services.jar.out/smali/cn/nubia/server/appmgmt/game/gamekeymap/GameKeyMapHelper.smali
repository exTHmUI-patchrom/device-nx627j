.class public Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;
.super Ljava/lang/Object;
.source "GameKeyMapHelper.java"


# static fields
.field public static final ACTION_GAME_KEY_MAP_OPTION:Ljava/lang/String; = "cn.nubia.intent.action.GAME_KEY_MAP_OPTION"

.field private static DEBUG:Z = false

.field private static final DISPLAY_GAME_KEY_MAP_GUIDE:Ljava/lang/String; = "display_game_key_map_guide"

.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field private static final ENABLE_GAME_LIST:Ljava/lang/String; = "game_key_map_enable_game_list"

.field public static final FULL_SCREEN:I = 0x1

.field public static final GAME_KEY_MAP_DEFAULT_POS:Landroid/graphics/Rect;

.field public static final GAME_KEY_MAP_DEFAULT_POS_PORTRAIT:Landroid/graphics/Rect;

.field private static final GAME_KEY_MAP_HYXD_DEFAULT_POS:Landroid/graphics/Rect;

.field private static final GAME_KEY_MAP_PUBGM_OR_PUBGM_DEFAULT_POS:Landroid/graphics/Rect;

.field private static final GAME_KEY_MAP_SGAME_DEFAULT_POS:Landroid/graphics/Rect;

.field private static final GAME_KEY_MAP_ZYZ_DEFAULT_POS:Landroid/graphics/Rect;

.field private static final GAME_NETEASE_HYXD_PRE:Ljava/lang/String; = "com.netease.hyxd"

.field private static final GAME_NETEASE_ZJZ_PRE:Ljava/lang/String; = "com.netease.zjz"

.field private static final GAME_TENCENT_PUBGM:Ljava/lang/String; = "com.tencent.tmgp.pubgm"

.field private static final GAME_TENCENT_PUBGMHD:Ljava/lang/String; = "com.tencent.tmgp.pubgmhd"

.field private static final GAME_TENCENT_SGAME:Ljava/lang/String; = "com.tencent.tmgp.sgame"

.field private static final PRE_GAME_KEY_MAP:Ljava/lang/String; = "game_key_map_"

.field public static final STATUS_BAR_HEIGHT:I = 0x54

.field public static final TAG:Ljava/lang/String; = "GameKeyMapHelper"

.field public static mBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mDefaultGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 19
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
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->DEBUG:Z

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x52b

    const/16 v2, 0x39f

    const/16 v3, 0x2f1

    const/16 v4, 0x45

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_SGAME_DEFAULT_POS:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x5b

    const/16 v2, 0x1ff

    const/16 v3, 0xaf

    const/16 v4, 0x253

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_PUBGM_OR_PUBGM_DEFAULT_POS:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x42

    const/16 v2, 0x22c

    const/16 v3, 0x96

    const/16 v4, 0x280

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_HYXD_DEFAULT_POS:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x6c

    const/16 v2, 0x1ed

    const/16 v3, 0xc0

    const/16 v4, 0x241

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_ZYZ_DEFAULT_POS:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x1f2

    const/16 v2, 0x40e

    invoke-direct {v0, v2, v1, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_DEFAULT_POS:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    const/16 v3, 0x3ba

    const/16 v4, 0x246

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_DEFAULT_POS_PORTRAIT:Landroid/graphics/Rect;

    .line 39
    const-string v5, "com.tencent.tmgp.sgame"

    const-string v6, "com.tencent.tmgp.pubgmhd"

    const-string v7, "com.tencent.tmgp.pubgm"

    const-string v8, "com.netease.hyxd.aligames"

    const-string v9, "com.netease.hyxd.nubia"

    const-string v10, "com.netease.hyxd.yixin"

    const-string v11, "com.netease.hyxd.baidu"

    const-string v12, "com.netease.hyxd"

    const-string v13, "com.netease.zjz.uc"

    const-string v14, "com.netease.zjz.nubia"

    const-string v15, "com.netease.zjz.yyxx.sougou"

    const-string v16, "com.netease.zjz"

    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->mDefaultGameList:Ljava/util/List;

    .line 44
    const-string v0, "cn.nubia.launcher"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->mBlackList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableGameKeyMapGuide(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_game_key_map_guide"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static enableGameKeyMap(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 225
    :try_start_0
    const-string v0, "GameKeyMapHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableGameKeyMap enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 227
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

    .line 228
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

    .line 231
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static enableGameKeyMapGuide(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    move v1, v0

    .line 52
    .local v1, "display":I
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_game_key_map_guide"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v3

    .line 54
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-ne v2, v1, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0
.end method

.method public static getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "positionStr":Ljava/lang/String;
    move-object v1, p1

    .line 149
    .local v1, "pkgName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game_key_map_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 156
    :cond_0
    goto :goto_0

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v2

    .line 158
    .local v2, "positionSet":[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 160
    .local v4, "orientation":I
    const-string v5, "GameKeyMapHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFloatViewPosition, orientation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v5, 0x1

    if-eqz v2, :cond_2

    const/4 v6, 0x5

    array-length v7, v2

    if-gt v6, v7, :cond_2

    const/4 v6, 0x4

    aget v7, v2, v6

    if-ne v4, v7, :cond_2

    .line 162
    const-string v7, "GameKeyMapHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFloatViewPosition, saveOrientation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v6, 0x0

    aget v6, v2, v6

    aget v5, v2, v5

    const/4 v7, 0x2

    aget v7, v2, v7

    const/4 v8, 0x3

    aget v8, v2, v8

    invoke-virtual {v3, v6, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 164
    :cond_2
    const-string v6, "com.tencent.tmgp.sgame"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 165
    sget-object v3, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_SGAME_DEFAULT_POS:Landroid/graphics/Rect;

    goto :goto_2

    .line 166
    :cond_3
    const-string v6, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "com.tencent.tmgp.pubgm"

    .line 167
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 169
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "com.netease.hyxd"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 170
    sget-object v3, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_HYXD_DEFAULT_POS:Landroid/graphics/Rect;

    goto :goto_2

    .line 171
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "com.netease.zjz"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 172
    sget-object v3, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_ZYZ_DEFAULT_POS:Landroid/graphics/Rect;

    goto :goto_2

    .line 174
    :cond_6
    if-ne v5, v4, :cond_7

    .line 175
    sget-object v3, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_DEFAULT_POS_PORTRAIT:Landroid/graphics/Rect;

    goto :goto_2

    .line 177
    :cond_7
    sget-object v3, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_DEFAULT_POS:Landroid/graphics/Rect;

    goto :goto_2

    .line 168
    :cond_8
    :goto_1
    sget-object v3, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->GAME_KEY_MAP_PUBGM_OR_PUBGM_DEFAULT_POS:Landroid/graphics/Rect;

    .line 180
    :goto_2
    return-object v3
.end method

.method public static getLocationOnScreen(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 184
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 185
    .local v0, "locations":[I
    const/4 v1, 0x0

    .line 186
    .local v1, "positionStr":Ljava/lang/String;
    move-object v2, p1

    .line 188
    .local v2, "pkgName":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    const/16 v3, 0x2e

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "game_key_map_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 195
    :cond_0
    goto :goto_0

    .line 193
    :catch_0
    move-exception v3

    .line 194
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->DEBUG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->toPositionSet(Ljava/lang/String;)[I

    move-result-object v3

    .line 197
    .local v3, "positionSet":[I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 198
    .local v4, "orientation":I
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    const/4 v7, 0x7

    array-length v8, v3

    if-ne v7, v8, :cond_2

    const/4 v7, 0x4

    aget v7, v3, v7

    if-ne v4, v7, :cond_2

    .line 199
    const/4 v7, 0x5

    aget v7, v3, v7

    aput v7, v0, v6

    .line 200
    const/4 v6, 0x6

    aget v6, v3, v6

    aput v6, v0, v5

    goto :goto_1

    .line 202
    :cond_2
    aput v6, v0, v6

    .line 203
    aput v6, v0, v5

    .line 205
    :goto_1
    return-object v0
.end method

.method private static isFullScreen(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_top_is_full_screen"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, "fullScreen":I
    const-string v1, "GameKeyMapHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFullScreen, fullScreen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isGameKeyMapEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "enable":Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    return v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "game_key_map_enable_game_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "enableGameList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
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

    .line 79
    .end local v1    # "enableGameList":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->DEBUG:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    const-string v1, "GameKeyMapHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isGameKeyMapEnabled, enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v0
.end method

.method private static rectToPoint(Landroid/graphics/Rect;[I)Landroid/graphics/Point;
    .locals 5
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "Location"    # [I

    .line 249
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 250
    .local v0, "pointX":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 251
    .local v1, "pointY":I
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/2addr v3, v0

    const/4 v4, 0x1

    aget v4, p1, v4

    add-int/2addr v4, v1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 252
    .local v2, "point":Landroid/graphics/Point;
    return-object v2
.end method

.method public static resumeGameKeyMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 134
    invoke-static {p0, p1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 135
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p0, p1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->getLocationOnScreen(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 141
    .local v1, "locations":[I
    invoke-static {p0, v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->setGameKeyMapRect(Landroid/content/Context;Landroid/graphics/Rect;[I)V

    .line 142
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 143
    return-void

    .line 136
    .end local v1    # "locations":[I
    :cond_1
    :goto_0
    const-string v1, "GameKeyMapHelper"

    const-string/jumbo v2, "resumeGameKeyMap,  rect  is invalid !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public static saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Rect;[I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "outLocation"    # [I

    .line 117
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 122
    .local v0, "orientation":I
    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 123
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v1, "sb":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game_key_map_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    .end local v0    # "orientation":I
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    goto :goto_1

    .line 118
    :cond_1
    :goto_0
    const-string v0, "GameKeyMapHelper"

    const-string/jumbo v1, "saveFloatViewPosition, packageName or rect  is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public static setGameKeyMapRect(Landroid/content/Context;Landroid/graphics/Rect;[I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "outLocation"    # [I

    .line 236
    if-nez p1, :cond_0

    .line 237
    :try_start_0
    const-string v0, "GameKeyMapHelper"

    const-string/jumbo v1, "setGameKeyMapRect, target is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0

    .line 240
    :cond_0
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 241
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

    .line 242
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->rectToPoint(Landroid/graphics/Rect;[I)Landroid/graphics/Point;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 243
    :goto_0
    nop

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GameKeyMapHelper"

    const-string/jumbo v2, "setGameKeyMapRect fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static toPositionSet(Ljava/lang/String;)[I
    .locals 7
    .param p0, "positions"    # Ljava/lang/String;

    .line 209
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "posSet":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 215
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 216
    .local v2, "index":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 217
    .local v5, "pos":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v2

    .line 218
    add-int/lit8 v2, v2, 0x1

    .line 216
    .end local v5    # "pos":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 220
    :cond_1
    return-object v1

    .line 210
    .end local v0    # "posSet":[Ljava/lang/String;
    .end local v1    # "result":[I
    .end local v2    # "index":I
    :cond_2
    :goto_1
    const-string v0, "GameKeyMapHelper"

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

    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public static updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "GameKeyMapHelper"

    const-string/jumbo v1, "updateEnabledGameList, packageName is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 90
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "pkgNameValue":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "game_key_map_enable_game_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "enableGameList":Ljava/lang/String;
    const-string v2, ""

    .line 93
    .local v2, "updateGameList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    if-eqz p2, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    move-object v2, v3

    goto :goto_3

    .line 96
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 97
    if-eqz p2, :cond_3

    const-string v3, ""

    goto :goto_1

    :cond_3
    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v2, v3

    .line 98
    if-nez p2, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 99
    const-string v3, "GameKeyMapHelper"

    const-string/jumbo v4, "updateEnabledGameList, clearn!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "game_key_map_enable_game_list"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    return-void

    .line 104
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

    .line 107
    :cond_6
    :goto_3
    const-string v3, "GameKeyMapHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEnabledGameList, updateGameList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    .line 109
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "game_key_map_enable_game_list"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "pkgNameValue":Ljava/lang/String;
    .end local v1    # "enableGameList":Ljava/lang/String;
    .end local v2    # "updateGameList":Ljava/lang/String;
    goto :goto_4

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->DEBUG:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_8
    :goto_4
    return-void
.end method

.class public Lcn/nubia/game/GameKeysHelper;
.super Ljava/lang/Object;
.source "GameKeysHelper.java"


# static fields
.field public static final CHANGED_BY_SCREEN_POWER:Ljava/lang/String; = "CHANGED_BY_SCREEN_POWER"

.field private static DEBUG:Z = false

.field public static final DEFAULT_GAME_KEYS:I = 0x10

.field public static final GAME_KEYS_OFF_ON:I = 0x1

.field public static final GAME_KEYS_OFF_ON_CHAT:I = 0x8

.field public static final GAME_KEYS_OFF_ON_DEFAULT:I = 0x0

.field public static final GAME_KEYS_OFF_ON_LIGHT:I = 0x10

.field public static final GAME_KEYS_OFF_ON_NOTIFICATION:I = 0x4

.field public static final GAME_KEYS_OFF_ON_PHONE:I = 0x2

.field public static final GAME_KEYS_OFF_ON_PHONE_DEFAULT:I = 0x0

.field public static final GAME_KEYS_OFF_ON_SUPER_PERFORMANCE:I = 0x20

.field private static final GAME_KEY_STATUS_NODE_PATH_NEW:Ljava/lang/String; = "/sys/devices/platform/soc/soc:gpio_keys/GamekeyStatus"

.field private static final GAME_KEY_STATUS_NODE_PATH_OLD:Ljava/lang/String; = "/sys/bus/platform/devices/soc:gpio_keys/GamekeyStatus"

.field public static final STR_GAME_KEYS_OFF_ON:Ljava/lang/String; = "nubia_db_game_keys"

.field private static final TAG:Ljava/lang/String; = "GameKeysHelper"

.field public static final VIRTUAL_GAME_KEY_CONFIG:Z

.field private static sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcn/nubia/game/GameKeysHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGameKeysValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
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
    sput-boolean v0, Lcn/nubia/game/GameKeysHelper;->DEBUG:Z

    .line 42
    const-string v0, "1"

    const-string/jumbo v1, "ro.nubia.virtualgamekey.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/game/GameKeysHelper;->VIRTUAL_GAME_KEY_CONFIG:Z

    .line 47
    new-instance v0, Lcn/nubia/game/GameKeysHelper$1;

    invoke-direct {v0}, Lcn/nubia/game/GameKeysHelper$1;-><init>()V

    sput-object v0, Lcn/nubia/game/GameKeysHelper;->sInstance:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x10

    iput v0, p0, Lcn/nubia/game/GameKeysHelper;->mGameKeysValue:I

    .line 45
    return-void
.end method

.method public static getDefault()Lcn/nubia/game/GameKeysHelper;
    .locals 1

    .line 54
    sget-object v0, Lcn/nubia/game/GameKeysHelper;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/game/GameKeysHelper;

    return-object v0
.end method


# virtual methods
.method public closeSub(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sub"    # I

    .line 103
    invoke-virtual {p0, p1}, Lcn/nubia/game/GameKeysHelper;->getGameKeysDBValue(Landroid/content/Context;)I

    move-result v0

    .line 104
    .local v0, "gameKeys":I
    not-int v1, p2

    and-int/2addr v1, v0

    .line 105
    .local v1, "newGameKeys":I
    const-string v2, "GameKeysHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " closeSub newGameKeys = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0, p1, v1}, Lcn/nubia/game/GameKeysHelper;->setGameKeysDBValue(Landroid/content/Context;I)V

    .line 107
    return-void
.end method

.method public getGameKeysDBValue(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    nop

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_db_game_keys"

    .line 84
    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 86
    .local v0, "gameKeys":I
    return v0
.end method

.method public getGameKeysValue()I
    .locals 1

    .line 95
    iget v0, p0, Lcn/nubia/game/GameKeysHelper;->mGameKeysValue:I

    return v0
.end method

.method public isOpenGameKeys(I)Z
    .locals 1
    .param p1, "dbValue"    # I

    .line 62
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpenGameKeysSubSwitch(II)Z
    .locals 3
    .param p1, "dbValue"    # I
    .param p2, "subValue"    # I

    .line 75
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcn/nubia/game/GameKeysHelper;->isOpenGameKeys(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    and-int v1, p1, p2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/game/GameKeysHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :cond_1
    return v0
.end method

.method public openSub(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sub"    # I

    .line 110
    invoke-virtual {p0, p1}, Lcn/nubia/game/GameKeysHelper;->getGameKeysDBValue(Landroid/content/Context;)I

    move-result v0

    .line 111
    .local v0, "gameKeys":I
    or-int v1, v0, p2

    .line 112
    .local v1, "newGameKeys":I
    const-string v2, "GameKeysHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " openSub newGameKeys = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0, p1, v1}, Lcn/nubia/game/GameKeysHelper;->setGameKeysDBValue(Landroid/content/Context;I)V

    .line 114
    return-void
.end method

.method public readNodeValue()Ljava/lang/String;
    .locals 8

    .line 129
    const-string v0, "/sys/devices/platform/soc/soc:gpio_keys/GamekeyStatus"

    .line 130
    .local v0, "mNodePath":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "NX609J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const-string v0, "/sys/bus/platform/devices/soc:gpio_keys/GamekeyStatus"

    .line 133
    :cond_0
    const/4 v1, 0x0

    .line 134
    .local v1, "fileReader":Ljava/io/FileReader;
    const/4 v2, 0x0

    move-object v3, v2

    .line 136
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 138
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 140
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v5

    .line 140
    .local v2, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 141
    nop

    .line 149
    nop

    .line 150
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_0

    .line 155
    :catch_0
    move-exception v5

    goto :goto_1

    .line 152
    :goto_0
    nop

    .line 153
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 155
    :goto_1
    nop

    .line 156
    .local v5, "ex":Ljava/lang/Exception;
    const-string v6, "GameKeysHelper"

    const-string/jumbo v7, "readNodeValue finally exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v5    # "ex":Ljava/lang/Exception;
    goto :goto_3

    .line 157
    :goto_2
    nop

    .line 141
    :goto_3
    return-object v2

    .line 143
    :cond_1
    nop

    .line 149
    nop

    .line 150
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_4

    .line 155
    :catch_1
    move-exception v5

    goto :goto_5

    .line 152
    :goto_4
    nop

    .line 153
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 155
    :goto_5
    nop

    .line 156
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string v6, "GameKeysHelper"

    const-string/jumbo v7, "readNodeValue finally exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v5    # "ex":Ljava/lang/Exception;
    goto :goto_7

    .line 157
    :goto_6
    nop

    .line 143
    :goto_7
    return-object v2

    .line 148
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    goto :goto_c

    .line 144
    :catch_2
    move-exception v4

    .line 145
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "GameKeysHelper"

    const-string/jumbo v6, "readNodeValue exception"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    nop

    .line 149
    if-eqz v1, :cond_2

    .line 150
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_8

    .line 155
    :catch_3
    move-exception v5

    goto :goto_9

    .line 152
    :cond_2
    :goto_8
    if-eqz v3, :cond_3

    .line 153
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    .line 155
    :goto_9
    nop

    .line 156
    .restart local v5    # "ex":Ljava/lang/Exception;
    const-string v6, "GameKeysHelper"

    const-string/jumbo v7, "readNodeValue finally exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v5    # "ex":Ljava/lang/Exception;
    goto :goto_b

    .line 157
    :cond_3
    :goto_a
    nop

    .line 146
    :goto_b
    return-object v2

    .line 148
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_c
    nop

    .line 149
    if-eqz v1, :cond_4

    .line 150
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_d

    .line 155
    :catch_4
    move-exception v4

    goto :goto_e

    .line 152
    :cond_4
    :goto_d
    if-eqz v3, :cond_5

    .line 153
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_f

    .line 155
    :goto_e
    nop

    .line 156
    .local v4, "ex":Ljava/lang/Exception;
    const-string v5, "GameKeysHelper"

    const-string/jumbo v6, "readNodeValue finally exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v4    # "ex":Ljava/lang/Exception;
    nop

    .line 157
    :cond_5
    :goto_f
    throw v2
.end method

.method public readNodeValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "rebootKeyStatus":Ljava/lang/String;
    sget-boolean v1, Lcn/nubia/game/GameKeysHelper;->VIRTUAL_GAME_KEY_CONFIG:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "virtual_game_key"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 121
    .local v1, "gameState":I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    move-object v0, v2

    .line 122
    .end local v1    # "gameState":I
    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/game/GameKeysHelper;->readNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_1
    return-object v0
.end method

.method public setGameKeysDBValue(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gamekeys"    # I

    .line 90
    nop

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_db_game_keys"

    .line 90
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    return-void
.end method

.method public setGameKeysValue(I)V
    .locals 0
    .param p1, "gamekeys"    # I

    .line 99
    iput p1, p0, Lcn/nubia/game/GameKeysHelper;->mGameKeysValue:I

    .line 100
    return-void
.end method

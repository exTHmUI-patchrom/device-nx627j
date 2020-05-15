.class public final Lcom/android/server/display/NubiaBrightnessUtils;
.super Ljava/lang/Object;
.source "NubiaBrightnessUtils.java"


# static fields
.field public static final AMBIENT_LIGHT_LUX_MAX_OUTDOOR_MODE:F = 6000.0f

.field public static final AMBIENT_LIGHT_LUX_THRESHOLD_OUTDOOR_MODE:F = 5000.0f

.field public static final BRIGHT_MODE_NORMAL:I = 0x17

.field public static final BRIGHT_MODE_OUTDOOR:I = 0x18

.field public static final BRIGHT_MODE_PATH:Ljava/lang/String; = "/sys/kernel/lcd_enhance/hbm_mode"

.field public static final BRIGHT_MODE_PROP_NAME:Ljava/lang/String; = "brightness.hbm_mode"

.field public static final BRIGHT_MODE_UNKNOWN:I = -0x1

.field public static final SCREEN_ALL:I = 0x3ea

.field public static final SCREEN_BACK:I = 0x3e9

.field public static final SCREEN_FRONT:I = 0x3e8

.field public static mVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsSupportOutdoorBrightMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/display/NubiaBrightnessUtils;->mVideoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "NubiaBrightnessUtils"

    iput-object v0, p0, Lcom/android/server/display/NubiaBrightnessUtils;->TAG:Ljava/lang/String;

    .line 36
    const-string v0, "NubiaBrightnessUtils"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaBrightnessUtils;->DEBUG:Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaBrightnessUtils;->mIsSupportOutdoorBrightMode:Z

    .line 58
    iput-object p1, p0, Lcom/android/server/display/NubiaBrightnessUtils;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaBrightnessUtils;->init(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/NubiaBrightnessUtils;->enableOutdoorBrightMode(Z)V

    .line 73
    iget-boolean v0, p0, Lcom/android/server/display/NubiaBrightnessUtils;->mIsSupportOutdoorBrightMode:Z

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/android/server/display/NubiaBrightnessUtils;->mVideoList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/display/NubiaBrightnessUtils;->loadDefaultVideoList(Ljava/util/ArrayList;)V

    .line 75
    :cond_0
    return-void
.end method

.method public static isVideoActivityForeground()Z
    .locals 3

    .line 128
    sget-object v0, Lcom/android/server/display/NubiaBrightnessUtils;->mVideoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/android/server/display/NubiaBrightnessUtils;->mVideoList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/display/NubiaBrightnessUtils;->loadDefaultVideoList(Ljava/util/ArrayList;)V

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 131
    .local v0, "ret":Z
    const-string/jumbo v1, "sys.perf.activate"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "curActivity":Ljava/lang/String;
    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/server/display/NubiaBrightnessUtils;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    const/4 v0, 0x1

    .line 135
    :cond_1
    return v0
.end method

.method public static loadDefaultVideoList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p0, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "NubiaBrightnessUtils"

    const-string/jumbo v1, "loadDefaultVideoList"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v0, "com.google.android.youtube"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v0, "com.sports.baofeng"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v0, "com.letv.android.client.samsungpad"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v0, "com.qiyi.video"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const-string/jumbo v0, "peace.org.tm.android"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v0, "cn.nubia.video"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v0, "com.huajiao"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v0, "com.storm.smart"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v0, "com.youku.phone"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v0, "com.tencent.tmgp.chushou"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v0, "air.tv.douyu.android"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v0, "com.ss.android.ugc.live"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v0, "com.pplive.androidphone"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v0, "com.lesports.glivesports"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const-string/jumbo v0, "tv.xiaoka.live"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v0, "com.funshion.video.mobile"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v0, "com.duowan.mobile"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v0, "com.netease.edu.study"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v0, "com.tudou.android"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v0, "com.google.android.youtube Youtube"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const-string/jumbo v0, "org.keke.tv.vod"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v0, "com.longzhu.tga"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v0, "com.duowan.kiwi"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v0, "com.letv.android.client"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v0, "com.tencent.qqlive"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v0, "android.zhibo8"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    const-string/jumbo v0, "tv.pps.mobile"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v0, "com.hunantv.imgo.activity"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v0, "com.meelive.ingkee"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v0, "com.ss.android.ugc.aweme"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v0, "com.sohu.sohuvideo"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v0, "com.baidu.video"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v0, "com.qihoo.video"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v0, "com.google.android.videos"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v0, "com.ifeng.newvideo"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v0, "com.yingshi2345"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v0, "com.meitu.meipaimv"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v0, "com.tencent.qqsports"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v0, "com.cmcc.cmvideo"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v0, "com.panda.videoliveplatform"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v0, "com.kascend.chushou"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v0, "com.pplive.androidphone.nubia"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v0, "com.letv.android.client.pad"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v0, "com.smile.gifmaker"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v0, "com.ss.android.article.video"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    const-string/jumbo v0, "tv.danmaku.bili"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method


# virtual methods
.method public enableOutdoorBrightMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/server/display/NubiaBrightnessUtils;->mIsSupportOutdoorBrightMode:Z

    .line 64
    const-string v0, "NubiaBrightnessUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsSupportOutdoorBrightMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/NubiaBrightnessUtils;->mIsSupportOutdoorBrightMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public getDevBrightMode(I)I
    .locals 8
    .param p1, "screenStatus"    # I

    .line 173
    const/4 v0, -0x1

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 174
    return v0

    .line 176
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/kernel/lcd_enhance/hbm_mode"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 177
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 180
    .local v4, "i":I
    iget-boolean v5, p0, Lcom/android/server/display/NubiaBrightnessUtils;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "NubiaBrightnessUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPropBrightMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :cond_1
    const/16 v2, 0x17

    if-ne v4, v2, :cond_2

    .line 182
    nop

    .line 189
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 182
    return v2

    .line 183
    :cond_2
    const/16 v2, 0x18

    if-ne v4, v2, :cond_3

    .line 184
    nop

    .line 189
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 184
    return v2

    .line 186
    :cond_3
    nop

    .line 189
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 186
    return v0

    .line 189
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 192
    .end local v1    # "br":Ljava/io/BufferedReader;
    nop

    .line 194
    iget-boolean v1, p0, Lcom/android/server/display/NubiaBrightnessUtils;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "NubiaBrightnessUtils"

    const-string v2, "getPropBrightMode: UNKNOWN."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_5
    return v0

    .line 189
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 176
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    :goto_0
    if-eqz v2, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NubiaBrightnessUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    return v0
.end method

.method public getPropBrightMode(I)I
    .locals 4
    .param p1, "screenStatus"    # I

    .line 139
    const/4 v0, -0x1

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 140
    return v0

    .line 141
    :cond_0
    const-string v1, "brightness.hbm_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, "hbm_mode":I
    iget-boolean v1, p0, Lcom/android/server/display/NubiaBrightnessUtils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "NubiaBrightnessUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPropBrightMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    return v0
.end method

.method public isSupportOutdoorBrightMode()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/android/server/display/NubiaBrightnessUtils;->mIsSupportOutdoorBrightMode:Z

    return v0
.end method

.method public setBrightModeByNubiaPolicy(IZIF)Z
    .locals 6
    .param p1, "screenStatus"    # I
    .param p2, "autoBrightSwitch"    # Z
    .param p3, "brightness"    # I
    .param p4, "curAmbienLux"    # F

    .line 233
    iget-boolean v0, p0, Lcom/android/server/display/NubiaBrightnessUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NubiaBrightnessUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBrightModeByNubiaPolicy: screenStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " autoBrightSwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " curAmbienLux:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    const/16 v0, 0x3e9

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 236
    return v1

    .line 237
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/NubiaBrightnessUtils;->mIsSupportOutdoorBrightMode:Z

    if-nez v0, :cond_2

    .line 238
    return v1

    .line 239
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/display/NubiaBrightnessUtils;->getPropBrightMode(I)I

    move-result v0

    .line 240
    .local v0, "currMode":I
    const/16 v1, 0x17

    if-nez p2, :cond_3

    .line 241
    if-eq v0, v1, :cond_6

    .line 242
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/NubiaBrightnessUtils;->setPropBrightMode(II)V

    goto :goto_0

    .line 244
    :cond_3
    invoke-static {}, Lcom/android/server/display/NubiaBrightnessUtils;->isVideoActivityForeground()Z

    move-result v2

    .line 245
    .local v2, "isVideoApk":Z
    iget-boolean v3, p0, Lcom/android/server/display/NubiaBrightnessUtils;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "NubiaBrightnessUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isVideoActivityForeground="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_4
    const/16 v3, 0xff

    if-ne p3, v3, :cond_5

    const v3, 0x459c4000    # 5000.0f

    cmpl-float v3, p4, v3

    if-lez v3, :cond_5

    if-nez v2, :cond_5

    .line 249
    const/16 v1, 0x18

    if-eq v0, v1, :cond_6

    .line 250
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/NubiaBrightnessUtils;->setPropBrightMode(II)V

    goto :goto_0

    .line 253
    :cond_5
    if-eq v0, v1, :cond_6

    .line 254
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/NubiaBrightnessUtils;->setPropBrightMode(II)V

    .line 257
    .end local v2    # "isVideoApk":Z
    :cond_6
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public setDevBrightMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, "fd":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/sys/kernel/lcd_enhance/hbm_mode"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 202
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 207
    :pswitch_0
    const-string v1, "24"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 208
    goto :goto_0

    .line 204
    :pswitch_1
    const-string v1, "23"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 205
    nop

    .line 213
    :goto_0
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 214
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 215
    const/4 v0, 0x0

    .line 216
    iget-boolean v1, p0, Lcom/android/server/display/NubiaBrightnessUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "NubiaBrightnessUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDevBrightMode mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    if-eqz v0, :cond_1

    .line 222
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :goto_1
    const/4 v0, 0x0

    .line 226
    :goto_2
    goto :goto_4

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "NubiaBrightnessUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v4, "[setDevBrightMode close] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 220
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 217
    :catch_1
    move-exception v1

    .line 218
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "NubiaBrightnessUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDevBrightMode] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 222
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 224
    :catch_2
    move-exception v1

    .line 225
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v2, "NubiaBrightnessUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 229
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    return-void

    .line 220
    :goto_5
    if-eqz v0, :cond_2

    .line 222
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 223
    const/4 v0, 0x0

    .line 226
    goto :goto_6

    .line 224
    :catch_3
    move-exception v2

    .line 225
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDevBrightMode close] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NubiaBrightnessUtils"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_6
    throw v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPropBrightMode(II)V
    .locals 3
    .param p1, "screenStatus"    # I
    .param p2, "mode"    # I

    .line 147
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 148
    return-void

    .line 149
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 166
    const-string v0, "brightness.hbm_mode"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :pswitch_0
    const-string v0, "brightness.hbm_mode"

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget v0, Lcom/android/server/display/NubiaRampAnimator;->mCurrentValue:I

    const/16 v2, 0xff0

    if-ne v0, v2, :cond_1

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/server/display/NubiaBrightnessUtils;->getDevBrightMode(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 160
    invoke-virtual {p0, v1}, Lcom/android/server/display/NubiaBrightnessUtils;->setDevBrightMode(I)V

    goto :goto_0

    .line 151
    :pswitch_1
    const-string v0, "brightness.hbm_mode"

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/server/display/NubiaBrightnessUtils;->getDevBrightMode(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/server/display/NubiaBrightnessUtils;->setDevBrightMode(I)V

    .line 169
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

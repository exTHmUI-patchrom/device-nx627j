.class public Lcom/android/server/policy/PalmCoverCtrl;
.super Ljava/lang/Object;
.source "PalmCoverCtrl.java"

# interfaces
.implements Lcom/android/server/policy/ISettingListener;
.implements Lcom/android/server/policy/IKeyBeforeQueueingHandler;
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;


# static fields
.field private static final SUB_TAG:Ljava/lang/String; = "[PalmCoverCtrl] "

.field private static final TAG:Ljava/lang/String; = "GesturePolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPalmCoverEnable:I

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/PalmCoverCtrl;->mPalmCoverEnable:I

    .line 36
    iput-object p1, p0, Lcom/android/server/policy/PalmCoverCtrl;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/PalmCoverCtrl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/PalmCoverCtrl;->mPowerManager:Landroid/os/PowerManager;

    .line 39
    return-void
.end method

.method private enablePalmGesture(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 106
    :try_start_0
    const-string v0, "GesturePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PalmCoverCtrl] set palm detector "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 108
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lnubia/config/SensorGestureFeature;->getPalmScreenLockNode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/PalmCoverCtrl;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const-string v1, "/sys/devices/platform/second_touch.0/palm"

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/PalmCoverCtrl;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GesturePolicy"

    const-string v2, "[PalmCoverCtrl] enablePalmCoverEvent failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private writeNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 121
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    nop

    .line 125
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 127
    const-string v1, "GesturePolicy"

    const-string v2, "[PalmCoverCtrl] set palm detector end"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    nop

    .line 129
    return-void

    .line 124
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 127
    :cond_0
    const-string v2, "GesturePolicy"

    const-string v3, "[PalmCoverCtrl] set palm detector end"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 74
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/16 v3, 0x8b

    if-eq v0, v3, :cond_0

    .line 75
    return-wide v1

    .line 77
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PalmCoverCtrl;->mPalmCoverEnable:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 78
    return-wide v1

    .line 80
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .line 44
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/16 v3, 0x8b

    if-ne v0, v3, :cond_3

    .line 45
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/android/server/policy/PalmCoverCtrl;->mPalmCoverEnable:I

    if-ne v0, v3, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PalmCoverCtrl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    const-string v0, "GesturePolicy"

    const-string v3, "[[PalmCoverCtrl] ] Detect palm when non interactive"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-wide v1

    .line 56
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PalmCoverCtrl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "telecom"

    .line 57
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 58
    .local v0, "telephonyManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    const-string v3, "GesturePolicy"

    const-string v4, "[PalmCoverCtrl] palm error because phone"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-wide v1

    .line 64
    .end local v0    # "telephonyManager":Landroid/telecom/TelecomManager;
    :cond_2
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "GesturePolicy"

    const-string v4, "getPhoneInterface() error"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const-string v0, "GesturePolicy"

    const-string v3, "[[PalmCoverCtrl] ] go to sleep for palm cover keycode."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/android/server/policy/PalmCoverCtrl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 69
    return-wide v1

    .line 47
    :cond_3
    :goto_1
    return-wide v1
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 86
    const-string/jumbo v0, "palm_cover"

    .line 87
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 89
    return-void
.end method

.method public updateSettings()V
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/android/server/policy/PalmCoverCtrl;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "palm_cover"

    .line 93
    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 96
    .local v0, "palmCover":I
    iget v1, p0, Lcom/android/server/policy/PalmCoverCtrl;->mPalmCoverEnable:I

    if-eq v1, v0, :cond_1

    .line 97
    const-string v1, "GesturePolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PalmCoverCtrl] palm cover is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput v0, p0, Lcom/android/server/policy/PalmCoverCtrl;->mPalmCoverEnable:I

    .line 99
    iget v1, p0, Lcom/android/server/policy/PalmCoverCtrl;->mPalmCoverEnable:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/policy/PalmCoverCtrl;->enablePalmGesture(Z)V

    .line 101
    :cond_1
    return-void
.end method

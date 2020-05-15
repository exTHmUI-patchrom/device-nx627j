.class public Lcom/android/server/policy/DoubleClickScreenOnCtrl;
.super Ljava/lang/Object;
.source "DoubleClickScreenOnCtrl.java"

# interfaces
.implements Lcom/android/server/policy/ISettingListener;
.implements Lcom/android/server/policy/IKeyBeforeQueueingHandler;


# static fields
.field private static final SUB_TAG:Ljava/lang/String; = "[DoubleClickScreenOnCtrl] "

.field private static final TAG:Ljava/lang/String; = "GesturePolicy"


# instance fields
.field private isProxUltrasonic:Z

.field private mContext:Landroid/content/Context;

.field private mDbStatus:I

.field private mIsInitMethod:Z

.field private mNoteWakeUp:Ljava/lang/reflect/Method;

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field mPowerManager:Landroid/os/PowerManager;

.field mProximity:Landroid/hardware/Sensor;

.field mProximityakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorEventLister:Landroid/hardware/SensorEventListener;

.field mTimeOutRunnable:Ljava/lang/Runnable;

.field mWaitTimeouthandler:Landroid/os/Handler;

.field sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 4
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mDbStatus:I

    .line 56
    new-instance v1, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;-><init>(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)V

    iput-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mTimeOutRunnable:Ljava/lang/Runnable;

    .line 172
    new-instance v1, Lcom/android/server/policy/DoubleClickScreenOnCtrl$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl$3;-><init>(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)V

    iput-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    .line 236
    iput-boolean v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mIsInitMethod:Z

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mNoteWakeUp:Ljava/lang/reflect/Method;

    .line 69
    iput-object p1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 70
    iput-object p2, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mContext:Landroid/content/Context;

    .line 71
    iget-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    .line 73
    iget-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximity:Landroid/hardware/Sensor;

    .line 76
    new-instance v1, Lcom/android/server/policy/DoubleClickScreenOnCtrl$2;

    iget-object v2, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/DoubleClickScreenOnCtrl$2;-><init>(Lcom/android/server/policy/DoubleClickScreenOnCtrl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mWaitTimeouthandler:Landroid/os/Handler;

    .line 83
    const-string/jumbo v1, "power"

    .line 84
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPowerManager:Landroid/os/PowerManager;

    .line 85
    iget-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "GesturePolicy prox"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximityakeLock:Landroid/os/PowerManager$WakeLock;

    .line 87
    iget-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximityakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 88
    const-string v1, "audio.use.ultrasonic"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->isProxUltrasonic:Z

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    .line 37
    invoke-direct {p0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->turnScreenOn()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/DoubleClickScreenOnCtrl;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DoubleClickScreenOnCtrl;
    .param p1, "x1"    # Landroid/hardware/SensorManager;
    .param p2, "x2"    # Landroid/hardware/SensorEventListener;
    .param p3, "x3"    # Z

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->disableProximity(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V

    return-void
.end method

.method private disableProximity(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V
    .locals 3
    .param p1, "sm"    # Landroid/hardware/SensorManager;
    .param p2, "listener"    # Landroid/hardware/SensorEventListener;
    .param p3, "sleep"    # Z

    .line 200
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 201
    invoke-direct {p0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->releaseWakeLock()V

    .line 202
    if-eqz p3, :cond_0

    .line 203
    const-string v0, "GesturePolicy"

    const-string v1, "[DoubleClickScreenOnCtrl] disableProximity : go to sleep"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 207
    :cond_0
    return-void
.end method

.method private enableDoubleClickWake(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 114
    :try_start_0
    const-string v0, "GesturePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DoubleClickScreenOnCtrl] set double click wake detector "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->writeNodeValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GesturePolicy"

    const-string v2, "[DoubleClickScreenOnCtrl] enableDoubleClickWake failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private enableProximity(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V
    .locals 1
    .param p1, "sm"    # Landroid/hardware/SensorManager;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "listener"    # Landroid/hardware/SensorEventListener;

    .line 194
    invoke-direct {p0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->getWakeLock()V

    .line 195
    const/4 v0, 0x2

    invoke-virtual {p1, p3, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 196
    return-void
.end method

.method private getWakeLock()V
    .locals 3

    .line 224
    const-string v0, "GesturePolicy"

    const-string v1, "[DoubleClickScreenOnCtrl] getWakeLock"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximityakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 226
    return-void
.end method

.method private noteKeyguardWakeUp()V
    .locals 4

    .line 241
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mIsInitMethod:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "noteKeyguardWakeUp"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mNoteWakeUp:Ljava/lang/reflect/Method;

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mIsInitMethod:Z

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mNoteWakeUp:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mNoteWakeUp:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_1
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 251
    :goto_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximityakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "GesturePolicy"

    const-string v1, "[DoubleClickScreenOnCtrl] releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximityakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 233
    :cond_0
    return-void
.end method

.method private turnScreenOn()V
    .locals 3

    .line 210
    const-string v0, "GesturePolicy"

    const-string v1, "[DoubleClickScreenOnCtrl] turnScreenOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->noteKeyguardWakeUp()V

    .line 214
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "GesturePolicy"

    .line 215
    const v2, 0x3000001a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 218
    .local v0, "doubleClickWake":Landroid/os/PowerManager$WakeLock;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 219
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 220
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 221
    return-void
.end method

.method private writeNodeValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    .line 125
    invoke-static {}, Lnubia/config/SensorGestureFeature;->getWakeGestureNode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 126
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    nop

    .line 130
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 133
    return-void

    .line 129
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    throw v1
.end method


# virtual methods
.method public handleWakeupKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "isScreenOn"    # Z

    .line 145
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x8c

    if-eq v0, v1, :cond_0

    .line 146
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-nez p2, :cond_3

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 153
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 154
    .local v0, "telephonyManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const-string v1, "GesturePolicy"

    const-string v2, "[DoubleClickScreenOnCtrl] double click error because phone status"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-void

    .line 161
    .end local v0    # "telephonyManager":Landroid/telecom/TelecomManager;
    :cond_1
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "GesturePolicy"

    const-string v2, "[DoubleClickScreenOnCtrl] getPhoneInterface() error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->isProxUltrasonic:Z

    if-eqz v0, :cond_2

    .line 163
    invoke-direct {p0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->turnScreenOn()V

    goto :goto_1

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mWaitTimeouthandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mProximity:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->enableProximity(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V

    .line 169
    :cond_3
    :goto_1
    return-void
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .line 138
    invoke-virtual {p0, p1, p3}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->handleWakeupKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 139
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 95
    const-string v0, "double_click_wake"

    .line 96
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 95
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 98
    return-void
.end method

.method public updateSettings()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "double_click_wake"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 105
    .local v1, "doubleClickWake":I
    iget v3, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mDbStatus:I

    if-eq v3, v1, :cond_1

    .line 106
    iput v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mDbStatus:I

    .line 107
    iget v3, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mDbStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    nop

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->enableDoubleClickWake(Z)V

    .line 109
    :cond_1
    return-void
.end method

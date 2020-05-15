.class public Lcn/nubia/server/policy/CameraCtrl;
.super Ljava/lang/Object;
.source "CameraCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
.implements Lcom/android/server/policy/IKeyBeforeQueueingHandler;


# static fields
.field private static final CAPTEUR_CAMERA_SERVICE_NAME:Ljava/lang/String; = "com.android.captureCamera.CaptureCameraService"

.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final ON_TICK_TIME_FOR_SEND_INTENT:J = 0x1f4L

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "CameraCtrl"


# instance fields
.field private final mCameraLongPress:Ljava/lang/Runnable;

.field private mCleckCount:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKeyCleckTime:J

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVolumeUpCleckCount:I

.field private mVolumeUpCleckTime:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "keyguard_locked"

    .line 38
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/policy/CameraCtrl;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/policy/CameraCtrl;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 46
    iput-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    .line 48
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mKeyCleckTime:J

    .line 49
    iput v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    .line 50
    iput-wide v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckTime:J

    .line 53
    new-instance v0, Lcn/nubia/server/policy/CameraCtrl$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/CameraCtrl$1;-><init>(Lcn/nubia/server/policy/CameraCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcn/nubia/server/policy/CameraCtrl$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/CameraCtrl$2;-><init>(Lcn/nubia/server/policy/CameraCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 65
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->init()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/CameraCtrl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/CameraCtrl;

    .line 29
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/CameraCtrl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/CameraCtrl;

    .line 29
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/CameraCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/CameraCtrl;

    .line 29
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->startCamera()V

    return-void
.end method

.method private closeCamera()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 218
    .local v0, "mActivityManager":Landroid/app/ActivityManager;
    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method private getUserTime()J
    .locals 4

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/server/policy/CameraCtrl;->mKeyCleckTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getVolumeUpUserTime()J
    .locals 4

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private handleKeycodeCamera(ZZZ)V
    .locals 4
    .param p1, "down"    # Z
    .param p2, "isScreenOn"    # Z
    .param p3, "up"    # Z

    .line 183
    if-eqz p1, :cond_0

    .line 184
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->isCanEnterCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 187
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 190
    :cond_0
    if-eqz p3, :cond_1

    .line 191
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    :cond_1
    :goto_0
    return-void
.end method

.method private handleKeycodeVolumeDown(Z)V
    .locals 6
    .param p1, "down"    # Z

    .line 166
    if-eqz p1, :cond_2

    .line 167
    iget v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    .line 168
    iget v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    if-ne v0, v1, :cond_0

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mKeyCleckTime:J

    goto :goto_0

    .line 170
    :cond_0
    iget v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 171
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->getUserTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->startCaptureCamearService()V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mKeyCleckTime:J

    goto :goto_0

    .line 176
    :cond_1
    iput v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mKeyCleckTime:J

    .line 180
    :cond_2
    :goto_0
    return-void
.end method

.method private handleKeycodeVolumeUp(Z)V
    .locals 6
    .param p1, "down"    # Z

    .line 149
    if-eqz p1, :cond_2

    .line 150
    iget v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    .line 151
    iget v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    if-ne v0, v1, :cond_0

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckTime:J

    goto :goto_0

    .line 153
    :cond_0
    iget v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 154
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->getVolumeUpUserTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 155
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->startCaptureCamearService()V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckTime:J

    goto :goto_0

    .line 159
    :cond_1
    iput v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckTime:J

    .line 163
    :cond_2
    :goto_0
    return-void
.end method

.method private init()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 71
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v1, "CameraCtrl"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 73
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mVibrator:Landroid/os/Vibrator;

    .line 74
    return-void
.end method

.method private isCameraRunning()Z
    .locals 5

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "flag":Z
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    .line 265
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 266
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 267
    .local v2, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 268
    const-string v3, "com.android.camera"

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 269
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const/4 v0, 0x1

    .line 273
    :cond_0
    return v0
.end method

.method private isCanEnterCamera()Z
    .locals 5

    .line 222
    const/4 v0, 0x1

    .line 223
    .local v0, "bconfilc":Z
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "visitor"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 225
    .local v1, "state":I
    const-string v2, "CameraCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-nez v1, :cond_0

    .line 227
    const/4 v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .locals 5

    .line 90
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 91
    .local v1, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/policy/PhoneWindowManager;>;"
    const-string/jumbo v2, "isKeyguardShowingAndNotOccluded"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 92
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 93
    iget-object v3, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 106
    .end local v1    # "mClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/policy/PhoneWindowManager;>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "CameraCtrl"

    const-string v3, "SecurityException in Method isKeyguardShowingAndNotOccluded"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    return v0

    .line 103
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "CameraCtrl"

    const-string v3, "InvocationTargetException in Method isKeyguardShowingAndNotOccluded"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    return v0

    .line 100
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "CameraCtrl"

    const-string v3, "IllegalAccessException in Method isKeyguardShowingAndNotOccluded"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    return v0

    .line 97
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "CameraCtrl"

    const-string v3, "IllegalArgumentException in Method isKeyguardShowingAndNotOccluded"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    return v0

    .line 94
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "CameraCtrl"

    const-string v3, "NoSuchMethodException in Method isKeyguardShowingAndNotOccluded"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    return v0
.end method

.method private isServiceRunning()Z
    .locals 6

    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "manager":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    .line 280
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    move-object v0, v2

    .line 281
    const v2, 0x7fffffff

    .line 282
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 283
    .local v2, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    move v3, v1

    .line 283
    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 284
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "sName":Ljava/lang/String;
    const-string v5, "com.android.captureCamera.CaptureCameraService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 287
    const/4 v1, 0x1

    return v1

    .line 283
    .end local v4    # "sName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    .end local v2    # "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 290
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CameraCtrl"

    const-string/jumbo v4, "isServiceRunning failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method private setScreenOn()V
    .locals 4

    .line 254
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 256
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v1, "CameraCtrl"

    const v2, 0x10000006

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 259
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 260
    return-void
.end method

.method private startCamera()V
    .locals 0

    .line 251
    return-void
.end method

.method private startCaptureCamearService()V
    .locals 3

    .line 196
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const-string v0, "CameraCtrl"

    const-string/jumbo v1, "service is not start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 200
    :cond_0
    const-string v0, "CameraCtrl"

    const-string v1, "CameraCtrl send captureCamera intent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.captureCamera.CaptureCameraService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 205
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 3
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 122
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    .line 123
    .local v0, "keyguardOn":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    .line 124
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->startCamera()V

    .line 128
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .line 134
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 135
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    nop

    .line 136
    .local v1, "up":Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_2

    .line 137
    invoke-direct {p0, v0, p3, v1}, Lcn/nubia/server/policy/CameraCtrl;->handleKeycodeCamera(ZZZ)V

    .line 139
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x19

    if-ne v2, v3, :cond_3

    .line 140
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/CameraCtrl;->handleKeycodeVolumeDown(Z)V

    .line 142
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_4

    .line 143
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/CameraCtrl;->handleKeycodeVolumeUp(Z)V

    .line 145
    :cond_4
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method

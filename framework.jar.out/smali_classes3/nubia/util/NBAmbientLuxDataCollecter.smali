.class public Lnubia/util/NBAmbientLuxDataCollecter;
.super Ljava/lang/Object;
.source "NBAmbientLuxDataCollecter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxCallback;,
        Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MSG_RECORD_AMBIENT_LUX:I = 0x1

.field private static final MSG_SET_LIGHT_SENSOR_ENABLE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTrggerType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lnubia/util/NBAmbientLuxDataCollecter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnubia/util/NBAmbientLuxDataCollecter;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "AmbientLuxData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lnubia/util/NBAmbientLuxDataCollecter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxCallback;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lnubia/util/NBAmbientLuxDataCollecter$1;

    invoke-direct {v0, p0}, Lnubia/util/NBAmbientLuxDataCollecter$1;-><init>(Lnubia/util/NBAmbientLuxDataCollecter;)V

    iput-object v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 52
    iput-object p1, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mContext:Landroid/content/Context;

    .line 53
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    iput-object p3, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mCallback:Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxCallback;

    .line 55
    iget-object v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mLightSensor:Landroid/hardware/Sensor;

    .line 56
    new-instance v0, Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;

    invoke-direct {v0, p0, p2}, Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;-><init>(Lnubia/util/NBAmbientLuxDataCollecter;Landroid/os/Looper;)V

    iput-object v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mHandler:Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lnubia/util/NBAmbientLuxDataCollecter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/util/NBAmbientLuxDataCollecter;

    .line 24
    iget-object v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mTrggerType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lnubia/util/NBAmbientLuxDataCollecter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnubia/util/NBAmbientLuxDataCollecter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mTrggerType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lnubia/util/NBAmbientLuxDataCollecter;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/util/NBAmbientLuxDataCollecter;
    .param p1, "x1"    # Z

    .line 24
    invoke-direct {p0, p1}, Lnubia/util/NBAmbientLuxDataCollecter;->handleLightSensorEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lnubia/util/NBAmbientLuxDataCollecter;)Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxCallback;
    .locals 1
    .param p0, "x0"    # Lnubia/util/NBAmbientLuxDataCollecter;

    .line 24
    iget-object v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mCallback:Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxCallback;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 24
    sget-boolean v0, Lnubia/util/NBAmbientLuxDataCollecter;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lnubia/util/NBAmbientLuxDataCollecter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lnubia/util/NBAmbientLuxDataCollecter;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/util/NBAmbientLuxDataCollecter;

    .line 24
    iget-boolean v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lnubia/util/NBAmbientLuxDataCollecter;F)V
    .locals 0
    .param p0, "x0"    # Lnubia/util/NBAmbientLuxDataCollecter;
    .param p1, "x1"    # F

    .line 24
    invoke-direct {p0, p1}, Lnubia/util/NBAmbientLuxDataCollecter;->handleLightSensorEvent(F)V

    return-void
.end method

.method private handleLightSensorEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 99
    invoke-direct {p0, p1}, Lnubia/util/NBAmbientLuxDataCollecter;->setLightSensorEnabled(Z)Z

    .line 100
    return-void
.end method

.method private handleLightSensorEvent(F)V
    .locals 2
    .param p1, "ambientLux"    # F

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnubia/util/NBAmbientLuxDataCollecter;->setLightSensorEnabled(Z)Z

    .line 104
    iget-object v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mHandler:Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mHandler:Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;

    invoke-virtual {v0, v1}, Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 106
    .local v0, "message":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 108
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .line 72
    sget-boolean v0, Lnubia/util/NBAmbientLuxDataCollecter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lnubia/util/NBAmbientLuxDataCollecter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightSensorEnabled: enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mLightSensorEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mLightSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 78
    iget-boolean v1, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mLightSensorEnabled:Z

    if-nez v1, :cond_2

    .line 80
    :try_start_0
    iget-object v1, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mHandler:Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mLightSensorEnabled:Z

    .line 87
    return v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lnubia/util/NBAmbientLuxDataCollecter;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t regist listerlistener now,has exceeded the maximum"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v0

    .line 90
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    iget-boolean v1, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mLightSensorEnabled:Z

    if-eqz v1, :cond_2

    .line 91
    iput-boolean v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mLightSensorEnabled:Z

    .line 92
    iget-object v1, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 95
    :cond_2
    return v0
.end method


# virtual methods
.method public getScreenBrightnessValue()I
    .locals 3

    .line 67
    iget-object v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public trggerToUpdateAmbientLux(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lnubia/util/NBAmbientLuxDataCollecter;->mHandler:Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 61
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 62
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    return-void
.end method

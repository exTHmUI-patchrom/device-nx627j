.class Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;
.super Landroid/os/HandlerThread;
.source "MotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/MotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorCalThread"
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 329
    const-string/jumbo v0, "turnover.cal"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 2

    .line 333
    sget-object v0, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;->sInstance:Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;

    invoke-direct {v0}, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;-><init>()V

    sput-object v0, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;->sInstance:Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;

    .line 335
    sget-object v0, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;->sInstance:Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;->start()V

    .line 336
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;->sInstance:Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;

    invoke-virtual {v1}, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;->sHandler:Landroid/os/Handler;

    .line 338
    :cond_0
    return-void
.end method

.method public static get()Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;
    .locals 2

    .line 341
    const-class v0, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;

    monitor-enter v0

    .line 342
    :try_start_0
    invoke-static {}, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;->ensureThreadLocked()V

    .line 343
    sget-object v1, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;->sInstance:Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;

    monitor-exit v0

    return-object v1

    .line 344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 348
    const-class v0, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;

    monitor-enter v0

    .line 349
    :try_start_0
    invoke-static {}, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;->ensureThreadLocked()V

    .line 350
    sget-object v1, Lcn/nubia/server/screenswitch/MotionDetector$SensorCalThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 351
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

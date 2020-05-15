.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$InjectEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$BaseEventQueue;
    }
.end annotation


# static fields
.field private static final DEBUG_DYNAMIC_SENSOR:Z = true

.field private static final MAX_LISTENER_COUNT:I = 0x80

.field private static final MIN_DIRECT_CHANNEL_BUFFER_SIZE:I = 0x68

.field private static sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sNativeClassInited:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDynamicSensorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorManager$DynamicSensorCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicSensorListDirty:Z

.field private mFullDynamicSensorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandleToSensor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private final mNativeInstance:J

.field private final mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkLevel:I

.field private final mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 77
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .line 103
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    .line 104
    sget-object v1, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    sget-boolean v2, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    if-nez v2, :cond_0

    .line 106
    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 107
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 109
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 113
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "index":I
    :goto_0
    new-instance v1, Landroid/hardware/Sensor;

    invoke-direct {v1}, Landroid/hardware/Sensor;-><init>()V

    .line 119
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v2, v3, v1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    .end local v0    # "index":I
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    return-void

    .line 120
    .restart local v0    # "index":I
    .restart local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "index":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$002(Landroid/hardware/SystemSensorManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;
    .param p1, "x1"    # Z

    .line 50
    iput-boolean p1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    return p1
.end method

.method static synthetic access$100(Landroid/hardware/SystemSensorManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .line 50
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/SystemSensorManager;)J
    .locals 2
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .line 50
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .line 50
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .line 50
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/SystemSensorManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .line 50
    iget v0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return v0
.end method

.method private cleanupSensorConnection(Landroid/hardware/Sensor;)V
    .locals 7
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 340
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 343
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 344
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 347
    .local v1, "triggerListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/TriggerEventListener;Landroid/hardware/SystemSensorManager$TriggerEventQueue;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/TriggerEventListener;

    .line 349
    .local v3, "l":Landroid/hardware/TriggerEventListener;
    const-string v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed trigger listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " due to sensor disconnection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v4, 0x1

    invoke-virtual {p0, v3, p1, v4}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    .line 353
    .end local v3    # "l":Landroid/hardware/TriggerEventListener;
    goto :goto_0

    .line 354
    .end local v1    # "triggerListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/TriggerEventListener;Landroid/hardware/SystemSensorManager$TriggerEventQueue;>;"
    :cond_0
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 356
    :cond_1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 357
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 360
    .local v1, "sensorListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/SensorEventListener;Landroid/hardware/SystemSensorManager$SensorEventQueue;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEventListener;

    .line 362
    .local v3, "l":Landroid/hardware/SensorEventListener;
    const-string v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed event listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " due to sensor disconnection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0, v3, p1}, Landroid/hardware/SystemSensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 366
    .end local v3    # "l":Landroid/hardware/SensorEventListener;
    goto :goto_1

    .line 367
    .end local v1    # "sensorListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/SensorEventListener;Landroid/hardware/SystemSensorManager$SensorEventQueue;>;"
    :cond_2
    monitor-exit v0

    .line 369
    :goto_2
    return-void

    .line 367
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private static diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;)Z"
        }
    .end annotation

    .line 491
    .local p0, "oldList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p2, "updated":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p3, "added":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p4, "removed":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .line 493
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .line 495
    .local v2, "j":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 496
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 497
    :cond_0
    const/4 v0, 0x1

    .line 498
    if-eqz p4, :cond_1

    .line 499
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 502
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 503
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 504
    :cond_3
    const/4 v0, 0x1

    .line 505
    if-eqz p3, :cond_4

    .line 506
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_4
    if-eqz p2, :cond_5

    .line 509
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 513
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 514
    if-eqz p2, :cond_7

    .line 515
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 523
    :cond_8
    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeConfigDirectChannel(JIII)I
.end method

.method private static native nativeCreate(Ljava/lang/String;)J
.end method

.method private static native nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I
.end method

.method private static native nativeDestroyDirectChannel(JI)V
.end method

.method private static native nativeGetDynamicSensors(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native nativeGetSensorsEnable(IJ)[I
.end method

.method private static native nativeGetSensorsPids(J)[I
.end method

.method private static native nativeIsDataInjectionEnabled(J)Z
.end method

.method private static native nativeSetOperationParameter(JII[F[I)I
.end method

.method private static native nativeSetSensorsEnable(IIJ)Z
.end method

.method private setupDynamicSensorBroadcastReceiver()V
    .locals 3

    .line 426
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Landroid/hardware/SystemSensorManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/SystemSensorManager$2;-><init>(Landroid/hardware/SystemSensorManager;)V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 441
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "dynamic_sensor_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 445
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private teardownDynamicSensorBroadcastReceiver()V
    .locals 2

    .line 448
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 449
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 451
    return-void
.end method

.method private updateDynamicSensorList()V
    .locals 12

    .line 372
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    if-eqz v1, :cond_4

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v2, v3, v1}, Landroid/hardware/SystemSensorManager;->nativeGetDynamicSensors(JLjava/util/List;)V

    .line 377
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v2, "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v3, "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v4, "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    invoke-static {v5, v1, v2, v3, v4}, Landroid/hardware/SystemSensorManager;->diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    .line 384
    .local v5, "changed":Z
    if-eqz v5, :cond_3

    .line 386
    const-string v6, "SensorManager"

    const-string v7, "DYNS dynamic sensor list cached should be updated"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 390
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    .line 391
    .local v7, "s":Landroid/hardware/Sensor;
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getHandle()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .end local v7    # "s":Landroid/hardware/Sensor;
    goto :goto_0

    .line 394
    :cond_0
    new-instance v6, Landroid/os/Handler;

    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 397
    .local v6, "mainHandler":Landroid/os/Handler;
    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 398
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 400
    .local v9, "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1

    move-object v10, v6

    goto :goto_2

    :cond_1
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Handler;

    .line 402
    .local v10, "handler":Landroid/os/Handler;
    :goto_2
    new-instance v11, Landroid/hardware/SystemSensorManager$1;

    invoke-direct {v11, p0, v3, v9, v4}, Landroid/hardware/SystemSensorManager$1;-><init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    .end local v9    # "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    .end local v10    # "handler":Landroid/os/Handler;
    goto :goto_1

    .line 415
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Sensor;

    .line 416
    .local v8, "s":Landroid/hardware/Sensor;
    invoke-direct {p0, v8}, Landroid/hardware/SystemSensorManager;->cleanupSensorConnection(Landroid/hardware/Sensor;)V

    .line 417
    .end local v8    # "s":Landroid/hardware/Sensor;
    goto :goto_3

    .line 420
    .end local v6    # "mainHandler":Landroid/os/Handler;
    :cond_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 422
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v2    # "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3    # "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v5    # "changed":Z
    :cond_4
    monitor-exit v0

    .line 423
    return-void

    .line 422
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    .line 256
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 257
    return v0

    .line 259
    :cond_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 261
    .local v2, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v2, :cond_3

    .line 263
    if-nez p2, :cond_1

    .line 264
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 266
    .end local v0    # "result":Z
    :cond_1
    invoke-virtual {v2, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v0

    .line 268
    .restart local v0    # "result":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z

    move-result v3

    if-nez v3, :cond_2

    .line 269
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 272
    :cond_2
    monitor-exit v1

    return v0

    .line 274
    .end local v0    # "result":Z
    :cond_3
    monitor-exit v1

    return v0

    .line 275
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .locals 4
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "rate"    # I

    .line 529
    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 533
    if-ltz p3, :cond_6

    const/4 v0, 0x3

    if-gt p3, v0, :cond_6

    .line 538
    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "when sensor is null, rate can only be DIRECT_RATE_STOP"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 546
    .local v0, "sensorHandle":I
    :goto_1
    iget-wide v1, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 547
    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    move-result v3

    .line 546
    invoke-static {v1, v2, v3, v0, p3}, Landroid/hardware/SystemSensorManager;->nativeConfigDirectChannel(JIII)I

    move-result v1

    .line 549
    .local v1, "ret":I
    const/4 v2, 0x0

    if-nez p3, :cond_4

    .line 550
    if-nez v1, :cond_3

    const/4 v2, 0x1

    nop

    :cond_3
    return v2

    .line 552
    :cond_4
    if-lez v1, :cond_5

    move v2, v1

    nop

    :cond_5
    return v2

    .line 535
    .end local v0    # "sensorHandle":I
    .end local v1    # "ret":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rate parameter invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .locals 16
    .param p1, "memoryFile"    # Landroid/os/MemoryFile;
    .param p2, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;

    move-object/from16 v7, p0

    .line 562
    const/16 v0, 0x68

    if-eqz p1, :cond_2

    .line 565
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .local v13, "fd":I
    nop

    .line 567
    nop

    .line 570
    invoke-virtual/range {p1 .. p1}, Landroid/os/MemoryFile;->length()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/os/MemoryFile;->length()I

    move-result v0

    int-to-long v0, v0

    .line 577
    .local v0, "size":J
    iget-wide v8, v7, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-wide v10, v0

    invoke-static/range {v8 .. v14}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I

    move-result v2

    .line 579
    .local v2, "id":I
    if-lez v2, :cond_0

    .line 583
    const/4 v3, 0x1

    .line 584
    .end local v13    # "fd":I
    .local v3, "type":I
    nop

    .line 610
    .end local v0    # "size":J
    .end local v2    # "id":I
    .local v3, "id":I
    .local v4, "type":I
    .local v5, "size":J
    :goto_0
    move-wide v5, v0

    move v4, v3

    move v3, v2

    goto :goto_1

    .line 580
    .end local v3    # "id":I
    .end local v4    # "type":I
    .end local v5    # "size":J
    .restart local v0    # "size":J
    .restart local v2    # "id":I
    .restart local v13    # "fd":I
    :cond_0
    new-instance v3, Ljava/io/UncheckedIOException;

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create MemoryFile direct channel failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 571
    .end local v0    # "size":J
    .end local v2    # "id":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size of MemoryFile has to be greater than 104"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    .end local v13    # "fd":I
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MemoryFile object is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz p2, :cond_8

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_7

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    if-lt v1, v0, :cond_5

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    int-to-long v0, v0

    .line 601
    .local v0, "size":J
    iget-wide v8, v7, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    const/4 v12, 0x2

    const/4 v13, -0x1

    move-wide v10, v0

    move-object/from16 v14, p2

    invoke-static/range {v8 .. v14}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I

    move-result v2

    .line 604
    .restart local v2    # "id":I
    if-lez v2, :cond_3

    .line 608
    const/4 v3, 0x2

    .line 608
    .local v3, "type":I
    goto :goto_0

    .line 610
    .end local v0    # "size":J
    .end local v2    # "id":I
    .local v3, "id":I
    .restart local v4    # "type":I
    .restart local v5    # "size":J
    :goto_1
    nop

    .line 612
    new-instance v0, Landroid/hardware/SensorDirectChannel;

    move-object v1, v0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorDirectChannel;-><init>(Landroid/hardware/SensorManager;IIJ)V

    return-object v0

    .line 605
    .end local v3    # "id":I
    .end local v4    # "type":I
    .end local v5    # "size":J
    .restart local v0    # "size":J
    .restart local v2    # "id":I
    :cond_3
    new-instance v3, Ljava/io/UncheckedIOException;

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create HardwareBuffer direct channel failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 597
    .end local v0    # "size":J
    .end local v2    # "id":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HardwareBuffer must set usage flag USAGE_SENSOR_DIRECT_DATA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width if HaradwareBuffer must be greater than 104"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height of HardwareBuffer must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Format of HardwareBuffer must be BLOB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "shared memory object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .locals 3
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;

    .line 617
    if-eqz p1, :cond_0

    .line 618
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/hardware/SystemSensorManager;->nativeDestroyDirectChannel(JI)V

    .line 620
    :cond_0
    return-void
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 279
    if-eqz p1, :cond_2

    .line 281
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 282
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 283
    .local v1, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 284
    monitor-exit v0

    return v2

    .line 286
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    monitor-exit v0

    return v2

    .line 288
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 279
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getFullDynamicSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 138
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    .line 139
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    return-object v0
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSensorsAllPids()[I
    .locals 2

    .line 991
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager;->nativeGetSensorsPids(J)[I

    move-result-object v0

    return-object v0
.end method

.method public getSensorsEnable(I)[I
    .locals 2
    .param p1, "pid"    # I

    .line 981
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {p1, v0, v1}, Landroid/hardware/SystemSensorManager;->nativeGetSensorsEnable(IJ)[I

    move-result-object v0

    return-object v0
.end method

.method protected initDataInjectionImpl(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .line 292
    sget-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 294
    :try_start_0
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v2, v3}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    move-result v2

    .line 296
    .local v2, "isDataInjectionModeEnabled":Z
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 297
    const-string v1, "SensorManager"

    const-string v4, "Data Injection mode not enabled"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    monitor-exit v0

    return v3

    .line 301
    :cond_0
    sget-object v4, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 303
    :try_start_1
    new-instance v4, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    iget-object v6, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 304
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, p0, v6}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    sput-object v4, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    goto :goto_0

    .line 305
    :catch_0
    move-exception v4

    .line 306
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot create InjectEventQueue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    sget-object v4, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    monitor-exit v0

    return v1

    .line 318
    .end local v2    # "isDataInjectionModeEnabled":Z
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 312
    :cond_3
    sget-object v2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz v2, :cond_4

    .line 313
    sget-object v2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 314
    const/4 v2, 0x0

    sput-object v2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 316
    :cond_4
    monitor-exit v0

    return v1

    .line 318
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .locals 9
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 323
    sget-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    sget-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 325
    const-string v1, "SensorManager"

    const-string v3, "Data injection mode not activated before calling injectSensorData"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    monitor-exit v0

    return v2

    .line 328
    :cond_0
    sget-object v3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorData(I[FIJ)I

    move-result v1

    .line 331
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 332
    sget-object v3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v3}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 333
    const/4 v3, 0x0

    sput-object v3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 335
    :cond_1
    if-nez v1, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    monitor-exit v0

    return v2

    .line 336
    .end local v1    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 457
    const-string v0, "SensorManager"

    const-string v1, "DYNS Register dynamic sensor callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    if-eqz p1, :cond_1

    .line 463
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    return-void

    .line 468
    :cond_0
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 469
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    return-void

    .line 461
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxBatchReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I

    .line 146
    const/16 v0, 0x17d

    invoke-static {v0, p2, p3}, Landroid/util/SeempLog;->record_sensor_rate(ILandroid/hardware/Sensor;I)I

    .line 147
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 152
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 153
    const-string v1, "SensorManager"

    const-string v2, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return v0

    .line 156
    :cond_1
    if-ltz p5, :cond_8

    if-gez p3, :cond_2

    goto :goto_2

    .line 160
    :cond_2
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_7

    .line 170
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 172
    .local v2, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v2, :cond_6

    .line 173
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 175
    .local v3, "looper":Landroid/os/Looper;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 177
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "fullClassName":Ljava/lang/String;
    :goto_1
    new-instance v5, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    invoke-direct {v5, p1, v3, p0, v4}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    move-object v2, v5

    .line 179
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v5

    if-nez v5, :cond_5

    .line 180
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 181
    monitor-exit v1

    return v0

    .line 183
    :cond_5
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 186
    .end local v3    # "looper":Landroid/os/Looper;
    .end local v4    # "fullClassName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 188
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 161
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "register failed, the sensor listeners size has exceeded the maximum limit 128"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_8
    :goto_2
    const-string v1, "SensorManager"

    const-string/jumbo v2, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v0

    .line 148
    :cond_9
    :goto_3
    const-string v1, "SensorManager"

    const-string/jumbo v2, "sensor or listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v0
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 220
    if-eqz p2, :cond_6

    .line 222
    if-eqz p1, :cond_5

    .line 224
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 226
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_4

    .line 232
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 234
    .local v1, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v1, :cond_3

    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "fullClassName":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v4, p1, v5, p0, v3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    move-object v1, v4

    .line 240
    invoke-virtual {v1, p2, v2, v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 241
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 242
    monitor-exit v0

    return v2

    .line 244
    :cond_2
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 247
    .end local v3    # "fullClassName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, p2, v2, v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 249
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 227
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "request failed, the trigger listeners size has exceeded the maximum limit 128"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .locals 7
    .param p1, "parameter"    # Landroid/hardware/SensorAdditionalInfo;

    .line 970
    const/4 v0, -0x1

    .line 971
    .local v0, "handle":I
    iget-object v1, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 972
    :cond_0
    iget-wide v1, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    iget v4, p1, Landroid/hardware/SensorAdditionalInfo;->type:I

    iget-object v5, p1, Landroid/hardware/SensorAdditionalInfo;->floatValues:[F

    iget-object v6, p1, Landroid/hardware/SensorAdditionalInfo;->intValues:[I

    move v3, v0

    invoke-static/range {v1 .. v6}, Landroid/hardware/SystemSensorManager;->nativeSetOperationParameter(JII[F[I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setSensorEnable(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "frozen"    # I

    .line 986
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {p1, p2, v0, v1}, Landroid/hardware/SystemSensorManager;->nativeSetSensorsEnable(IIJ)Z

    .line 987
    return-void
.end method

.method protected unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 476
    const-string v0, "SensorManager"

    const-string v1, "Removing dynamic sensor listerner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    return-void
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 194
    const/16 v0, 0x17e

    invoke-static {v0, p2}, Landroid/util/SeempLog;->record_sensor(ILandroid/hardware/Sensor;)I

    .line 196
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 197
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 202
    .local v1, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v1, :cond_2

    .line 204
    if-nez p2, :cond_1

    .line 205
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 207
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v2

    .line 209
    .restart local v2    # "result":Z
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z

    move-result v3

    if-nez v3, :cond_2

    .line 210
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 214
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    .end local v2    # "result":Z
    :cond_2
    monitor-exit v0

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

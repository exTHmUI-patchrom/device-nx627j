.class final Landroid/hardware/LegacySensorManager;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/LegacySensorManager$LmsFilter;,
        Landroid/hardware/LegacySensorManager$LegacyListener;
    }
.end annotation


# static fields
.field private static sInitialized:Z

.field private static sRotation:I

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private final mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/LegacySensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput v0, Landroid/hardware/LegacySensorManager;->sRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 4
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 47
    iput-object p1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 49
    const-class v0, Landroid/hardware/SensorManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-boolean v1, Landroid/hardware/LegacySensorManager;->sInitialized:Z

    if-nez v1, :cond_0

    .line 51
    const-string/jumbo v1, "window"

    .line 52
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;

    .line 53
    sget-object v1, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 57
    :try_start_1
    sget-object v1, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v2, Landroid/hardware/LegacySensorManager$1;

    invoke-direct {v2, p0}, Landroid/hardware/LegacySensorManager$1;-><init>(Landroid/hardware/LegacySensorManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v1

    sput v1, Landroid/hardware/LegacySensorManager;->sRotation:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 67
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static getRotation()I
    .locals 2

    .line 201
    const-class v0, Landroid/hardware/SensorManager;

    monitor-enter v0

    .line 202
    :try_start_0
    sget v1, Landroid/hardware/LegacySensorManager;->sRotation:I

    monitor-exit v0

    return v1

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static onRotationChanged(I)V
    .locals 2
    .param p0, "rotation"    # I

    .line 195
    const-class v0, Landroid/hardware/SensorManager;

    monitor-enter v0

    .line 196
    :try_start_0
    sput p0, Landroid/hardware/LegacySensorManager;->sRotation:I

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .locals 5
    .param p1, "legacyType"    # I
    .param p2, "type"    # I
    .param p3, "listener"    # Landroid/hardware/SensorListener;
    .param p4, "sensors"    # I
    .param p5, "rate"    # I

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "result":Z
    and-int v1, p4, p1

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 115
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_2

    .line 120
    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 124
    :try_start_0
    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/LegacySensorManager$LegacyListener;

    .line 125
    .local v3, "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    if-nez v3, :cond_0

    .line 128
    new-instance v4, Landroid/hardware/LegacySensorManager$LegacyListener;

    invoke-direct {v4, p3}, Landroid/hardware/LegacySensorManager$LegacyListener;-><init>(Landroid/hardware/SensorListener;)V

    move-object v3, v4

    .line 129
    iget-object v4, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v4, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    invoke-virtual {v3, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->registerSensor(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    iget-object v4, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3, v1, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x1

    .line 139
    .end local v3    # "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 142
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_2
    :goto_1
    return v0
.end method

.method private unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .locals 4
    .param p1, "legacyType"    # I
    .param p2, "type"    # I
    .param p3, "listener"    # Landroid/hardware/SensorListener;
    .param p4, "sensors"    # I

    .line 164
    and-int v0, p4, p1

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 167
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_1

    .line 172
    iget-object v1, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v2, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/LegacySensorManager$LegacyListener;

    .line 175
    .local v2, "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {v2, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->unregisterSensor(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 184
    invoke-virtual {v2}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasSensors()Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    iget-object v3, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v2    # "legacyListener":Landroid/hardware/LegacySensorManager$LegacyListener;
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 192
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getSensors()I
    .locals 5

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "result":I
    iget-object v1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 74
    .local v3, "i":Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .end local v3    # "i":Landroid/hardware/Sensor;
    goto :goto_1

    .line 82
    .restart local v3    # "i":Landroid/hardware/Sensor;
    :pswitch_0
    or-int/lit16 v0, v0, 0x81

    .end local v3    # "i":Landroid/hardware/Sensor;
    goto :goto_1

    .line 79
    .restart local v3    # "i":Landroid/hardware/Sensor;
    :pswitch_1
    or-int/lit8 v0, v0, 0x8

    .line 80
    goto :goto_1

    .line 76
    :pswitch_2
    or-int/lit8 v0, v0, 0x2

    .line 77
    nop

    .line 86
    .end local v3    # "i":Landroid/hardware/Sensor;
    :goto_1
    goto :goto_0

    .line 87
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 10
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .param p3, "rate"    # I

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 92
    return v0

    .line 94
    :cond_0
    const/4 v1, 0x0

    .line 95
    .local v1, "result":Z
    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    move v1, v2

    .line 97
    const/16 v5, 0x8

    const/4 v6, 0x2

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    move v1, v2

    .line 99
    const/16 v5, 0x80

    const/4 v6, 0x3

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v0

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v3

    :goto_5
    move v1, v2

    .line 101
    const/4 v5, 0x1

    const/4 v6, 0x3

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move v2, v0

    goto :goto_7

    :cond_8
    :goto_6
    move v2, v3

    :goto_7
    move v1, v2

    .line 103
    const/4 v5, 0x4

    const/4 v6, 0x7

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    goto :goto_9

    :cond_a
    :goto_8
    move v0, v3

    .line 105
    .end local v1    # "result":Z
    .local v0, "result":Z
    :goto_9
    return v0
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I

    .line 146
    if-nez p1, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 151
    const/16 v2, 0x8

    invoke-direct {p0, v2, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 153
    const/16 v1, 0x80

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 155
    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 157
    const/4 v0, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 159
    return-void
.end method

.class Lcom/android/server/wifi/SarManager$SarSensorEventListener;
.super Ljava/lang/Object;
.source "SarManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SarSensorEventListener"
.end annotation


# instance fields
.field private mSensor:Landroid/hardware/Sensor;

.field final synthetic this$0:Lcom/android/server/wifi/SarManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SarManager;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/android/server/wifi/SarManager$SarSensorEventListener;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SarManager;Lcom/android/server/wifi/SarManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/SarManager;
    .param p2, "x1"    # Lcom/android/server/wifi/SarManager$1;

    .line 507
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SarManager$SarSensorEventListener;-><init>(Lcom/android/server/wifi/SarManager;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/SarManager$SarSensorEventListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SarManager$SarSensorEventListener;

    .line 507
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager$SarSensorEventListener;->register()Z

    move-result v0

    return v0
.end method

.method private register()Z
    .locals 7

    .line 516
    iget-object v0, p0, Lcom/android/server/wifi/SarManager$SarSensorEventListener;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-static {v0}, Lcom/android/server/wifi/SarManager;->access$900(Lcom/android/server/wifi/SarManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "sensorType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 519
    const-string v1, "WifiSarManager"

    const-string v3, "Empty SAR sensor type"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return v2

    .line 524
    :cond_0
    const/4 v1, 0x0

    .line 525
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/android/server/wifi/SarManager$SarSensorEventListener;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-static {v3}, Lcom/android/server/wifi/SarManager;->access$1000(Lcom/android/server/wifi/SarManager;)Landroid/hardware/SensorManager;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 526
    .local v3, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 527
    .local v5, "s":Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 528
    move-object v1, v5

    .line 529
    goto :goto_1

    .line 531
    .end local v5    # "s":Landroid/hardware/Sensor;
    :cond_1
    goto :goto_0

    .line 532
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 533
    const-string v4, "WifiSarManager"

    const-string v5, "Failed to Find the SAR Sensor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return v2

    .line 538
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/SarManager$SarSensorEventListener;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-static {v4}, Lcom/android/server/wifi/SarManager;->access$1000(Lcom/android/server/wifi/SarManager;)Landroid/hardware/SensorManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, p0, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 540
    const-string v4, "WifiSarManager"

    const-string v5, "Failed to register SAR Sensor Listener"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return v2

    .line 544
    :cond_4
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 560
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 555
    iget-object v0, p0, Lcom/android/server/wifi/SarManager$SarSensorEventListener;->this$0:Lcom/android/server/wifi/SarManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SarManager;->access$1100(Lcom/android/server/wifi/SarManager;I)V

    .line 556
    return-void
.end method

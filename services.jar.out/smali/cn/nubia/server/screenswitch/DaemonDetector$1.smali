.class Lcn/nubia/server/screenswitch/DaemonDetector$1;
.super Ljava/lang/Object;
.source "DaemonDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/DaemonDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/DaemonDetector;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/DaemonDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/DaemonDetector;

    .line 29
    iput-object p1, p0, Lcn/nubia/server/screenswitch/DaemonDetector$1;->this$0:Lcn/nubia/server/screenswitch/DaemonDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAbsoluteValue(F)F
    .locals 2
    .param p1, "value"    # F

    .line 42
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x7

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 43
    .local v0, "isMainScreen":Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    neg-float v1, p1

    :goto_1
    return v1
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 48
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 32
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v1, v0, :cond_0

    sget-boolean v0, Lcn/nubia/server/screenswitch/DaemonDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 34
    .local v0, "currentTime":J
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-double v2, v2

    .line 35
    .local v2, "delay":D
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-direct {p0, v4}, Lcn/nubia/server/screenswitch/DaemonDetector$1;->getAbsoluteValue(F)F

    move-result v4

    .line 36
    .local v4, "mCurrentZValue":F
    const-string v6, "DaemonDetector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSensorChanged z="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v8, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", ZTrueValue="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", timestamp ="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", delay="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v0    # "currentTime":J
    .end local v2    # "delay":D
    .end local v4    # "mCurrentZValue":F
    :cond_0
    return-void
.end method

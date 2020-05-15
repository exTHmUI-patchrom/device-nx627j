.class Lcom/android/server/policy/DoubleClickScreenOnCtrl$3;
.super Ljava/lang/Object;
.source "DoubleClickScreenOnCtrl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DoubleClickScreenOnCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    .line 172
    iput-object p1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 175
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 179
    const/high16 v0, 0x40a00000    # 5.0f

    .line 180
    .local v0, "TYPICAL_PROXIMITY_THRESHOLD":F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 182
    .local v1, "proximityThreshold":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    move v2, v3

    .line 184
    .local v2, "near":Z
    if-nez v2, :cond_1

    .line 185
    iget-object v3, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    invoke-static {v3}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->access$000(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)V

    .line 187
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    iget-object v3, v3, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mWaitTimeouthandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    iget-object v4, v4, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    iget-object v3, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    iget-object v4, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    iget-object v4, v4, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    invoke-static {v5}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->access$100(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)Landroid/hardware/SensorEventListener;

    move-result-object v5

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->access$200(Lcom/android/server/policy/DoubleClickScreenOnCtrl;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V

    .line 189
    return-void
.end method

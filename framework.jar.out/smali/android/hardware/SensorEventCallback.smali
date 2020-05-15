.class public abstract Landroid/hardware/SensorEventCallback;
.super Ljava/lang/Object;
.source "SensorEventCallback.java"

# interfaces
.implements Landroid/hardware/SensorEventListener2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 38
    return-void
.end method

.method public onFlushCompleted(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 46
    return-void
.end method

.method public onSensorAdditionalInfo(Landroid/hardware/SensorAdditionalInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/SensorAdditionalInfo;

    .line 54
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 30
    return-void
.end method

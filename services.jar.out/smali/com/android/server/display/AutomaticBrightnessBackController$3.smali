.class Lcom/android/server/display/AutomaticBrightnessBackController$3;
.super Ljava/lang/Object;
.source "AutomaticBrightnessBackController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessBackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessBackController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessBackController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 1245
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1258
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1248
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$1300(Lcom/android/server/display/AutomaticBrightnessBackController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1250
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 1251
    .local v2, "lux":F
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-static {v3, v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$1400(Lcom/android/server/display/AutomaticBrightnessBackController;JF)V

    .line 1253
    .end local v0    # "time":J
    .end local v2    # "lux":F
    :cond_0
    return-void
.end method

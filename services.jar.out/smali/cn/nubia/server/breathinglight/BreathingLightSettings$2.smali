.class Lcn/nubia/server/breathinglight/BreathingLightSettings$2;
.super Ljava/lang/Object;
.source "BreathingLightSettings.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 347
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 365
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 351
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 353
    .local v2, "lux":F
    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-static {v3}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$700(Lcn/nubia/server/breathinglight/BreathingLightSettings;)J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 354
    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-static {v3}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$800(Lcn/nubia/server/breathinglight/BreathingLightSettings;)I

    move-result v3

    .line 355
    .local v3, "current":I
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-static {v4, v2}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$900(Lcn/nubia/server/breathinglight/BreathingLightSettings;F)I

    move-result v4

    .line 356
    .local v4, "target":I
    if-eq v3, v4, :cond_0

    .line 357
    iget-object v5, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-static {v5, v4}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$1000(Lcn/nubia/server/breathinglight/BreathingLightSettings;I)V

    .line 359
    :cond_0
    iget-object v5, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-static {v5, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$702(Lcn/nubia/server/breathinglight/BreathingLightSettings;J)J

    .line 361
    .end local v3    # "current":I
    .end local v4    # "target":I
    :cond_1
    return-void
.end method

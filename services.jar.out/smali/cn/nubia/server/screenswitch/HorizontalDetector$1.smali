.class Lcn/nubia/server/screenswitch/HorizontalDetector$1;
.super Ljava/lang/Object;
.source "HorizontalDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/HorizontalDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/HorizontalDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/HorizontalDetector;

    .line 34
    iput-object p1, p0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAbsoluteValue(F)F
    .locals 2
    .param p1, "value"    # F

    .line 57
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x7

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
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

    .line 64
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 37
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v1, v0, :cond_4

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 39
    .local v0, "currentTime":J
    iget-object v2, p0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    long-to-double v3, v3

    invoke-static {v2, v3, v4}, Lcn/nubia/server/screenswitch/HorizontalDetector;->access$002(Lcn/nubia/server/screenswitch/HorizontalDetector;D)D

    .line 40
    iget-object v2, p0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->getAbsoluteValue(F)F

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/server/screenswitch/HorizontalDetector;->access$102(Lcn/nubia/server/screenswitch/HorizontalDetector;F)F

    .line 41
    iget-object v2, p0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/HorizontalDetector;->access$000(Lcn/nubia/server/screenswitch/HorizontalDetector;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    sget-boolean v2, Lcn/nubia/server/screenswitch/HorizontalDetector;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 42
    :cond_0
    const-string v2, "HorizontalDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSensorChanged values="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ZTrueValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/HorizontalDetector;->access$100(Lcn/nubia/server/screenswitch/HorizontalDetector;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", timestamp ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;

    .line 43
    invoke-static {v4}, Lcn/nubia/server/screenswitch/HorizontalDetector;->access$000(Lcn/nubia/server/screenswitch/HorizontalDetector;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/HorizontalDetector;->access$100(Lcn/nubia/server/screenswitch/HorizontalDetector;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    if-lez v2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/HorizontalDetector;->access$100(Lcn/nubia/server/screenswitch/HorizontalDetector;)F

    move-result v2

    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 47
    iget-object v2, p0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;

    invoke-static {v2, v3, v3}, Lcn/nubia/server/screenswitch/HorizontalDetector;->access$200(Lcn/nubia/server/screenswitch/HorizontalDetector;ZZ)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/HorizontalDetector;->access$100(Lcn/nubia/server/screenswitch/HorizontalDetector;)F

    move-result v2

    const/high16 v4, -0x80000000

    cmpg-float v2, v2, v4

    const/4 v4, 0x0

    if-gez v2, :cond_3

    iget-object v2, p0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/HorizontalDetector;->access$100(Lcn/nubia/server/screenswitch/HorizontalDetector;)F

    move-result v2

    const/high16 v5, -0x3ee00000    # -10.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 49
    iget-object v2, p0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;

    invoke-static {v2, v3, v4}, Lcn/nubia/server/screenswitch/HorizontalDetector;->access$200(Lcn/nubia/server/screenswitch/HorizontalDetector;ZZ)V

    goto :goto_0

    .line 51
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/screenswitch/HorizontalDetector$1;->this$0:Lcn/nubia/server/screenswitch/HorizontalDetector;

    invoke-static {v2, v4, v4}, Lcn/nubia/server/screenswitch/HorizontalDetector;->access$200(Lcn/nubia/server/screenswitch/HorizontalDetector;ZZ)V

    .line 54
    .end local v0    # "currentTime":J
    :cond_4
    :goto_0
    return-void
.end method

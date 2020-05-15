.class Lnubia/util/NBAmbientLuxDataCollecter$1;
.super Ljava/lang/Object;
.source "NBAmbientLuxDataCollecter.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/util/NBAmbientLuxDataCollecter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/util/NBAmbientLuxDataCollecter;


# direct methods
.method constructor <init>(Lnubia/util/NBAmbientLuxDataCollecter;)V
    .locals 0
    .param p1, "this$0"    # Lnubia/util/NBAmbientLuxDataCollecter;

    .line 134
    iput-object p1, p0, Lnubia/util/NBAmbientLuxDataCollecter$1;->this$0:Lnubia/util/NBAmbientLuxDataCollecter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 150
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 137
    invoke-static {}, Lnubia/util/NBAmbientLuxDataCollecter;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lnubia/util/NBAmbientLuxDataCollecter;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged: mLightSensorEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnubia/util/NBAmbientLuxDataCollecter$1;->this$0:Lnubia/util/NBAmbientLuxDataCollecter;

    invoke-static {v2}, Lnubia/util/NBAmbientLuxDataCollecter;->access$500(Lnubia/util/NBAmbientLuxDataCollecter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object v0, p0, Lnubia/util/NBAmbientLuxDataCollecter$1;->this$0:Lnubia/util/NBAmbientLuxDataCollecter;

    invoke-static {v0}, Lnubia/util/NBAmbientLuxDataCollecter;->access$500(Lnubia/util/NBAmbientLuxDataCollecter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 143
    .local v0, "lux":F
    iget-object v1, p0, Lnubia/util/NBAmbientLuxDataCollecter$1;->this$0:Lnubia/util/NBAmbientLuxDataCollecter;

    invoke-static {v1, v0}, Lnubia/util/NBAmbientLuxDataCollecter;->access$600(Lnubia/util/NBAmbientLuxDataCollecter;F)V

    .line 145
    .end local v0    # "lux":F
    :cond_1
    return-void
.end method

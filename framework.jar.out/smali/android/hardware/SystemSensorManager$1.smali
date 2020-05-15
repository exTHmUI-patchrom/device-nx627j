.class Landroid/hardware/SystemSensorManager$1;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;

.field final synthetic val$addedList:Ljava/util/List;

.field final synthetic val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

.field final synthetic val$removedList:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/SystemSensorManager;

    .line 402
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$1;->this$0:Landroid/hardware/SystemSensorManager;

    iput-object p2, p0, Landroid/hardware/SystemSensorManager$1;->val$addedList:Ljava/util/List;

    iput-object p3, p0, Landroid/hardware/SystemSensorManager$1;->val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

    iput-object p4, p0, Landroid/hardware/SystemSensorManager$1;->val$removedList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 405
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$1;->val$addedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 406
    .local v1, "s":Landroid/hardware/Sensor;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$1;->val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager$DynamicSensorCallback;->onDynamicSensorConnected(Landroid/hardware/Sensor;)V

    .line 407
    .end local v1    # "s":Landroid/hardware/Sensor;
    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$1;->val$removedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 409
    .restart local v1    # "s":Landroid/hardware/Sensor;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$1;->val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager$DynamicSensorCallback;->onDynamicSensorDisconnected(Landroid/hardware/Sensor;)V

    .line 410
    .end local v1    # "s":Landroid/hardware/Sensor;
    goto :goto_1

    .line 411
    :cond_1
    return-void
.end method

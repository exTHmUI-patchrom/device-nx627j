.class Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;
.super Ljava/lang/Object;
.source "DoubleClickScreenOnCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 56
    iput-object p1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 58
    const-string v0, "GesturePolicy"

    const-string v1, "[DoubleClickScreenOnCtrl] Ttime out due to proximity sensor data."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    invoke-static {v0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->access$000(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)V

    .line 60
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    iget-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    iget-object v1, v1, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    invoke-static {v2}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->access$100(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->access$200(Lcom/android/server/policy/DoubleClickScreenOnCtrl;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V

    .line 61
    return-void
.end method

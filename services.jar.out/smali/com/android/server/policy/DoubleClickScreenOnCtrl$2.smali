.class Lcom/android/server/policy/DoubleClickScreenOnCtrl$2;
.super Landroid/os/Handler;
.source "DoubleClickScreenOnCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/DoubleClickScreenOnCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DoubleClickScreenOnCtrl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/DoubleClickScreenOnCtrl;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 76
    iput-object p1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$2;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$2;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    invoke-static {v0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->access$000(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)V

    .line 80
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$2;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    iget-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$2;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    iget-object v1, v1, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$2;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    invoke-static {v2}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->access$100(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->access$200(Lcom/android/server/policy/DoubleClickScreenOnCtrl;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V

    .line 81
    return-void
.end method

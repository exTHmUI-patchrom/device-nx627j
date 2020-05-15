.class final Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenOnDumpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2430
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 2431
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2432
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2436
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2438
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1700(Lcom/android/server/display/DisplayPowerController;)V

    .line 2439
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2440
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2441
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$1802(Lcom/android/server/display/DisplayPowerController;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 2442
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$1902(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;)Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;

    .line 2446
    :cond_1
    :goto_0
    return-void
.end method

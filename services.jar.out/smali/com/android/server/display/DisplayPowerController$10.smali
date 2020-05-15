.class Lcom/android/server/display/DisplayPowerController$10;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController;->systemBooted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    .line 2610
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataInvalid()V
    .locals 3

    .line 2625
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2500(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2626
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController;->access$2602(Lcom/android/server/display/DisplayPowerController;Z)Z

    .line 2627
    monitor-exit v0

    .line 2628
    return-void

    .line 2627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScreenFaceUp(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 2613
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2500(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2614
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$2600(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2615
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenFaceUpListener onScreenFaceUp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController;->access$2602(Lcom/android/server/display/DisplayPowerController;Z)Z

    .line 2618
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1, p1}, Lcom/android/server/display/DisplayPowerController;->access$2702(Lcom/android/server/display/DisplayPowerController;I)I

    .line 2619
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/display/DisplayPowerController;->access$2802(Lcom/android/server/display/DisplayPowerController;J)J

    .line 2620
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$2500(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2621
    monitor-exit v0

    .line 2622
    return-void

    .line 2621
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

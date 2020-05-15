.class final Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeShiftPositionTrackingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService$Session;)V
    .locals 0

    .line 1467
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvInputService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/tv/TvInputService$Session;
    .param p2, "x1"    # Landroid/media/tv/TvInputService$1;

    .line 1467
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;-><init>(Landroid/media/tv/TvInputService$Session;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1470
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftGetStartPosition()J

    move-result-wide v0

    .line 1471
    .local v0, "startPositionMs":J
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 1472
    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 1473
    :cond_0
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2, v0, v1}, Landroid/media/tv/TvInputService$Session;->access$902(Landroid/media/tv/TvInputService$Session;J)J

    .line 1474
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2, v0, v1}, Landroid/media/tv/TvInputService$Session;->access$1000(Landroid/media/tv/TvInputService$Session;J)V

    .line 1476
    :cond_1
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v2}, Landroid/media/tv/TvInputService$Session;->onTimeShiftGetCurrentPosition()J

    move-result-wide v2

    .line 1477
    .local v2, "currentPositionMs":J
    iget-object v6, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v6}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 1478
    const-string v6, "TvInputService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current position ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ") cannot be earlier than start position ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 1479
    invoke-static {v8}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "). Reset to the start position."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1478
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    iget-object v6, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v6}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v2

    .line 1483
    :cond_2
    iget-object v6, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v6}, Landroid/media/tv/TvInputService$Session;->access$1100(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    .line 1484
    invoke-static {v4}, Landroid/media/tv/TvInputService$Session;->access$1100(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_4

    .line 1485
    :cond_3
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v4, v2, v3}, Landroid/media/tv/TvInputService$Session;->access$1102(Landroid/media/tv/TvInputService$Session;J)J

    .line 1486
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v4, v2, v3}, Landroid/media/tv/TvInputService$Session;->access$1200(Landroid/media/tv/TvInputService$Session;J)V

    .line 1488
    :cond_4
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    iget-object v4, v4, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v5}, Landroid/media/tv/TvInputService$Session;->access$1300(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1489
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    iget-object v4, v4, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v5}, Landroid/media/tv/TvInputService$Session;->access$1300(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1491
    return-void
.end method

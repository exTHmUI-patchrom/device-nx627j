.class Landroid/media/audiofx/Visualizer$NativeEventHandler;
.super Landroid/os/Handler;
.source "Visualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Visualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mVisualizer:Landroid/media/audiofx/Visualizer;

.field final synthetic this$0:Landroid/media/audiofx/Visualizer;


# direct methods
.method public constructor <init>(Landroid/media/audiofx/Visualizer;Landroid/media/audiofx/Visualizer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "v"    # Landroid/media/audiofx/Visualizer;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 670
    iput-object p1, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->this$0:Landroid/media/audiofx/Visualizer;

    .line 671
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 672
    iput-object p2, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 673
    return-void
.end method

.method private handleCaptureMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, "l":Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    iget-object v1, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->this$0:Landroid/media/audiofx/Visualizer;

    invoke-static {v1}, Landroid/media/audiofx/Visualizer;->access$000(Landroid/media/audiofx/Visualizer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 678
    :try_start_0
    iget-object v2, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {v2}, Landroid/media/audiofx/Visualizer;->access$100(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    move-result-object v2

    move-object v0, v2

    .line 679
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    if-eqz v0, :cond_0

    .line 682
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    .line 683
    .local v1, "data":[B
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 685
    .local v2, "samplingRate":I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 693
    const-string v3, "Visualizer-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown native event in handleCaptureMessge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "data":[B
    .end local v2    # "samplingRate":I
    goto :goto_0

    .line 690
    .restart local v1    # "data":[B
    .restart local v2    # "samplingRate":I
    :pswitch_0
    iget-object v3, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-interface {v0, v3, v1, v2}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    .line 691
    goto :goto_0

    .line 687
    :pswitch_1
    iget-object v3, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-interface {v0, v3, v1, v2}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    .line 688
    nop

    .line 697
    .end local v1    # "data":[B
    .end local v2    # "samplingRate":I
    :cond_0
    :goto_0
    return-void

    .line 679
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleServerDiedMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "l":Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    iget-object v1, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->this$0:Landroid/media/audiofx/Visualizer;

    invoke-static {v1}, Landroid/media/audiofx/Visualizer;->access$000(Landroid/media/audiofx/Visualizer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 702
    :try_start_0
    iget-object v2, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {v2}, Landroid/media/audiofx/Visualizer;->access$200(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    move-result-object v2

    move-object v0, v2

    .line 703
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    if-eqz v0, :cond_0

    .line 706
    invoke-interface {v0}, Landroid/media/audiofx/Visualizer$OnServerDiedListener;->onServerDied()V

    .line 707
    :cond_0
    return-void

    .line 703
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 711
    iget-object v0, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v0, :cond_0

    .line 712
    return-void

    .line 715
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 724
    const-string v0, "Visualizer-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown native event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 721
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->handleServerDiedMessage(Landroid/os/Message;)V

    .line 722
    goto :goto_0

    .line 718
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->handleCaptureMessage(Landroid/os/Message;)V

    .line 719
    nop

    .line 727
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

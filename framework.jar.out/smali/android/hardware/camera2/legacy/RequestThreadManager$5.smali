.class Landroid/hardware/camera2/legacy/RequestThreadManager$5;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCleanup:Z

.field private final mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 681
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    .line 683
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyResultMapper;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/LegacyResultMapper;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 687
    move-object/from16 v2, p1

    iget-boolean v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 688
    return v3

    .line 694
    :cond_0
    const-wide/16 v4, 0x0

    .line 698
    .local v4, "startTime":J
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_18

    const-wide/16 v6, 0xfa0

    packed-switch v0, :pswitch_data_0

    .line 985
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " on RequestThread."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 958
    :pswitch_0
    iput-boolean v3, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    .line 960
    :try_start_0
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 962
    .local v0, "success":Z
    if-nez v0, :cond_1

    .line 963
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Timed out while queueing cleanup request."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    .end local v0    # "success":Z
    :cond_1
    goto :goto_0

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Interrupted while waiting for requests to complete: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 971
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$500(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 972
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$500(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->quit()V

    .line 973
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0, v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$502(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 975
    :cond_2
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 976
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 977
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0, v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1302(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 979
    :cond_3
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1900(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$2000(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    .line 980
    goto/16 :goto_1

    .line 726
    :pswitch_1
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 727
    .local v8, "handler":Landroid/os/Handler;
    const/4 v9, 0x0

    .line 730
    .local v9, "anyRequestOutputAbandoned":Z
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$800(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;

    move-result-object v10

    .line 732
    .local v10, "nextBurst":Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;
    if-nez v10, :cond_6

    .line 736
    :try_start_1
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v11}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 738
    .local v0, "success":Z
    if-nez v0, :cond_4

    .line 739
    iget-object v11, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v11}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Timed out while waiting for prior requests to complete."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v11, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v11}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v11

    invoke-virtual {v11}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 748
    .end local v0    # "success":Z
    :cond_4
    nop

    .line 750
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$900(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 752
    :try_start_2
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$800(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;

    move-result-object v0

    move-object v10, v0

    .line 755
    if-nez v10, :cond_5

    .line 756
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setIdle()Z

    .line 757
    monitor-exit v11

    goto :goto_1

    .line 759
    :cond_5
    monitor-exit v11

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 743
    :catch_1
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Interrupted while waiting for requests to complete: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 747
    nop

    .line 988
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "startTime":J
    .end local v8    # "handler":Landroid/os/Handler;
    .end local v9    # "anyRequestOutputAbandoned":Z
    .end local v10    # "nextBurst":Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;
    .local v22, "startTime":J
    :goto_1
    move v6, v3

    move-wide/from16 v22, v4

    goto/16 :goto_11

    .line 762
    .end local v22    # "startTime":J
    .restart local v4    # "startTime":J
    .restart local v8    # "handler":Landroid/os/Handler;
    .restart local v9    # "anyRequestOutputAbandoned":Z
    .restart local v10    # "nextBurst":Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;
    :cond_6
    :goto_2
    if-eqz v10, :cond_7

    .line 764
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 767
    invoke-virtual {v10}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->isQueueEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 768
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setRequestQueueEmpty()V

    .line 773
    :cond_7
    invoke-virtual {v10}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->getBurstHolder()Landroid/hardware/camera2/legacy/BurstHolder;

    move-result-object v11

    .line 774
    .local v11, "burstHolder":Landroid/hardware/camera2/legacy/BurstHolder;
    nop

    .line 775
    invoke-virtual {v10}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;->getFrameNumber()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/hardware/camera2/legacy/BurstHolder;->produceRequestHolders(J)Ljava/util/List;

    move-result-object v12

    .line 776
    .local v12, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/hardware/camera2/legacy/RequestHolder;

    .line 777
    .local v15, "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-virtual {v15}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v14

    .line 779
    .local v14, "request":Landroid/hardware/camera2/CaptureRequest;
    const/16 v16, 0x0

    .line 782
    .local v16, "paramsChanged":Z
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eq v0, v14, :cond_8

    goto :goto_5

    .line 817
    :cond_8
    move-wide/from16 v22, v4

    .end local v4    # "startTime":J
    .end local v16    # "paramsChanged":Z
    .local v3, "paramsChanged":Z
    .restart local v22    # "startTime":J
    :goto_4
    move/from16 v3, v16

    goto/16 :goto_7

    .line 786
    .end local v3    # "paramsChanged":Z
    .end local v22    # "startTime":J
    .restart local v4    # "startTime":J
    .restart local v16    # "paramsChanged":Z
    :cond_9
    :goto_5
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;

    move-result-object v3

    .line 788
    .local v3, "previewSize":Landroid/util/Size;
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyRequest;

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 789
    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-direct {v0, v6, v14, v3, v7}, Landroid/hardware/camera2/legacy/LegacyRequest;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)V

    move-object v6, v0

    .line 793
    .local v6, "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 796
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v7, v6, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->same(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 798
    :try_start_3
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v7, v6, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 808
    nop

    .line 809
    const/4 v0, 0x1

    .line 810
    .end local v16    # "paramsChanged":Z
    .local v0, "paramsChanged":Z
    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    move/from16 v20, v0

    iget-object v0, v6, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    .end local v0    # "paramsChanged":Z
    .local v20, "paramsChanged":Z
    invoke-static {v7, v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1102(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 813
    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    move/from16 v16, v20

    goto :goto_6

    .line 799
    .end local v20    # "paramsChanged":Z
    .restart local v16    # "paramsChanged":Z
    :catch_2
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v3

    const-string v3, "Exception while setting camera parameters: "

    .end local v3    # "previewSize":Landroid/util/Size;
    .local v21, "previewSize":Landroid/util/Size;
    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    invoke-virtual {v15}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    .line 804
    iget-object v3, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    move-wide/from16 v22, v4

    const-wide/16 v4, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3, v15, v4, v5, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    .line 807
    .end local v4    # "startTime":J
    .restart local v22    # "startTime":J
    goto :goto_8

    .line 813
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v21    # "previewSize":Landroid/util/Size;
    .end local v22    # "startTime":J
    .restart local v3    # "previewSize":Landroid/util/Size;
    .restart local v4    # "startTime":J
    :cond_a
    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    .end local v3    # "previewSize":Landroid/util/Size;
    .end local v4    # "startTime":J
    .restart local v21    # "previewSize":Landroid/util/Size;
    .restart local v22    # "startTime":J
    :goto_6
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0, v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1002(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/legacy/LegacyRequest;

    .end local v6    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .end local v21    # "previewSize":Landroid/util/Size;
    goto :goto_4

    .line 817
    .end local v16    # "paramsChanged":Z
    .local v3, "paramsChanged":Z
    :goto_7
    :try_start_4
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v0

    iget-object v4, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 818
    invoke-static {v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v16

    const-wide/16 v17, 0xfa0

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8

    .line 817
    move-object v4, v14

    move-object v14, v0

    .end local v14    # "request":Landroid/hardware/camera2/CaptureRequest;
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    move-object v5, v15

    .end local v15    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .local v5, "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    :try_start_5
    invoke-virtual/range {v14 .. v19}, Landroid/hardware/camera2/legacy/CaptureCollector;->queueRequest(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 820
    .local v0, "success":Z
    if-nez v0, :cond_b

    .line 822
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Timed out while queueing capture request."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    .line 824
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    const/4 v7, 0x3

    const-wide/16 v14, 0x0

    invoke-virtual {v6, v5, v14, v15, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    .line 827
    nop

    .line 776
    .end local v0    # "success":Z
    .end local v3    # "paramsChanged":Z
    .end local v5    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v22    # "startTime":J
    .local v4, "startTime":J
    :goto_8
    move-wide/from16 v4, v22

    const/4 v3, 0x1

    const-wide/16 v6, 0xfa0

    goto/16 :goto_3

    .line 832
    .restart local v0    # "success":Z
    .restart local v3    # "paramsChanged":Z
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v5    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .restart local v22    # "startTime":J
    :cond_b
    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 833
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1400(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 835
    :cond_c
    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 836
    :goto_9
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v6

    const-wide/16 v14, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v14, v15, v7}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForPreviewsEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 839
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Timed out while waiting for preview requests to complete."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextPreview()V

    goto :goto_9

    .line 843
    :cond_d
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->close()V

    .line 844
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1500(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 853
    :cond_e
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1600(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    move-result-object v6

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 857
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    move-result-object v6

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 859
    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 860
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1800(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 861
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v6

    const-wide/16 v14, 0xfa0

    invoke-virtual {v6, v14, v15}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v6

    if-nez v6, :cond_f

    .line 862
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Hit timeout for jpeg callback!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextJpeg()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 882
    .end local v0    # "success":Z
    :cond_f
    nop

    .line 884
    if-eqz v3, :cond_10

    .line 889
    :try_start_6
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1102(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .line 895
    nop

    .line 898
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v0

    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/legacy/LegacyRequest;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_a

    .line 890
    :catch_3
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Received device exception: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 894
    goto/16 :goto_e

    .line 901
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_10
    :goto_a
    new-instance v0, Landroid/util/MutableLong;

    const-wide/16 v6, 0x0

    invoke-direct {v0, v6, v7}, Landroid/util/MutableLong;-><init>(J)V

    move-object v6, v0

    .line 903
    .local v6, "timestampMutable":Landroid/util/MutableLong;
    :try_start_7
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v14

    const-wide/16 v16, 0xfa0

    sget-object v18, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v15, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForRequestCompleted(Landroid/hardware/camera2/legacy/RequestHolder;JLjava/util/concurrent/TimeUnit;Landroid/util/MutableLong;)Z

    move-result v0

    .line 907
    .local v0, "success":Z
    if-nez v0, :cond_11

    .line 908
    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Timed out while waiting for request to complete."

    invoke-static {v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    .line 916
    .end local v0    # "success":Z
    :cond_11
    nop

    .line 918
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 919
    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v7

    iget-wide v14, v6, Landroid/util/MutableLong;->value:J

    .line 918
    invoke-virtual {v0, v7, v14, v15}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->cachedConvertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;J)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    .line 927
    .local v0, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 929
    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1600(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    move-result-object v7

    iget-object v14, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v14}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v14

    invoke-virtual {v7, v0, v14}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 931
    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHolder;->requestFailed()Z

    move-result v7

    if-nez v7, :cond_12

    .line 932
    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v7

    invoke-virtual {v7, v5, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    .line 935
    :cond_12
    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHolder;->isOutputAbandoned()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 936
    const/4 v0, 0x1

    .line 938
    .end local v3    # "paramsChanged":Z
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v6    # "timestampMutable":Landroid/util/MutableLong;
    .end local v9    # "anyRequestOutputAbandoned":Z
    .local v0, "anyRequestOutputAbandoned":Z
    move v9, v0

    .end local v0    # "anyRequestOutputAbandoned":Z
    .restart local v9    # "anyRequestOutputAbandoned":Z
    :cond_13
    goto/16 :goto_8

    .line 911
    .restart local v3    # "paramsChanged":Z
    .restart local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v5    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .restart local v6    # "timestampMutable":Landroid/util/MutableLong;
    :catch_4
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "Interrupted waiting for request completion: "

    invoke-static {v7, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    iget-object v7, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v7

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 915
    goto :goto_e

    .line 877
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "timestampMutable":Landroid/util/MutableLong;
    :catch_5
    move-exception v0

    goto :goto_b

    .line 872
    :catch_6
    move-exception v0

    goto :goto_c

    .line 867
    :catch_7
    move-exception v0

    goto :goto_d

    .line 877
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .restart local v14    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v15    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    :catch_8
    move-exception v0

    move-object v4, v14

    move-object v5, v15

    .line 878
    .end local v14    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v15    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v5    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    :goto_b
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Received device exception during capture call: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 881
    goto :goto_e

    .line 872
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .restart local v14    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v15    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    :catch_9
    move-exception v0

    move-object v4, v14

    move-object v5, v15

    .line 873
    .end local v14    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v15    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v5    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    :goto_c
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Interrupted during capture: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 874
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 876
    goto :goto_e

    .line 867
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .restart local v14    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v15    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    :catch_a
    move-exception v0

    move-object v4, v14

    move-object v5, v15

    .line 868
    .end local v14    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v15    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v5    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    :goto_d
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Received device exception during capture call: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 869
    iget-object v6, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v6}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 871
    goto :goto_e

    .line 941
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "paramsChanged":Z
    .end local v5    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v22    # "startTime":J
    .local v4, "startTime":J
    :cond_14
    move-wide/from16 v22, v4

    .end local v4    # "startTime":J
    .restart local v22    # "startTime":J
    :goto_e
    if-eqz v9, :cond_15

    invoke-virtual {v11}, Landroid/hardware/camera2/legacy/BurstHolder;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 942
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-virtual {v11}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->cancelRepeating(I)J

    move-result-wide v3

    .line 947
    .local v3, "lastFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v0

    .line 948
    invoke-virtual {v11}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v5

    .line 947
    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setRepeatingRequestError(JI)V

    .line 949
    .end local v3    # "lastFrameNumber":J
    nop

    .line 988
    .end local v8    # "handler":Landroid/os/Handler;
    .end local v9    # "anyRequestOutputAbandoned":Z
    .end local v10    # "nextBurst":Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;
    .end local v11    # "burstHolder":Landroid/hardware/camera2/legacy/BurstHolder;
    .end local v12    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    :cond_15
    :goto_f
    const/4 v6, 0x1

    goto/16 :goto_11

    .line 700
    .end local v22    # "startTime":J
    .restart local v4    # "startTime":J
    :pswitch_2
    move-wide/from16 v22, v4

    .end local v4    # "startTime":J
    .restart local v22    # "startTime":J
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;

    .line 701
    .local v3, "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    iget-object v0, v3, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    if-eqz v0, :cond_16

    iget-object v0, v3, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    :goto_10
    move v4, v0

    .line 702
    .local v4, "sizes":I
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configure outputs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " surfaces configured."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :try_start_8
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xfa0

    invoke-virtual {v0, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 707
    .local v0, "success":Z
    if-nez v0, :cond_17

    .line 708
    iget-object v5, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Timed out while queueing configure request."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v5, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_b

    .line 716
    .end local v0    # "success":Z
    :cond_17
    nop

    .line 718
    iget-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v5, v3, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    invoke-static {v0, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$600(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    .line 719
    iget-object v0, v3, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 724
    goto :goto_f

    .line 711
    :catch_b
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v5, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Interrupted while waiting for requests to complete."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v5, v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 715
    goto :goto_11

    .line 983
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    .end local v22    # "startTime":J
    .local v4, "startTime":J
    :cond_18
    move v6, v3

    move-wide/from16 v22, v4

    .line 988
    .end local v4    # "startTime":J
    .restart local v22    # "startTime":J
    :goto_11
    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

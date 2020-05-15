.class Landroid/telecom/VideoCallbackServant$1;
.super Landroid/os/Handler;
.source "VideoCallbackServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallbackServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallbackServant;


# direct methods
.method constructor <init>(Landroid/telecom/VideoCallbackServant;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/VideoCallbackServant;

    .line 45
    iput-object p1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private internalHandleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 105
    :pswitch_0
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoCallback;->changeVideoQuality(I)V

    goto/16 :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 102
    goto/16 :goto_0

    .line 92
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 94
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 97
    nop

    .line 98
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 83
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 85
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 88
    nop

    .line 89
    goto :goto_0

    .line 87
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 74
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 76
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 78
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 79
    nop

    .line 80
    goto :goto_0

    .line 78
    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 62
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 64
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/VideoProfile;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 69
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 70
    nop

    .line 71
    goto :goto_0

    .line 69
    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 58
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 59
    nop

    .line 109
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 49
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/VideoCallbackServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 52
    :goto_0
    return-void
.end method

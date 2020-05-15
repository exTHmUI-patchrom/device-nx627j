.class Landroid/media/JetPlayer$NativeEventHandler;
.super Landroid/os/Handler;
.source "JetPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/JetPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mJet:Landroid/media/JetPlayer;

.field final synthetic this$0:Landroid/media/JetPlayer;


# direct methods
.method public constructor <init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "jet"    # Landroid/media/JetPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 402
    iput-object p1, p0, Landroid/media/JetPlayer$NativeEventHandler;->this$0:Landroid/media/JetPlayer;

    .line 403
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 404
    iput-object p2, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    .line 405
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "listener":Landroid/media/JetPlayer$OnJetEventListener;
    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->this$0:Landroid/media/JetPlayer;

    invoke-static {v1}, Landroid/media/JetPlayer;->access$000(Landroid/media/JetPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 411
    :try_start_0
    iget-object v2, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    invoke-static {v2}, Landroid/media/JetPlayer;->access$100(Landroid/media/JetPlayer;)Landroid/media/JetPlayer$OnJetEventListener;

    move-result-object v2

    move-object v0, v2

    .line 412
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/JetPlayer;->access$200(Ljava/lang/String;)V

    .line 446
    return-void

    .line 440
    :pswitch_0
    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Landroid/media/JetPlayer$OnJetEventListener;->onJetPauseUpdate(Landroid/media/JetPlayer;I)V

    .line 442
    :cond_0
    return-void

    .line 435
    :pswitch_1
    if-eqz v0, :cond_1

    .line 436
    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Landroid/media/JetPlayer$OnJetEventListener;->onJetNumQueuedSegmentUpdate(Landroid/media/JetPlayer;I)V

    .line 438
    :cond_1
    return-void

    .line 430
    :pswitch_2
    if-eqz v0, :cond_2

    .line 431
    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/JetPlayer$OnJetEventListener;->onJetUserIdUpdate(Landroid/media/JetPlayer;II)V

    .line 433
    :cond_2
    return-void

    .line 415
    :pswitch_3
    if-eqz v0, :cond_3

    .line 418
    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->this$0:Landroid/media/JetPlayer;

    invoke-static {v1}, Landroid/media/JetPlayer;->access$100(Landroid/media/JetPlayer;)Landroid/media/JetPlayer$OnJetEventListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x18

    int-to-short v4, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/high16 v5, 0xfc0000

    and-int/2addr v1, v5

    shr-int/lit8 v1, v1, 0x12

    int-to-byte v5, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    const v6, 0x3c000

    and-int/2addr v1, v6

    shr-int/lit8 v1, v1, 0xe

    add-int/lit8 v1, v1, 0x1

    int-to-byte v6, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    and-int/lit16 v1, v1, 0x3f80

    shr-int/lit8 v1, v1, 0x7

    int-to-byte v7, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v8, v1

    invoke-interface/range {v2 .. v8}, Landroid/media/JetPlayer$OnJetEventListener;->onJetEvent(Landroid/media/JetPlayer;SBBBB)V

    .line 428
    :cond_3
    return-void

    .line 412
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

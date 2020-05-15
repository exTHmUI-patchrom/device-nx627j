.class Landroid/media/MediaDrm$EventHandler;
.super Landroid/os/Handler;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaDrm:Landroid/media/MediaDrm;

.field final synthetic this$0:Landroid/media/MediaDrm;


# direct methods
.method public constructor <init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V
    .locals 0
    .param p2, "md"    # Landroid/media/MediaDrm;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 523
    iput-object p1, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    .line 524
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 525
    iput-object p2, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    .line 526
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 530
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-static {v0}, Landroid/media/MediaDrm;->access$000(Landroid/media/MediaDrm;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 531
    const-string v0, "MediaDrm"

    const-string v1, "MediaDrm went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void

    .line 534
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 589
    const-string v0, "MediaDrm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void

    .line 556
    :pswitch_0
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    invoke-static {v0}, Landroid/media/MediaDrm;->access$200(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcel;

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcel;

    .line 559
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 560
    .local v1, "sessionId":[B
    array-length v2, v1

    if-lez v2, :cond_2

    .line 561
    iget-object v2, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    invoke-static {v2, v0}, Landroid/media/MediaDrm;->access$300(Landroid/media/MediaDrm;Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    .line 562
    .local v2, "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 564
    .local v3, "hasNewUsableKey":Z
    :goto_0
    const-string v4, "MediaDrm"

    const-string v5, "Drm key status changed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v4, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    invoke-static {v4}, Landroid/media/MediaDrm;->access$200(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-interface {v4, v5, v1, v2, v3}, Landroid/media/MediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V

    .line 570
    .end local v0    # "parcel":Landroid/os/Parcel;
    .end local v1    # "sessionId":[B
    .end local v2    # "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    .end local v3    # "hasNewUsableKey":Z
    :cond_2
    return-void

    .line 573
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    invoke-static {v0}, Landroid/media/MediaDrm;->access$400(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnExpirationUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 574
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcel;

    if-eqz v0, :cond_3

    .line 575
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcel;

    .line 576
    .restart local v0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 577
    .restart local v1    # "sessionId":[B
    array-length v2, v1

    if-lez v2, :cond_3

    .line 578
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 580
    .local v2, "expirationTime":J
    const-string v4, "MediaDrm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Drm key expiration update: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v4, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    invoke-static {v4}, Landroid/media/MediaDrm;->access$400(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnExpirationUpdateListener;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-interface {v4, v5, v1, v2, v3}, Landroid/media/MediaDrm$OnExpirationUpdateListener;->onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V

    .line 586
    .end local v0    # "parcel":Landroid/os/Parcel;
    .end local v1    # "sessionId":[B
    .end local v2    # "expirationTime":J
    :cond_3
    return-void

    .line 537
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    invoke-static {v0}, Landroid/media/MediaDrm;->access$100(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 538
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcel;

    if-eqz v0, :cond_6

    .line 539
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcel;

    .line 540
    .restart local v0    # "parcel":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 541
    .restart local v1    # "sessionId":[B
    array-length v2, v1

    if-nez v2, :cond_4

    .line 542
    const/4 v1, 0x0

    .line 544
    :cond_4
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 545
    .local v2, "data":[B
    array-length v3, v2

    if-nez v3, :cond_5

    .line 546
    const/4 v2, 0x0

    .line 549
    .end local v2    # "data":[B
    .local v8, "data":[B
    :cond_5
    move-object v8, v2

    const-string v2, "MediaDrm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drm event ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v2, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    invoke-static {v2}, Landroid/media/MediaDrm;->access$100(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnEventListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    move-object v4, v1

    move-object v7, v8

    invoke-interface/range {v2 .. v7}, Landroid/media/MediaDrm$OnEventListener;->onEvent(Landroid/media/MediaDrm;[BII[B)V

    .line 553
    .end local v0    # "parcel":Landroid/os/Parcel;
    .end local v1    # "sessionId":[B
    .end local v8    # "data":[B
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

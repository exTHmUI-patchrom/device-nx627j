.class public Lcom/qti/dpm/DpmService$DpmSender;
.super Landroid/os/Handler;
.source "DpmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DpmSender"
.end annotation


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "REQ:SNDR"


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method public constructor <init>(Lcom/qti/dpm/DpmService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/qti/dpm/DpmService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 576
    iput-object p1, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    .line 577
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 581
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    .line 578
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 590
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qti/dpm/DpmRequest;

    .line 591
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    const/4 v1, 0x0

    .line 593
    .local v1, "req":Lcom/qti/dpm/DpmRequest;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 663
    :pswitch_0
    iget-object v2, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v2}, Lcom/qti/dpm/DpmService;->access$2100(Lcom/qti/dpm/DpmService;)V

    goto/16 :goto_2

    .line 658
    :pswitch_1
    const-string v2, "REQ:SNDR"

    const-string v3, "event_toggle_wifi ...reassociating"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v2, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v2}, Lcom/qti/dpm/DpmService;->access$700(Lcom/qti/dpm/DpmService;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 660
    iget-object v2, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v2}, Lcom/qti/dpm/DpmService;->access$700(Lcom/qti/dpm/DpmService;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->reassociate()Z

    .line 661
    goto/16 :goto_2

    .line 601
    :pswitch_2
    const/4 v2, 0x0

    move v3, v2

    .line 604
    .local v3, "alreadySubtracted":Z
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v5, v5, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    .line 605
    .local v5, "s":Landroid/net/LocalSocket;
    if-nez v5, :cond_0

    .line 606
    invoke-virtual {v0}, Lcom/qti/dpm/DpmRequest;->release()V

    .line 607
    iget-object v2, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v6, v2, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    sub-int/2addr v6, v4

    iput v6, v2, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    .line 608
    const/4 v2, 0x1

    .line 609
    .end local v3    # "alreadySubtracted":Z
    .local v2, "alreadySubtracted":Z
    return-void

    .line 611
    .end local v2    # "alreadySubtracted":Z
    .restart local v3    # "alreadySubtracted":Z
    :cond_0
    iget-object v6, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v6, v6, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :try_start_1
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v7, v7, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    :try_start_2
    iget-object v6, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v7, v6, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    sub-int/2addr v7, v4

    iput v7, v6, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    .line 615
    const/4 v3, 0x1

    .line 617
    iget-object v6, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    .line 618
    .local v6, "data":[B
    iget-object v7, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 619
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    .line 620
    array-length v7, v6

    const/16 v8, 0x2000

    if-gt v7, v8, :cond_1

    .line 626
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    iget-object v8, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    aput-byte v2, v8, v4

    aput-byte v2, v7, v2

    .line 627
    iget-object v2, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    const/4 v7, 0x2

    array-length v8, v6

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 628
    iget-object v2, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    const/4 v7, 0x3

    array-length v8, v6

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 630
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    invoke-virtual {v2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 631
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 633
    iget-object v2, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v7, v0, Lcom/qti/dpm/DpmRequest;->mSerial:I

    invoke-static {v2, v7}, Lcom/qti/dpm/DpmService;->access$2000(Lcom/qti/dpm/DpmService;I)Lcom/qti/dpm/DpmRequest;

    .end local v5    # "s":Landroid/net/LocalSocket;
    .end local v6    # "data":[B
    goto :goto_0

    .line 621
    .restart local v5    # "s":Landroid/net/LocalSocket;
    .restart local v6    # "data":[B
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcel larger than max bytes allowed! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 613
    .end local v6    # "data":[B
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 642
    .end local v5    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v2

    .line 643
    .local v2, "exc":Ljava/lang/RuntimeException;
    const-string v5, "REQ:SNDR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uncaught exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v5, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v6, v0, Lcom/qti/dpm/DpmRequest;->mSerial:I

    invoke-static {v5, v6}, Lcom/qti/dpm/DpmService;->access$2000(Lcom/qti/dpm/DpmService;I)Lcom/qti/dpm/DpmRequest;

    move-result-object v1

    .line 647
    if-nez v1, :cond_2

    if-nez v3, :cond_5

    .line 649
    :cond_2
    invoke-virtual {v0}, Lcom/qti/dpm/DpmRequest;->release()V

    .end local v2    # "exc":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 634
    :catch_1
    move-exception v2

    .line 635
    .local v2, "ex":Ljava/io/IOException;
    const-string v5, "REQ:SNDR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v5, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v6, v0, Lcom/qti/dpm/DpmRequest;->mSerial:I

    invoke-static {v5, v6}, Lcom/qti/dpm/DpmService;->access$2000(Lcom/qti/dpm/DpmService;I)Lcom/qti/dpm/DpmRequest;

    move-result-object v1

    .line 639
    if-nez v1, :cond_3

    if-nez v3, :cond_4

    .line 640
    :cond_3
    invoke-virtual {v0}, Lcom/qti/dpm/DpmRequest;->release()V

    .line 651
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_4
    :goto_0
    nop

    .line 653
    :cond_5
    :goto_1
    if-nez v3, :cond_6

    .line 654
    iget-object v2, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v5, v2, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    sub-int/2addr v5, v4

    iput v5, v2, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    .line 666
    .end local v3    # "alreadySubtracted":Z
    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .line 586
    return-void
.end method

.class Lcom/qti/dpm/DpmService$DpmReceiver;
.super Ljava/lang/Object;
.source "DpmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DpmReceiver"
.end annotation


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "REQ:RCVR"


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/qti/dpm/DpmService;

    .line 737
    iput-object p1, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->buffer:[B

    .line 739
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 742
    const/4 v0, 0x0

    move v1, v0

    .line 746
    .local v1, "retryCount":I
    :goto_0
    const/4 v2, 0x0

    move-object v3, v2

    .line 750
    .local v3, "s":Landroid/net/LocalSocket;
    :try_start_0
    const-string v4, "REQ:RCVR"

    const-string v5, "DPM creating socket"

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmService;->access$2200(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    move-object v3, v4

    .line 752
    new-instance v4, Landroid/net/LocalSocketAddress;

    const-string v5, "dpmd"

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 754
    .local v4, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 781
    nop

    .line 780
    nop

    .line 782
    const/4 v1, 0x0

    .line 783
    :try_start_1
    iget-object v5, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    iput-object v3, v5, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    .line 784
    const-string v5, "REQ:RCVR"

    const-string v6, "Connected to \'dpmd\' socket"

    invoke-static {v5, v6}, Lcom/qti/dpm/DpmService;->access$2200(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const/4 v5, 0x1

    sput-boolean v5, Lcom/qti/dpm/DpmService;->isDpmdUp:Z

    .line 786
    iget-object v6, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v6}, Lcom/qti/dpm/DpmService;->access$2400(Lcom/qti/dpm/DpmService;)Z

    .line 787
    iget-object v6, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v6, v6, Lcom/qti/dpm/DpmService;->apnToInt:Lcom/qti/dpm/DpmService$ApnTypeToInt;

    invoke-static {v6}, Lcom/qti/dpm/DpmService$ApnTypeToInt;->access$2500(Lcom/qti/dpm/DpmService$ApnTypeToInt;)V

    .line 788
    iget-object v6, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v6, v6, Lcom/qti/dpm/DpmService;->mSender:Lcom/qti/dpm/DpmService$DpmSender;

    const/4 v7, 0x3

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Lcom/qti/dpm/DpmService$DpmSender;->sendEmptyMessageDelayed(IJ)Z

    .line 790
    iget-object v6, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v6}, Lcom/qti/dpm/DpmService;->access$2600(Lcom/qti/dpm/DpmService;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 792
    move v6, v0

    .line 794
    .local v6, "length":I
    :try_start_2
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v7, v7, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 799
    .local v7, "is":Ljava/io/InputStream;
    :goto_1
    iget-object v8, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->buffer:[B

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->access$2700(Ljava/io/InputStream;[B)I

    move-result v8

    move v6, v8

    .line 801
    if-gez v6, :cond_0

    .line 803
    nop

    .line 817
    .end local v7    # "is":Ljava/io/InputStream;
    :goto_2
    goto :goto_3

    .line 805
    .restart local v7    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 806
    .local v8, "p":Landroid/os/Parcel;
    iget-object v9, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->buffer:[B

    invoke-virtual {v8, v9, v0, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 807
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 809
    iget-object v9, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v9, v8}, Lcom/qti/dpm/DpmService;->access$2800(Lcom/qti/dpm/DpmService;Landroid/os/Parcel;)V

    .line 810
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 811
    .end local v8    # "p":Landroid/os/Parcel;
    goto :goto_1

    .line 814
    .end local v7    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 815
    .local v7, "tr":Ljava/lang/Throwable;
    :try_start_3
    const-string v8, "REQ:RCVR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Uncaught exception read length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 815
    invoke-static {v8, v9}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "tr":Ljava/lang/Throwable;
    goto :goto_3

    .line 812
    :catch_1
    move-exception v7

    .line 813
    .local v7, "ex":Ljava/io/IOException;
    const-string v8, "REQ:RCVR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\'dpmd\' socket closed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmService;->access$2200(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "ex":Ljava/io/IOException;
    goto :goto_2

    .line 818
    :goto_3
    const-string v7, "REQ:RCVR"

    const-string v8, "Disconnected from \'dpmd\' socket"

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->access$2200(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    sput-boolean v0, Lcom/qti/dpm/DpmService;->isDpmdUp:Z

    .line 820
    sput-boolean v5, Lcom/qti/dpm/DpmService;->isDpmdDisconnected:Z

    .line 821
    sput-boolean v0, Lcom/qti/dpm/DpmService;->isDispatched:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 824
    :try_start_4
    iget-object v5, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v5, v5, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 826
    goto :goto_4

    .line 825
    :catch_2
    move-exception v5

    .line 828
    :goto_4
    :try_start_5
    iget-object v5, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    iput-object v2, v5, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    .line 829
    invoke-static {}, Lcom/qti/dpm/DpmRequest;->resetSerial()V

    .line 832
    iget-object v2, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v2, v2, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 833
    const/4 v5, 0x0

    .local v5, "i":I
    :try_start_6
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v7, v7, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "sz":I
    :goto_5
    if-ge v5, v7, :cond_1

    .line 834
    iget-object v8, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v8, v8, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qti/dpm/DpmRequest;

    .line 836
    .local v8, "rr":Lcom/qti/dpm/DpmRequest;
    invoke-virtual {v8}, Lcom/qti/dpm/DpmRequest;->release()V

    .line 833
    .end local v8    # "rr":Lcom/qti/dpm/DpmRequest;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 839
    .end local v5    # "i":I
    .end local v7    # "sz":I
    :cond_1
    iget-object v5, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v5, v5, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 840
    monitor-exit v2

    .line 841
    .end local v3    # "s":Landroid/net/LocalSocket;
    .end local v4    # "l":Landroid/net/LocalSocketAddress;
    .end local v6    # "length":I
    goto/16 :goto_0

    .line 840
    .restart local v3    # "s":Landroid/net/LocalSocket;
    .restart local v4    # "l":Landroid/net/LocalSocketAddress;
    .restart local v6    # "length":I
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 842
    .end local v3    # "s":Landroid/net/LocalSocket;
    .end local v4    # "l":Landroid/net/LocalSocketAddress;
    .end local v6    # "length":I
    :catch_3
    move-exception v0

    goto :goto_a

    .line 755
    .restart local v3    # "s":Landroid/net/LocalSocket;
    :catch_4
    move-exception v2

    .line 757
    .local v2, "ex":Ljava/io/IOException;
    if-eqz v3, :cond_2

    .line 758
    :try_start_8
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    .line 760
    :catch_5
    move-exception v4

    goto :goto_7

    .line 762
    :cond_2
    :goto_6
    nop

    .line 766
    :goto_7
    const/16 v4, 0x8

    if-ne v1, v4, :cond_3

    .line 767
    :try_start_9
    const-string v4, "REQ:RCVR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find \'dpmd\' socket after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " times, continuing to retry silently"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 769
    :cond_3
    if-lez v1, :cond_4

    if-ge v1, v4, :cond_4

    .line 770
    const-string v4, "REQ:RCVR"

    const-string v5, "Couldn\'t find \'dpmd\' socket; retrying after timeout"

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmService;->access$2300(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 775
    :cond_4
    :goto_8
    const-wide/16 v4, 0xfa0

    :try_start_a
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 778
    goto :goto_9

    .line 776
    :catch_6
    move-exception v4

    .line 777
    .local v4, "er":Ljava/lang/InterruptedException;
    :try_start_b
    const-string v5, "REQ:RCVR"

    const-string v6, "dpmd socket open retry timer was interrupted"

    invoke-static {v5, v6}, Lcom/qti/dpm/DpmService;->access$2300(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 779
    .end local v4    # "er":Ljava/lang/InterruptedException;
    :goto_9
    add-int/lit8 v1, v1, 0x1

    .line 780
    goto/16 :goto_0

    .line 842
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "s":Landroid/net/LocalSocket;
    :goto_a
    nop

    .line 843
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v2, "REQ:RCVR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uncaught exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

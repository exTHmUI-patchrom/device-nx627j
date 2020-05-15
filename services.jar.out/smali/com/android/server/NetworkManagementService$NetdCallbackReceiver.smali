.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .line 774
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 799
    const/16 v0, 0x265

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .line 777
    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "onDaemonConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 783
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$202(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    :goto_0
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    .line 804
    move-object/from16 v2, p3

    const-string v0, "Invalid event from daemon (%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, "errorMessage":Ljava/lang/String;
    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    packed-switch p1, :pswitch_data_0

    const/4 v9, 0x6

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 964
    :pswitch_0
    aget-object v0, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 965
    .local v3, "uid":I
    aget-object v0, v2, v8

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object v6, v0

    .line 967
    .local v6, "firstPacket":[B
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    goto :goto_0

    .line 968
    :catch_0
    move-exception v0

    .line 970
    nop

    .line 973
    .end local v3    # "uid":I
    .end local v6    # "firstPacket":[B
    :goto_0
    return v5

    .line 927
    :pswitch_1
    aget-object v0, v2, v3

    const-string v5, "Route"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    array-length v0, v2

    if-lt v0, v9, :cond_7

    .line 931
    const/4 v0, 0x0

    .line 932
    .local v0, "via":Ljava/lang/String;
    const/4 v5, 0x0

    .line 933
    .local v5, "dev":Ljava/lang/String;
    const/4 v9, 0x1

    .line 934
    .local v9, "valid":Z
    move-object v10, v5

    move-object v5, v0

    .line 934
    .end local v0    # "via":Ljava/lang/String;
    .local v5, "via":Ljava/lang/String;
    .local v6, "i":I
    .local v10, "dev":Ljava/lang/String;
    :goto_1
    move v0, v6

    .line 934
    .end local v6    # "i":I
    .local v0, "i":I
    add-int/lit8 v6, v0, 0x1

    array-length v11, v2

    if-ge v6, v11, :cond_4

    if-eqz v9, :cond_4

    .line 935
    aget-object v6, v2, v0

    const-string v11, "dev"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 936
    if-nez v10, :cond_0

    .line 937
    add-int/lit8 v6, v0, 0x1

    aget-object v6, v2, v6

    .line 934
    .end local v10    # "dev":Ljava/lang/String;
    .local v6, "dev":Ljava/lang/String;
    move-object v10, v6

    goto :goto_3

    .line 939
    .end local v6    # "dev":Ljava/lang/String;
    .restart local v10    # "dev":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 934
    .end local v9    # "valid":Z
    .local v6, "valid":Z
    :goto_2
    move v9, v6

    goto :goto_3

    .line 941
    .end local v6    # "valid":Z
    .restart local v9    # "valid":Z
    :cond_1
    aget-object v6, v2, v0

    const-string/jumbo v11, "via"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 942
    if-nez v5, :cond_2

    .line 943
    add-int/lit8 v6, v0, 0x1

    aget-object v5, v2, v6

    goto :goto_3

    .line 945
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 948
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 934
    :goto_3
    add-int/lit8 v6, v0, 0x2

    .line 934
    .end local v0    # "i":I
    .local v6, "i":I
    goto :goto_1

    .line 951
    .end local v6    # "i":I
    :cond_4
    if-eqz v9, :cond_6

    .line 954
    const/4 v0, 0x0

    .line 955
    .local v0, "gateway":Ljava/net/InetAddress;
    if-eqz v5, :cond_5

    :try_start_1
    invoke-static {v5}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    move-object v0, v6

    goto :goto_4

    .line 959
    .end local v0    # "gateway":Ljava/net/InetAddress;
    :catch_1
    move-exception v0

    goto :goto_5

    .line 956
    .restart local v0    # "gateway":Ljava/net/InetAddress;
    :cond_5
    :goto_4
    new-instance v6, Landroid/net/RouteInfo;

    new-instance v11, Landroid/net/IpPrefix;

    aget-object v7, v2, v7

    invoke-direct {v11, v7}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v11, v0, v10}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 957
    .local v6, "route":Landroid/net/RouteInfo;
    iget-object v7, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v8, v2, v8

    invoke-static {v7, v8, v6}, Lcom/android/server/NetworkManagementService;->access$1500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 958
    return v3

    .line 959
    .end local v0    # "gateway":Ljava/net/InetAddress;
    .end local v6    # "route":Landroid/net/RouteInfo;
    :goto_5
    nop

    .line 961
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    .end local v5    # "via":Ljava/lang/String;
    .end local v9    # "valid":Z
    .end local v10    # "dev":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :pswitch_2
    array-length v5, v2

    if-ne v5, v9, :cond_8

    aget-object v5, v2, v3

    const-string v9, "DnsInfo"

    .line 910
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    aget-object v5, v2, v8

    const-string/jumbo v8, "servers"

    .line 911
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 913
    :try_start_2
    aget-object v5, v2, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 916
    .local v8, "lifetime":J
    nop

    .line 915
    nop

    .line 917
    aget-object v0, v2, v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "servers":[Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v6, v2, v7

    invoke-static {v5, v6, v8, v9, v0}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 918
    .end local v0    # "servers":[Ljava/lang/String;
    .end local v8    # "lifetime":J
    goto :goto_6

    .line 914
    :catch_2
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 920
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    :goto_6
    return v3

    .line 879
    :pswitch_3
    array-length v5, v2

    const/4 v10, 0x7

    if-lt v5, v10, :cond_a

    aget-object v5, v2, v3

    const-string v10, "Address"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 883
    aget-object v5, v2, v6

    .line 886
    .local v5, "iface":Ljava/lang/String;
    :try_start_3
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 887
    .local v0, "flags":I
    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 888
    .local v6, "scope":I
    new-instance v9, Landroid/net/LinkAddress;

    aget-object v7, v2, v7

    invoke-direct {v9, v7, v0, v6}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 888
    .end local v0    # "flags":I
    .end local v6    # "scope":I
    move-object v0, v9

    .line 893
    .local v0, "address":Landroid/net/LinkAddress;
    nop

    .line 892
    nop

    .line 895
    aget-object v6, v2, v8

    const-string/jumbo v7, "updated"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 896
    iget-object v6, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v6, v5, v0}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_7

    .line 898
    :cond_9
    iget-object v6, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v6, v5, v0}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 900
    :goto_7
    return v3

    .line 891
    .end local v0    # "address":Landroid/net/LinkAddress;
    :catch_3
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 889
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 890
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 880
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "iface":Ljava/lang/String;
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :pswitch_4
    array-length v5, v2

    if-lt v5, v6, :cond_e

    aget-object v5, v2, v3

    const-string v10, "IfaceClass"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 854
    const-wide/16 v10, 0x0

    .line 855
    .local v10, "timestampNanos":J
    const/4 v5, -0x1

    .line 856
    .local v5, "processUid":I
    array-length v12, v2

    if-lt v12, v0, :cond_c

    .line 858
    :try_start_4
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-wide v10, v12

    .line 859
    array-length v6, v2

    if-ne v6, v9, :cond_b

    .line 860
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5

    .line 862
    .end local v5    # "processUid":I
    .local v0, "processUid":I
    move v5, v0

    .line 862
    .end local v0    # "processUid":I
    .restart local v5    # "processUid":I
    :cond_b
    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_8

    .line 864
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    .line 866
    :goto_8
    aget-object v0, v2, v8

    const-string v6, "active"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 867
    .local v0, "isActive":Z
    iget-object v12, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v6, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 868
    if-eqz v0, :cond_d

    .line 869
    move v14, v7

    goto :goto_9

    :cond_d
    move v14, v3

    :goto_9
    const/16 v18, 0x0

    .line 867
    move-wide v15, v10

    move/from16 v17, v5

    invoke-static/range {v12 .. v18}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;IIJIZ)V

    .line 871
    return v3

    .line 852
    .end local v0    # "isActive":Z
    .end local v5    # "processUid":I
    .end local v10    # "timestampNanos":J
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :pswitch_5
    array-length v5, v2

    if-lt v5, v0, :cond_10

    aget-object v0, v2, v3

    const-string/jumbo v5, "limit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 840
    aget-object v0, v2, v8

    const-string v5, "alert"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 841
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v5, v2, v7

    aget-object v6, v2, v6

    invoke-static {v0, v5, v6}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    return v3

    .line 844
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :pswitch_6
    array-length v5, v2

    if-lt v5, v6, :cond_15

    aget-object v5, v2, v3

    const-string v9, "Iface"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 817
    aget-object v5, v2, v8

    const-string v9, "added"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 818
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v5, v2, v7

    invoke-static {v0, v5}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 819
    return v3

    .line 820
    :cond_11
    aget-object v5, v2, v8

    const-string/jumbo v9, "removed"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 821
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v5, v2, v7

    invoke-static {v0, v5}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 822
    return v3

    .line 823
    :cond_12
    aget-object v5, v2, v8

    const-string v9, "changed"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    array-length v5, v2

    if-ne v5, v0, :cond_13

    .line 824
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v5, v2, v7

    aget-object v6, v2, v6

    const-string/jumbo v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v0, v5, v6}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 825
    return v3

    .line 826
    :cond_13
    aget-object v5, v2, v8

    const-string/jumbo v8, "linkstate"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    array-length v5, v2

    if-ne v5, v0, :cond_14

    .line 827
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v5, v2, v7

    aget-object v6, v2, v6

    const-string/jumbo v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v0, v5, v6}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 828
    return v3

    .line 830
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x258
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x265
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

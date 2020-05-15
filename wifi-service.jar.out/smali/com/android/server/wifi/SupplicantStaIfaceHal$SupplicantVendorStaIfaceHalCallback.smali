.class Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;
.super Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;
.source "SupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantVendorStaIfaceHalCallback"
.end annotation


# instance fields
.field private mIfaceName:Ljava/lang/String;

.field private mSupplicantStaIfacecallback:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;)V
    .locals 0
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    .line 2757
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-direct {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;-><init>()V

    .line 2758
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 2759
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mSupplicantStaIfacecallback:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    .line 2760
    return-void
.end method


# virtual methods
.method public onDppAuthSuccess(Z)V
    .locals 5
    .param p1, "initiator"    # Z

    .line 2790
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppAuthSuccess"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2791
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2792
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2793
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    iput-boolean p1, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->initiator:Z

    .line 2794
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2795
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2796
    return-void

    .line 2795
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDppConf(BLjava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "type"    # B
    .param p3, "connector"    # Ljava/lang/String;
    .param p6, "netAccessExpiry"    # I
    .param p7, "passphrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 2833
    .local p2, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p4, "cSignKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p5, "netAccessKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p8, "psk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppConf"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2834
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2835
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2836
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    iput-byte p1, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->configEventType:B

    .line 2837
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->ssid:Ljava/lang/String;

    .line 2838
    iput-object p3, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->connector:Ljava/lang/String;

    .line 2839
    invoke-static {p4}, Lcom/android/server/wifi/util/NativeUtil;->bytesToHexOrQuotedString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->cSignKey:Ljava/lang/String;

    .line 2840
    invoke-static {p5}, Lcom/android/server/wifi/util/NativeUtil;->bytesToHexOrQuotedString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->netAccessKey:Ljava/lang/String;

    .line 2841
    iput p6, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->netAccessKeyExpiry:I

    .line 2842
    iput-object p7, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->passphrase:Ljava/lang/String;

    .line 2843
    invoke-static {p8}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->psk:Ljava/lang/String;

    .line 2844
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2845
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2846
    return-void

    .line 2845
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDppMissingAuth(B)V
    .locals 5
    .param p1, "dppAuthParam"    # B

    .line 2850
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppMissingAuth"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2851
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2852
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2853
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    iput-byte p1, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->authMissingParam:B

    .line 2854
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2855
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2856
    return-void

    .line 2855
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDppNetworkId(I)V
    .locals 5
    .param p1, "netID"    # I

    .line 2860
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppNetworkId"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2861
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2862
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2863
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    iput p1, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->netID:I

    .line 2864
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2865
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2866
    return-void

    .line 2865
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDppNotCompatible(BZ)V
    .locals 5
    .param p1, "capab"    # B
    .param p2, "initiator"    # Z

    .line 2800
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppNotCompatible"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2801
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2802
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2803
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    iput-byte p1, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->capab:B

    .line 2804
    iput-boolean p2, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->initiator:Z

    .line 2805
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2806
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2807
    return-void

    .line 2806
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDppResponsePending()V
    .locals 5

    .line 2811
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppResponsePending"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2812
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2814
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2815
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2816
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2817
    return-void

    .line 2816
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDppScanPeerQrCode(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 2821
    .local p1, "bootstrapData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppScanPeerQrCode"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2822
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2823
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2824
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->iBootstrapData:Ljava/lang/String;

    .line 2825
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2826
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2827
    return-void

    .line 2826
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVendorStateChanged(I[BILjava/util/ArrayList;Z)V
    .locals 9
    .param p1, "newState"    # I
    .param p2, "bssid"    # [B
    .param p3, "id"    # I
    .param p5, "filsHlpSent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;Z)V"
        }
    .end annotation

    .line 2765
    .local p4, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2766
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onVendorStateChanged"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2767
    invoke-static {p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$500(I)Landroid/net/wifi/SupplicantState;

    move-result-object v1

    .line 2768
    .local v1, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    nop

    .line 2769
    invoke-static {p4}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiGbk;->createWifiSsidFromByteArray([B)Landroid/net/wifi/WifiSsid;

    move-result-object v5

    .line 2770
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 2771
    .local v8, "bssidStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mSupplicantStaIfacecallback:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    const/4 v3, 0x7

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->updateStateIsFourway(Z)V

    .line 2773
    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_2

    .line 2774
    if-nez p5, :cond_1

    .line 2775
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 2776
    invoke-static {v4, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$600(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)I

    move-result v4

    .line 2775
    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/wifi/WifiMonitor;->broadcastNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 2778
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 2779
    invoke-static {v4, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$600(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)I

    move-result v4

    .line 2778
    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/wifi/WifiMonitor;->broadcastFilsNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 2782
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 2783
    invoke-static {v4, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$600(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)I

    move-result v4

    .line 2782
    move-object v6, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiMonitor;->broadcastSupplicantStateChangeEvent(Ljava/lang/String;ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    .line 2784
    .end local v1    # "newSupplicantState":Landroid/net/wifi/SupplicantState;
    .end local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v8    # "bssidStr":Ljava/lang/String;
    monitor-exit v0

    .line 2785
    return-void

    .line 2784
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

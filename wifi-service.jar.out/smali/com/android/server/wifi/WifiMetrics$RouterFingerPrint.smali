.class Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RouterFingerPrint"
.end annotation


# instance fields
.field private mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

.field final synthetic this$0:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiMetrics;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiMetrics;

    .line 218
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    .line 220
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    .line 216
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->access$000(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 225
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectionEvent.roamType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    iget v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mChannelInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    iget v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mDtim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    iget v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mAuthentication="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    iget v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mHidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    iget-boolean v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mRouterTechnology="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    iget v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mSupportsIpv6="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    iget-boolean v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 232
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 236
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics;->access$000(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 237
    if-eqz p1, :cond_3

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    .line 243
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    if-lez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->access$100(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->access$202(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    .line 250
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->access$100(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->access$100(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    goto :goto_0

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->access$100(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->access$100(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    .line 261
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    .line 264
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 265
    .local v1, "candidate":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_3

    .line 266
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiMetrics;->access$300(Lcom/android/server/wifi/WifiMetrics;Landroid/net/wifi/ScanResult;)V

    .end local v1    # "candidate":Landroid/net/wifi/ScanResult;
    goto :goto_1

    .line 269
    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

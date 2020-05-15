.class Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;
.super Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback$Stub;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RttEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiVendorHal;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiVendorHal$1;

    .line 1213
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    return-void
.end method


# virtual methods
.method public onResults(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "cmdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/RttResult;",
            ">;)V"
        }
    .end annotation

    .line 1218
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttResult;>;"
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->access$700(Lcom/android/server/wifi/WifiVendorHal;)I

    move-result v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->access$800(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$RttEventHandler;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1220
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->access$800(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$RttEventHandler;

    move-result-object v1

    .line 1222
    .local v1, "eventHandler":Lcom/android/server/wifi/WifiNative$RttEventHandler;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiVendorHal;->access$702(Lcom/android/server/wifi/WifiVendorHal;I)I

    .line 1223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/wifi/RttManager$RttResult;

    .line 1225
    .local v0, "rtt":[Landroid/net/wifi/RttManager$RttResult;
    nop

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1226
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/V1_0/RttResult;

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->frameworkRttResultFromHalRttResult(Landroid/hardware/wifi/V1_0/RttResult;)Landroid/net/wifi/RttManager$RttResult;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1225
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1228
    .end local v3    # "i":I
    :cond_1
    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$RttEventHandler;->onRttResults([Landroid/net/wifi/RttManager$RttResult;)V

    .line 1229
    return-void

    .line 1219
    .end local v0    # "rtt":[Landroid/net/wifi/RttManager$RttResult;
    .end local v1    # "eventHandler":Lcom/android/server/wifi/WifiNative$RttEventHandler;
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    .line 1223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

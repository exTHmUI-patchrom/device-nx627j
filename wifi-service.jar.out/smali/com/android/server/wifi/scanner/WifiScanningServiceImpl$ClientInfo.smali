.class abstract Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
.super Ljava/lang/Object;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ClientInfo"
.end annotation


# instance fields
.field protected final mMessenger:Landroid/os/Messenger;

.field private mScanWorkReported:Z

.field private final mUid:I

.field private final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;

    .line 1815
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1812
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    .line 1816
    iput p2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mUid:I

    .line 1817
    iput-object p3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    .line 1818
    new-instance p1, Landroid/os/WorkSource;

    invoke-direct {p1, p2}, Landroid/os/WorkSource;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    .line 1819
    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 1809
    iget v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mUid:I

    return v0
.end method

.method private getCsph()I
    .locals 7

    .line 1882
    const/4 v0, 0x0

    .line 1883
    .local v0, "totalScanDurationPerHour":I
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 1884
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->getBackgroundScanSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)Ljava/util/Collection;

    move-result-object v1

    .line 1885
    .local v1, "settingsList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1886
    .local v3, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/scanner/ChannelHelper;->estimateScanDuration(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v4

    .line 1887
    .local v4, "scanDurationMs":I
    iget v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const v5, 0x36ee80

    iget v6, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    div-int/2addr v5, v6

    .line 1889
    .local v5, "scans_per_Hour":I
    :goto_1
    mul-int v6, v4, v5

    add-int/2addr v0, v6

    .line 1890
    .end local v3    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v4    # "scanDurationMs":I
    .end local v5    # "scans_per_Hour":I
    goto :goto_0

    .line 1892
    :cond_1
    div-int/lit16 v2, v0, 0xc8

    return v2
.end method

.method private reportBatchedScanStart()V
    .locals 5

    .line 1856
    iget v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mUid:I

    if-nez v0, :cond_0

    .line 1857
    return-void

    .line 1859
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->getCsph()I

    move-result v0

    .line 1862
    .local v0, "csph":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2, v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1865
    goto :goto_0

    .line 1863
    :catch_0
    move-exception v1

    .line 1864
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to report scan work: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 1866
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private reportBatchedScanStop()V
    .locals 4

    .line 1870
    iget v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mUid:I

    if-nez v0, :cond_0

    .line 1871
    return-void

    .line 1874
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1877
    goto :goto_0

    .line 1875
    :catch_0
    move-exception v0

    .line 1876
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to cleanup scan work: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 1878
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private reportScanWorkUpdate()V
    .locals 1

    .line 1897
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    if-eqz v0, :cond_0

    .line 1898
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportBatchedScanStop()V

    .line 1899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->getBackgroundScanSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1902
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportBatchedScanStart()V

    .line 1903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    .line 1905
    :cond_1
    return-void
.end method

.method private unregister()V
    .locals 2

    .line 1832
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .line 1836
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    .line 1837
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->removeSingleScanRequests(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    .line 1838
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->removeBackgroundScanSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    .line 1839
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->unregister()V

    .line 1840
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully stopped all requests for client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 1841
    return-void
.end method

.method public getUid()I
    .locals 1

    .line 1844
    iget v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mUid:I

    return v0
.end method

.method public register()V
    .locals 2

    .line 1825
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    return-void
.end method

.method public reportEvent(III)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1848
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    .line 1849
    return-void
.end method

.method public abstract reportEvent(IIILjava/lang/Object;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientInfo[uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

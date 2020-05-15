.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiScanningServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$PnoEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiPnoScanStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private final mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<",
            "Landroid/util/Pair<",
            "Landroid/net/wifi/WifiScanner$PnoSettings;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

.field private final mHwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

.field private mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

.field private final mSingleScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;

.field private final mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1458
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 1459
    const-string v0, "WifiPnoScanStateMachine"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1449
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

    .line 1450
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    .line 1451
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mHwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

    .line 1452
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mSingleScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;

    .line 1455
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    .line 1461
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->setLogRecSize(I)V

    .line 1462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->setLogOnlyTransitions(Z)V

    .line 1465
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1466
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1467
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mHwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1468
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mSingleScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mHwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1471
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1472
    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1447
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    .line 1447
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    .line 1447
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1447
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 1447
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendPnoScanFailedToAllAndClear(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    .line 1447
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mHwPnoScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    .line 1447
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->removeInternalClient()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p4, "x4"    # Landroid/net/wifi/WifiScanner$PnoSettings;

    .line 1447
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addHwPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "x2"    # I

    .line 1447
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->removeHwPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;[Landroid/net/wifi/ScanResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
    .param p1, "x1"    # [Landroid/net/wifi/ScanResult;

    .line 1447
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->isSingleScanNeeded([Landroid/net/wifi/ScanResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    .line 1447
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->getScanSettings()Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1447
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addSingleScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    .line 1447
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mSingleScanState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SingleScanState;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
    .param p1, "x1"    # [Landroid/net/wifi/ScanResult;

    .line 1447
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->reportPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method private addHwPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Z
    .locals 10
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p4, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;

    .line 1736
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1737
    const-string v1, "WifiScanningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing scan request ClientInfo not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    return v0

    .line 1740
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1741
    const-string v1, "Failing scan request because there is already an active scan"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->loge(Ljava/lang/String;)V

    .line 1742
    return v0

    .line 1744
    :cond_1
    nop

    .line 1745
    invoke-direct {p0, p3, p4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->convertSettingsToPnoNative(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Lcom/android/server/wifi/WifiNative$PnoSettings;

    move-result-object v1

    .line 1746
    .local v1, "nativePnoSettings":Lcom/android/server/wifi/WifiNative$PnoSettings;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->setHwPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1747
    return v0

    .line 1749
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v4, "addHwPnoScanRequest"

    const/4 v7, 0x0

    move-object v5, p1

    move v6, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    .line 1750
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    .line 1752
    const/4 v0, 0x1

    return v0
.end method

.method private addInternalClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 5
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 1713
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    if-nez v0, :cond_0

    .line 1714
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 1715
    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->getUid()I

    move-result v2

    new-instance v3, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    .line 1716
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->register()V

    goto :goto_0

    .line 1718
    :cond_0
    const-string v0, "WifiScanningService"

    const-string v1, "Internal client for PNO already exists"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :goto_0
    return-void
.end method

.method private addPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V
    .locals 3
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p4, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;

    .line 1724
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    sget-object v1, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    .line 1725
    invoke-static {p4, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1724
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->addRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V

    .line 1726
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->addInternalClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    .line 1727
    return-void
.end method

.method private addSingleScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1787
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    const v1, 0x27015

    sget-object v2, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->sendRequestToClientHandler(ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)V

    .line 1792
    :cond_0
    return-void
.end method

.method private convertSettingsToPnoNative(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Lcom/android/server/wifi/WifiNative$PnoSettings;
    .locals 4
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;

    .line 1673
    new-instance v0, Lcom/android/server/wifi/WifiNative$PnoSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$PnoSettings;-><init>()V

    .line 1674
    .local v0, "nativePnoSetting":Lcom/android/server/wifi/WifiNative$PnoSettings;
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->periodInMs:I

    .line 1675
    iget v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->min5GHzRssi:I

    .line 1676
    iget v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->min24GHzRssi:I

    .line 1677
    iget v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->initialScoreMax:I

    .line 1678
    iget v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->currentConnectionBonus:I

    .line 1679
    iget v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->sameNetworkBonus:I

    .line 1680
    iget v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->secureBonus:I

    .line 1681
    iget v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->band5GHzBonus:I

    .line 1682
    iget-boolean v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    iput-boolean v1, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->isConnected:Z

    .line 1683
    iget-object v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/server/wifi/WifiNative$PnoNetwork;

    iput-object v1, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    .line 1685
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1686
    iget-object v2, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    new-instance v3, Lcom/android/server/wifi/WifiNative$PnoNetwork;

    invoke-direct {v3}, Lcom/android/server/wifi/WifiNative$PnoNetwork;-><init>()V

    aput-object v3, v2, v1

    .line 1687
    iget-object v2, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    aget-object v2, v2, v1

    iget-object v3, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    .line 1688
    iget-object v2, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    aget-object v2, v2, v1

    iget-object v3, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v3, v3, v1

    iget-byte v3, v3, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    iput-byte v3, v2, Lcom/android/server/wifi/WifiNative$PnoNetwork;->flags:B

    .line 1689
    iget-object v2, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    aget-object v2, v2, v1

    iget-object v3, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v3, v3, v1

    iget-byte v3, v3, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    iput-byte v3, v2, Lcom/android/server/wifi/WifiNative$PnoNetwork;->auth_bit_field:B

    .line 1685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1692
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private getScanSettings()Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 2

    .line 1697
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->getAllSettings()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1698
    .local v0, "settingsPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiScanner$ScanSettings;

    return-object v1

    .line 1700
    .end local v0    # "settingsPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isSingleScanNeeded([Landroid/net/wifi/ScanResult;)Z
    .locals 5
    .param p1, "scanResults"    # [Landroid/net/wifi/ScanResult;

    .line 1799
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1800
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 1802
    return v1

    .line 1799
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1805
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private removeHwPnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 8
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .line 1756
    if-eqz p1, :cond_0

    .line 1757
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->removePnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Landroid/util/Pair;

    move-result-object v0

    .line 1758
    .local v0, "settings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v2, "removeHwPnoScanRequest"

    const/4 v5, 0x0

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Landroid/net/wifi/WifiScanner$PnoSettings;

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    .line 1761
    .end local v0    # "settings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_0
    return-void
.end method

.method private removeInternalClient()V
    .locals 2

    .line 1704
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    if-eqz v0, :cond_0

    .line 1705
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->cleanup()V

    .line 1706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    goto :goto_0

    .line 1708
    :cond_0
    const-string v0, "WifiScanningService"

    const-string v1, "No Internal client for PNO"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :goto_0
    return-void
.end method

.method private removePnoScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Landroid/util/Pair;
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            "I)",
            "Landroid/util/Pair<",
            "Landroid/net/wifi/WifiScanner$PnoSettings;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    .line 1730
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1731
    .local v0, "settings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    return-object v0
.end method

.method private reportPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .locals 8
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .line 1764
    new-instance v0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    .line 1766
    .local v0, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 1767
    .local v2, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/util/Pair<Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;>;"
    iget-object v3, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 1768
    .local v3, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v4, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    .line 1769
    .local v4, "handler":I
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v6, "pnoNetworkFound"

    invoke-static {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeForLog([Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V

    .line 1770
    const v5, 0x2701a

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    .line 1772
    .end local v2    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/util/Pair<Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;>;"
    .end local v3    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v4    # "handler":I
    goto :goto_0

    .line 1773
    :cond_0
    return-void
.end method

.method private sendPnoScanFailedToAllAndClear(ILjava/lang/String;)V
    .locals 7
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 1776
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 1777
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/util/Pair<Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;>;"
    iget-object v2, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 1778
    .local v2, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v3, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    .line 1779
    .local v3, "handler":I
    const v4, 0x27012

    const/4 v5, 0x0

    new-instance v6, Landroid/net/wifi/WifiScanner$OperationResult;

    invoke-direct {v6, p1, p2}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    .line 1781
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/util/Pair<Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;>;"
    .end local v2    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v3    # "handler":I
    goto :goto_0

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    .line 1783
    return-void
.end method


# virtual methods
.method public onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .line 1482
    const/4 v0, 0x0

    const v1, 0x2710b

    invoke-virtual {p0, v1, v0, v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1483
    return-void
.end method

.method public onPnoScanFailed()V
    .locals 3

    .line 1488
    const/4 v0, 0x0

    const v1, 0x2710c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1489
    return-void
.end method

.method public removePnoSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 1475
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mActivePnoScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    .line 1476
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1477
    return-void
.end method

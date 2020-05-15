.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiScanningServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$ScanEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiSingleScanStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;
    }
.end annotation


# static fields
.field public static final CACHED_SCAN_RESULTS_MAX_AGE_IN_MILLIS:I = 0x2bf20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

.field private final mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

.field private final mIdleState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

.field private mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanningState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 460
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 461
    const-string v0, "WifiSingleScanStateMachine"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 448
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    .line 449
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    .line 450
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mIdleState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    .line 451
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mScanningState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 454
    new-instance v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-direct {v1, v2, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    .line 455
    new-instance v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-direct {v1, v2, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mCachedScanResults:Ljava/util/List;

    .line 463
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->setLogRecSize(I)V

    .line 464
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->setLogOnlyTransitions(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 468
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 469
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mIdleState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 470
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mScanningState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 473
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 474
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    .line 438
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    .line 438
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    .line 438
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mIdleState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    .line 438
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    .line 438
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mCachedScanResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    .line 438
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mScanningState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Lcom/android/server/wifi/WifiNative$ScanSettings;)Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 438
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method activeScanSatisfies(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 10
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 809
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 810
    return v1

    .line 813
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->getNativeScanType(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->activeScanTypeSatisfies(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 814
    return v1

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v0, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v0, v0, v1

    .line 821
    .local v0, "activeBucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v2

    .line 822
    .local v2, "activeChannels":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V

    .line 823
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 824
    return v1

    .line 828
    :cond_2
    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    .line 831
    return v1

    .line 834
    :cond_3
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 835
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworks:[Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 836
    return v1

    .line 838
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v3, "activeHiddenNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiNative$HiddenNetwork;>;"
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v4, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworks:[Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 840
    .local v7, "hiddenNetwork":Lcom/android/server/wifi/WifiNative$HiddenNetwork;
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    .end local v7    # "hiddenNetwork":Lcom/android/server/wifi/WifiNative$HiddenNetwork;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 842
    :cond_5
    iget-object v4, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    .line 843
    .local v7, "hiddenNetwork":Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;
    new-instance v8, Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    invoke-direct {v8}, Lcom/android/server/wifi/WifiNative$HiddenNetwork;-><init>()V

    .line 844
    .local v8, "nativeHiddenNetwork":Lcom/android/server/wifi/WifiNative$HiddenNetwork;
    iget-object v9, v7, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;->ssid:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/server/wifi/WifiNative$HiddenNetwork;->ssid:Ljava/lang/String;

    .line 845
    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 846
    return v1

    .line 842
    .end local v7    # "hiddenNetwork":Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;
    .end local v8    # "nativeHiddenNetwork":Lcom/android/server/wifi/WifiNative$HiddenNetwork;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 851
    .end local v3    # "activeHiddenNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiNative$HiddenNetwork;>;"
    :cond_7
    const/4 v1, 0x1

    return v1
.end method

.method activeScanTypeSatisfies(I)Z
    .locals 3
    .param p1, "requestScanType"    # I

    .line 778
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v0, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->scanType:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 787
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scan type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->scanType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :pswitch_0
    return v1

    .line 781
    :pswitch_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getCachedScanResultsAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 997
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mCachedScanResults:Ljava/util/List;

    return-object v0
.end method

.method getNativeScanType(I)I
    .locals 3
    .param p1, "type"    # I

    .line 760
    packed-switch p1, :pswitch_data_0

    .line 770
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scan type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 764
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 762
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method mergeScanTypes(II)I
    .locals 3
    .param p1, "existingScanType"    # I
    .param p2, "newScanType"    # I

    .line 795
    packed-switch p1, :pswitch_data_0

    .line 804
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scan type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :pswitch_0
    return p1

    .line 798
    :pswitch_1
    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFullScanResult(Landroid/net/wifi/ScanResult;I)V
    .locals 2
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I

    .line 504
    const v0, 0x27101

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 505
    return-void
.end method

.method public onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 2
    .param p1, "scanData"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .line 510
    const-string v0, "WifiScanningService"

    const-string v1, "Got scan paused for single scan"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void
.end method

.method public onScanRestarted()V
    .locals 2

    .line 516
    const-string v0, "WifiScanningService"

    const-string v1, "Got scan restarted for single scan"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void
.end method

.method public onScanStatus(I)V
    .locals 3
    .param p1, "event"    # I

    .line 483
    packed-switch p1, :pswitch_data_0

    .line 493
    const-string v0, "WifiScanningService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown scan status event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 490
    :pswitch_0
    const v0, 0x2710a

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(I)V

    .line 491
    goto :goto_0

    .line 487
    :pswitch_1
    const v0, 0x27100

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(I)V

    .line 488
    nop

    .line 496
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method removeSingleScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 7
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .line 855
    if-eqz p1, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v1, "removeSingleScanRequest"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    .line 857
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    .line 858
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    .line 860
    :cond_0
    return-void
.end method

.method removeSingleScanRequests(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 7
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 863
    if-eqz p1, :cond_0

    .line 864
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v1, "removeSingleScanRequests"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    .line 865
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    .line 866
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    .line 868
    :cond_0
    return-void
.end method

.method reportFullScanResult(Landroid/net/wifi/ScanResult;I)V
    .locals 7
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I

    .line 943
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x27014

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 944
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    const/4 v6, -0x1

    invoke-static {v4, p1, p2, v5, v6}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->shouldReportFullScanResultForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 946
    invoke-virtual {v1, v3, v2, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    .line 948
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_0
    goto :goto_0

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 951
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Ljava/lang/Void;>;"
    invoke-virtual {v1, v3, v2, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    .line 952
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Ljava/lang/Void;>;"
    goto :goto_1

    .line 953
    :cond_2
    return-void
.end method

.method reportScanResults(Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 12
    .param p1, "results"    # Landroid/net/wifi/WifiScanner$ScanData;

    .line 956
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 957
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNonEmptyScanResultCount()V

    goto :goto_0

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementEmptyScanResultCount()V

    .line 963
    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ScanData;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 964
    .local v0, "allResults":[Landroid/net/wifi/WifiScanner$ScanData;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const v4, 0x27005

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 965
    .local v3, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 966
    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    const/4 v7, -0x1

    .line 965
    invoke-static {v5, v0, v6, v7}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->filterResultsForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;[Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;I)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v5

    .line 967
    .local v5, "resultsToDeliver":[Landroid/net/wifi/WifiScanner$ScanData;
    new-instance v6, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    invoke-direct {v6, v5}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 969
    .local v6, "parcelableResultsToDeliver":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v8, "singleScanResults"

    iget-object v9, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    iget v10, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    .line 970
    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeForLog([Landroid/net/wifi/WifiScanner$ScanData;)Ljava/lang/String;

    move-result-object v11

    .line 969
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V

    .line 971
    invoke-virtual {v3, v4, v1, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    .line 973
    const v4, 0x27017

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v1, v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    .line 974
    .end local v3    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v5    # "resultsToDeliver":[Landroid/net/wifi/WifiScanner$ScanData;
    .end local v6    # "parcelableResultsToDeliver":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    goto :goto_1

    .line 976
    :cond_2
    new-instance v2, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 978
    .local v2, "parcelableAllResults":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 979
    .local v5, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Ljava/lang/Void;>;"
    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v7, "singleScanResults"

    iget-object v8, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    iget v9, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    .line 980
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeForLog([Landroid/net/wifi/WifiScanner$ScanData;)Ljava/lang/String;

    move-result-object v10

    .line 979
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V

    .line 981
    invoke-virtual {v5, v4, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    .line 982
    .end local v5    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Ljava/lang/Void;>;"
    goto :goto_2

    .line 984
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->isAllChannelsScanned()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 985
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mCachedScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 986
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mCachedScanResults:Ljava/util/List;

    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 990
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mCachedScanResults:Ljava/util/List;

    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 991
    const-string v1, "WifiScanningService"

    const-string v3, "Partial Band Scan,The result would be less than full scan"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :goto_3
    return-void
.end method

.method sendOpFailedToAllAndClear(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;ILjava/lang/String;)V
    .locals 8
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<",
            "*>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 933
    .local p1, "clientHandlers":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<*>;"
    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 934
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<*>;"
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v3, "singleScanFailed"

    iget-object v4, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    iget v5, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V

    .line 936
    const v2, 0x27012

    const/4 v3, 0x0

    new-instance v4, Landroid/net/wifi/WifiScanner$OperationResult;

    invoke-direct {v4, p2, p3}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    .line 938
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<*>;"
    goto :goto_0

    .line 939
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    .line 940
    return-void
.end method

.method tryToStartNewScan()V
    .locals 11

    .line 871
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 872
    return-void

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->updateChannels()V

    .line 876
    new-instance v0, Lcom/android/server/wifi/WifiNative$ScanSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ScanSettings;-><init>()V

    .line 877
    .local v0, "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    .line 878
    new-instance v2, Lcom/android/server/wifi/WifiNative$BucketSettings;

    invoke-direct {v2}, Lcom/android/server/wifi/WifiNative$BucketSettings;-><init>()V

    .line 879
    .local v2, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    .line 880
    iput v3, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    .line 881
    iput v1, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    .line 883
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v4

    .line 884
    .local v4, "channels":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v5, "hiddenNetworkList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiNative$HiddenNetwork;>;"
    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 886
    .local v7, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget v8, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->scanType:I

    iget-object v9, v7, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiScanner$ScanSettings;

    iget v9, v9, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 887
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->getNativeScanType(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mergeScanTypes(II)I

    move-result v8

    iput v8, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->scanType:I

    .line 888
    iget-object v8, v7, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-virtual {v4, v8}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 889
    iget-object v8, v7, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiScanner$ScanSettings;

    iget-object v8, v8, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    if-eqz v8, :cond_1

    .line 890
    move v8, v3

    .local v8, "i":I
    :goto_1
    iget-object v9, v7, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiScanner$ScanSettings;

    iget-object v9, v9, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 891
    new-instance v9, Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    invoke-direct {v9}, Lcom/android/server/wifi/WifiNative$HiddenNetwork;-><init>()V

    .line 892
    .local v9, "hiddenNetwork":Lcom/android/server/wifi/WifiNative$HiddenNetwork;
    iget-object v10, v7, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    iget-object v10, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    aget-object v10, v10, v8

    iget-object v10, v10, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;->ssid:Ljava/lang/String;

    iput-object v10, v9, Lcom/android/server/wifi/WifiNative$HiddenNetwork;->ssid:Ljava/lang/String;

    .line 893
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    .end local v9    # "hiddenNetwork":Lcom/android/server/wifi/WifiNative$HiddenNetwork;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 896
    .end local v8    # "i":I
    :cond_1
    iget-object v8, v7, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiScanner$ScanSettings;

    iget v8, v8, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 898
    iget v8, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    .line 900
    .end local v7    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_2
    goto :goto_0

    .line 901
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 902
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    iput-object v6, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworks:[Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    .line 903
    const/4 v6, 0x0

    .line 904
    .local v6, "numHiddenNetworks":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    .line 905
    .local v8, "hiddenNetwork":Lcom/android/server/wifi/WifiNative$HiddenNetwork;
    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworks:[Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    add-int/lit8 v10, v6, 0x1

    .local v10, "numHiddenNetworks":I
    aput-object v8, v9, v6

    .line 906
    .end local v6    # "numHiddenNetworks":I
    .end local v8    # "hiddenNetwork":Lcom/android/server/wifi/WifiNative$HiddenNetwork;
    nop

    .line 904
    move v6, v10

    goto :goto_2

    .line 909
    .end local v10    # "numHiddenNetworks":I
    :cond_4
    const v6, 0x7fffffff

    invoke-virtual {v4, v2, v6}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V

    .line 911
    new-array v1, v1, [Lcom/android/server/wifi/WifiNative$BucketSettings;

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 912
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->startSingleScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 914
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 916
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    .line 917
    .local v1, "tmp":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    iput-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    .line 918
    iput-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    .line 920
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    .line 921
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mScanningState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 922
    .end local v1    # "tmp":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    goto :goto_3

    .line 923
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    .line 924
    invoke-virtual {v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->size()I

    move-result v6

    .line 923
    invoke-virtual {v1, v3, v6}, Lcom/android/server/wifi/WifiMetrics;->incrementScanReturnEntry(II)V

    .line 926
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    const/4 v3, -0x1

    const-string v6, "Failed to start single scan"

    invoke-virtual {p0, v1, v3, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendOpFailedToAllAndClear(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;ILjava/lang/String;)V

    .line 929
    :goto_3
    return-void
.end method

.method validateScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 5
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 728
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 729
    const-string v1, "WifiScanningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing single scan request ClientInfo not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return v0

    .line 732
    :cond_0
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v1, :cond_2

    .line 733
    iget-object v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v1, :cond_1

    iget-object v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 734
    :cond_1
    const-string v1, "WifiScanningService"

    const-string v2, "Failing single scan because channel list was empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return v0

    .line 738
    :cond_2
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->validateScanType(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 739
    const-string v1, "WifiScanningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid scan type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return v0

    .line 742
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.NETWORK_STACK"

    .line 743
    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->getUid()I

    move-result v3

    .line 742
    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 745
    iget-object v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 746
    const-string v1, "WifiScanningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing single scan because app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have permission to set hidden networks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return v0

    .line 750
    :cond_4
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    if-eqz v1, :cond_5

    .line 751
    const-string v1, "WifiScanningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing single scan because app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have permission to set type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return v0

    .line 756
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method validateScanType(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 723
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

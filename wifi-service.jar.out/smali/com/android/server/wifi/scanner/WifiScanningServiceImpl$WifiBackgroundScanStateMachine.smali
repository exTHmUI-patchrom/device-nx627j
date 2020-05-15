.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
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
    name = "WifiBackgroundScanStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private final mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

.field private final mPausedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

.field private final mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1010
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 1011
    const-string v0, "WifiBackgroundScanStateMachine"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1004
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    .line 1005
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

    .line 1006
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mPausedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    .line 1008
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    .line 1013
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->setLogRecSize(I)V

    .line 1014
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->setLogOnlyTransitions(Z)V

    .line 1017
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1018
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1019
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mPausedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1022
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1023
    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    .line 1001
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1001
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1001
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1001
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    .line 1001
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    .line 1001
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 1001
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendBackgroundScanFailedToAllAndClear(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p4, "x4"    # Landroid/os/WorkSource;

    .line 1001
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->addBackgroundScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "x2"    # I

    .line 1001
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->removeBackgroundScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
    .param p1, "x1"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .line 1001
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Landroid/net/wifi/ScanResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/ScanResult;
    .param p2, "x2"    # I

    .line 1001
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->reportFullScanResult(Landroid/net/wifi/ScanResult;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    .line 1001
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mPausedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    return-object v0
.end method

.method private addBackgroundScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)Z
    .locals 11
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p4, "workSource"    # Landroid/os/WorkSource;

    .line 1240
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1241
    const-string v1, "WifiScanningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing scan request ClientInfo not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    return v0

    .line 1244
    :cond_0
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1

    .line 1245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing scan request because periodInMs is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", min scan period is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    .line 1247
    return v0

    .line 1250
    :cond_1
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v1, :cond_2

    iget-object v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-nez v1, :cond_2

    .line 1251
    const-string v1, "Channels was null with unspecified band"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    .line 1252
    return v0

    .line 1255
    :cond_2
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v1, :cond_3

    iget-object v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 1257
    const-string v1, "No channels specified"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    .line 1258
    return v0

    .line 1261
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/server/wifi/scanner/ChannelHelper;->estimateScanDuration(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v1

    .line 1262
    .local v1, "minSupportedPeriodMs":I
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-ge v2, v1, :cond_4

    .line 1263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing scan request because minSupportedPeriodMs is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but the request wants "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    .line 1265
    return v0

    .line 1269
    :cond_4
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iget v4, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-eq v2, v4, :cond_7

    .line 1270
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iget v4, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-ge v2, v4, :cond_5

    .line 1271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing scan request because maxPeriodInMs is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but less than periodInMs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    .line 1273
    return v0

    .line 1275
    :cond_5
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    const v4, 0xfa000

    if-le v2, v4, :cond_6

    .line 1276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing scan request because maxSupportedPeriodMs is 1024000 but the request wants "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    .line 1279
    return v0

    .line 1281
    :cond_6
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    if-ge v2, v3, :cond_7

    .line 1282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing scan request because stepCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " which is less than 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    .line 1284
    return v0

    .line 1288
    :cond_7
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v5, "addBackgroundScanRequest"

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    move v7, p2

    move-object v9, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    .line 1289
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v2, p1, p2, p4, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->addRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V

    .line 1291
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->updateSchedule()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1292
    return v3

    .line 1294
    :cond_8
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    .line 1295
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v3, "Failing scan request because failed to reset scan"

    invoke-static {v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 1296
    return v0
.end method

.method private removeBackgroundScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 8
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .line 1358
    if-eqz p1, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1360
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v2, "removeBackgroundScanRequest"

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    .line 1361
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->updateSchedule()Z

    .line 1363
    .end local v0    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    return-void
.end method

.method private reportFullScanResult(Landroid/net/wifi/ScanResult;I)V
    .locals 8
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I

    .line 1366
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 1367
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v2, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 1368
    .local v2, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v3, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    .line 1369
    .local v3, "handler":I
    iget-object v4, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1370
    .local v4, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$3300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    move-result-object v5

    invoke-virtual {v5, p1, p2, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->shouldReportFullScanResultForSettings(Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1372
    new-instance v5, Landroid/net/wifi/ScanResult;

    invoke-direct {v5, p1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    .line 1373
    .local v5, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v6, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    if-eqz v6, :cond_0

    .line 1374
    iget-object v6, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v6}, [Landroid/net/wifi/ScanResult$InformationElement;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v6, v5, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    goto :goto_1

    .line 1377
    :cond_0
    const/4 v6, 0x0

    iput-object v6, v5, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 1379
    :goto_1
    const v6, 0x27014

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v3, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    .line 1381
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v2    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v3    # "handler":I
    .end local v4    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v5    # "newResult":Landroid/net/wifi/ScanResult;
    :cond_1
    goto :goto_0

    .line 1382
    :cond_2
    return-void
.end method

.method private reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 10
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .line 1385
    if-nez p1, :cond_0

    .line 1386
    const-string v0, "WifiScanningService"

    const-string v1, "The results is null, nothing to report."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    return-void

    .line 1389
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 1390
    .local v3, "result":Landroid/net/wifi/WifiScanner$ScanData;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1391
    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_1

    .line 1392
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiMetrics;->incrementNonEmptyScanResultCount()V

    goto :goto_1

    .line 1394
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiMetrics;->incrementEmptyScanResultCount()V

    .line 1389
    .end local v3    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1398
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 1399
    .local v2, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v3, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 1400
    .local v3, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v4, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    .line 1401
    .local v4, "handler":I
    iget-object v5, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1402
    .local v5, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 1403
    invoke-static {v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$3300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->filterResultsForSettings([Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v6

    .line 1404
    .local v6, "resultsToDeliver":[Landroid/net/wifi/WifiScanner$ScanData;
    if-eqz v6, :cond_4

    .line 1405
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v8, "backgroundScanResults"

    .line 1406
    invoke-static {v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeForLog([Landroid/net/wifi/WifiScanner$ScanData;)Ljava/lang/String;

    move-result-object v9

    .line 1405
    invoke-virtual {v7, v8, v3, v4, v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V

    .line 1407
    new-instance v7, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    invoke-direct {v7, v6}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 1409
    .local v7, "parcelableScanData":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    const v8, 0x27005

    invoke-virtual {v3, v8, v1, v4, v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    .line 1411
    .end local v2    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v3    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v4    # "handler":I
    .end local v5    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v6    # "resultsToDeliver":[Landroid/net/wifi/WifiScanner$ScanData;
    .end local v7    # "parcelableScanData":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    :cond_4
    goto :goto_2

    .line 1412
    :cond_5
    return-void
.end method

.method private sendBackgroundScanFailedToAllAndClear(ILjava/lang/String;)V
    .locals 7
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 1415
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    .line 1416
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v2, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 1417
    .local v2, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v3, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    .line 1418
    .local v3, "handler":I
    const v4, 0x27012

    const/4 v5, 0x0

    new-instance v6, Landroid/net/wifi/WifiScanner$OperationResult;

    invoke-direct {v6, p1, p2}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    .line 1420
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v2    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v3    # "handler":I
    goto :goto_0

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    .line 1422
    return-void
.end method

.method private updateSchedule()Z
    .locals 9

    .line 1301
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$3300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$2800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->updateChannels()V

    .line 1306
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->getAllSettings()Ljava/util/Collection;

    move-result-object v0

    .line 1308
    .local v0, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$3300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->updateSchedule(Ljava/util/Collection;)V

    .line 1309
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$3300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getSchedule()Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-result-object v2

    .line 1311
    .local v2, "schedule":Lcom/android/server/wifi/WifiNative$ScanSettings;
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$4400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->scheduleEquals(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanSettings;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1313
    return v4

    .line 1316
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v3, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$4402(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiNative$ScanSettings;)Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 1318
    iget v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-nez v3, :cond_2

    .line 1319
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->stopBatchedScan()V

    .line 1321
    return v4

    .line 1323
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "starting scan: base period="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", max ap per scan="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", batched scans="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 1327
    move v3, v1

    .local v3, "b":I
    :goto_0
    iget v5, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ge v3, v5, :cond_3

    .line 1328
    iget-object v5, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v5, v5, v3

    .line 1329
    .local v5, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bucket "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "ms)["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    invoke-static {v5}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString(Lcom/android/server/wifi/WifiNative$BucketSettings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1329
    invoke-static {v6, v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 1327
    .end local v5    # "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1334
    .end local v3    # "b":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v3

    invoke-virtual {v3, v2, p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->startBatchedScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1339
    return v4

    .line 1341
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$4402(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiNative$ScanSettings;)Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 1342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error starting scan: base period="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", max ap per scan="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", batched scans="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    .line 1346
    move v3, v1

    .restart local v3    # "b":I
    :goto_1
    iget v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ge v3, v4, :cond_5

    .line 1347
    iget-object v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v4, v4, v3

    .line 1348
    .local v4, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bucket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "ms)["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    invoke-static {v4}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString(Lcom/android/server/wifi/WifiNative$BucketSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1348
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    .line 1346
    .end local v4    # "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1352
    .end local v3    # "b":I
    :cond_5
    return v1

    .line 1302
    .end local v0    # "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v2    # "schedule":Lcom/android/server/wifi/WifiNative$ScanSettings;
    :cond_6
    :goto_2
    const-string v0, "Failed to update schedule because WifiScanningService is not initialized"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    .line 1303
    return v1
.end method


# virtual methods
.method public getBackgroundScanSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)Ljava/util/Collection;
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->getAllSettingsForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onFullScanResult(Landroid/net/wifi/ScanResult;I)V
    .locals 2
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I

    .line 1055
    const v0, 0x27101

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1056
    return-void
.end method

.method public onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 1
    .param p1, "scanData"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .line 1061
    const v0, 0x27108

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1062
    return-void
.end method

.method public onScanRestarted()V
    .locals 1

    .line 1067
    const v0, 0x27109

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(I)V

    .line 1068
    return-void
.end method

.method public onScanStatus(I)V
    .locals 3
    .param p1, "event"    # I

    .line 1037
    packed-switch p1, :pswitch_data_0

    .line 1047
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

    .line 1044
    :pswitch_0
    const v0, 0x2710a

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(I)V

    .line 1045
    goto :goto_0

    .line 1041
    :pswitch_1
    const v0, 0x27100

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(I)V

    .line 1042
    nop

    .line 1050
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

.method public removeBackgroundScanSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 1030
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    .line 1031
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->updateSchedule()Z

    .line 1032
    return-void
.end method

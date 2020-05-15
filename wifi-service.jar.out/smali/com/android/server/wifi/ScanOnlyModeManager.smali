.class public Lcom/android/server/wifi/ScanOnlyModeManager;
.super Ljava/lang/Object;
.source "ScanOnlyModeManager.java"

# interfaces
.implements Lcom/android/server/wifi/ActiveModeManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;,
        Lcom/android/server/wifi/ScanOnlyModeManager$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiScanOnlyModeManager"


# instance fields
.field private mClientInterfaceName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mExpectedStop:Z

.field private mIfaceIsUp:Z

.field private final mListener:Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

.field private final mSarManager:Lcom/android/server/wifi/SarManager;

.field private final mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

.field private final mStateMachine:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

.field private final mWakeupController:Lcom/android/server/wifi/WakeupController;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/ScanOnlyModeManager$Listener;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/ScanRequestProxy;Lcom/android/server/wifi/WakeupController;Lcom/android/server/wifi/SarManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "listener"    # Lcom/android/server/wifi/ScanOnlyModeManager$Listener;
    .param p5, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;
    .param p6, "scanRequestProxy"    # Lcom/android/server/wifi/ScanRequestProxy;
    .param p7, "wakeupController"    # Lcom/android/server/wifi/WakeupController;
    .param p8, "sarManager"    # Lcom/android/server/wifi/SarManager;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mIfaceIsUp:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mExpectedStop:Z

    .line 64
    iput-object p1, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object p3, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 66
    iput-object p4, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mListener:Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

    .line 67
    iput-object p5, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 68
    iput-object p6, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    .line 69
    iput-object p7, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mWakeupController:Lcom/android/server/wifi/WakeupController;

    .line 70
    iput-object p8, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mSarManager:Lcom/android/server/wifi/SarManager;

    .line 71
    new-instance v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;-><init>(Lcom/android/server/wifi/ScanOnlyModeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mStateMachine:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    .line 72
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/WakeupController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager;

    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mWakeupController:Lcom/android/server/wifi/WakeupController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager;

    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mStateMachine:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/SarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager;

    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mSarManager:Lcom/android/server/wifi/SarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/ScanOnlyModeManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager;

    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mClientInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/ScanOnlyModeManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mClientInterfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager;

    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/ScanOnlyModeManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScanOnlyModeManager;->updateWifiState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/ScanOnlyModeManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager;
    .param p1, "x1"    # Z

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScanOnlyModeManager;->sendScanAvailableBroadcast(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/ScanOnlyModeManager;)Lcom/android/server/wifi/ScanRequestProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager;

    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/ScanOnlyModeManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager;

    .line 38
    iget-boolean v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mIfaceIsUp:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wifi/ScanOnlyModeManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mIfaceIsUp:Z

    return p1
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mStateMachine:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 115
    .local v0, "currentState":Lcom/android/internal/util/IState;
    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 119
    :cond_0
    const-string v1, "StateMachine not active"

    return-object v1
.end method

.method private sendScanAvailableBroadcast(Z)V
    .locals 1
    .param p1, "available"    # Z

    .line 297
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/ScanOnlyModeManager;->sendScanAvailableBroadcast(Landroid/content/Context;Z)V

    .line 298
    return-void
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 127
    iget-boolean v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mExpectedStop:Z

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "WifiScanOnlyModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected stop, not triggering callbacks: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    .line 136
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mExpectedStop:Z

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mListener:Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/ScanOnlyModeManager$Listener;->onStateChanged(I)V

    .line 140
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 94
    const-string v0, "--Dump of ScanOnlyModeManager--"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current StateMachine mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/ScanOnlyModeManager;->getCurrentStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mClientInterfaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mClientInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIfaceIsUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mIfaceIsUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public start()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mStateMachine:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->sendMessage(I)V

    .line 79
    return-void
.end method

.method public stop()V
    .locals 3

    .line 85
    const-string v0, "WifiScanOnlyModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " currentstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/ScanOnlyModeManager;->getCurrentStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mExpectedStop:Z

    .line 87
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager;->mStateMachine:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->quitNow()V

    .line 88
    return-void
.end method

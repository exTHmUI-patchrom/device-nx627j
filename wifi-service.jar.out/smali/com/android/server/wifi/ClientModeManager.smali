.class public Lcom/android/server/wifi/ClientModeManager;
.super Ljava/lang/Object;
.source "ClientModeManager.java"

# interfaces
.implements Lcom/android/server/wifi/ActiveModeManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;,
        Lcom/android/server/wifi/ClientModeManager$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiClientModeManager"


# instance fields
.field private mClientInterfaceName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mExpectedStop:Z

.field private mIfaceIsUp:Z

.field private final mListener:Lcom/android/server/wifi/ClientModeManager$Listener;

.field private final mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

.field private final mStateMachine:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/ClientModeManager$Listener;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/ScanRequestProxy;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "listener"    # Lcom/android/server/wifi/ClientModeManager$Listener;
    .param p5, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;
    .param p6, "scanRequestProxy"    # Lcom/android/server/wifi/ScanRequestProxy;
    .param p7, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/ClientModeManager;->mIfaceIsUp:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/server/wifi/ClientModeManager;->mExpectedStop:Z

    .line 61
    iput-object p1, p0, Lcom/android/server/wifi/ClientModeManager;->mContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/android/server/wifi/ClientModeManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 63
    iput-object p4, p0, Lcom/android/server/wifi/ClientModeManager;->mListener:Lcom/android/server/wifi/ClientModeManager$Listener;

    .line 64
    iput-object p5, p0, Lcom/android/server/wifi/ClientModeManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 65
    iput-object p6, p0, Lcom/android/server/wifi/ClientModeManager;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    .line 66
    iput-object p7, p0, Lcom/android/server/wifi/ClientModeManager;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 67
    new-instance v0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;-><init>(Lcom/android/server/wifi/ClientModeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/ClientModeManager;->mStateMachine:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    .line 68
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager;->mStateMachine:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/ClientModeManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/ClientModeManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager;->mClientInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/ClientModeManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/android/server/wifi/ClientModeManager;->mClientInterfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/ClientModeManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager;

    .line 40
    iget-boolean v0, p0, Lcom/android/server/wifi/ClientModeManager;->mIfaceIsUp:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/ClientModeManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/android/server/wifi/ClientModeManager;->mIfaceIsUp:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/ClientModeManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/ClientModeManager;->updateWifiState(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/ClientModeManager;)Lcom/android/server/wifi/ScanRequestProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    return-object v0
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager;->mStateMachine:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 120
    .local v0, "currentState":Lcom/android/internal/util/IState;
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 124
    :cond_0
    const-string v1, "StateMachine not active"

    return-object v1
.end method

.method private updateWifiState(II)V
    .locals 3
    .param p1, "newState"    # I
    .param p2, "currentState"    # I

    .line 133
    iget-boolean v0, p0, Lcom/android/server/wifi/ClientModeManager;->mExpectedStop:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager;->mListener:Lcom/android/server/wifi/ClientModeManager$Listener;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/ClientModeManager$Listener;->onStateChanged(I)V

    goto :goto_0

    .line 136
    :cond_0
    const-string v0, "WifiClientModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected stop, not triggering callbacks: newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_2

    .line 144
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wifi/ClientModeManager;->mExpectedStop:Z

    .line 147
    :cond_2
    if-ne p1, v1, :cond_3

    .line 149
    return-void

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiStateForApiCalls(I)V

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    const-string v1, "wifi_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string v1, "previous_wifi_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/android/server/wifi/ClientModeManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 159
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 99
    const-string v0, "--Dump of ClientModeManager--"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current StateMachine mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/ClientModeManager;->getCurrentStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mClientInterfaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/ClientModeManager;->mClientInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIfaceIsUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/ClientModeManager;->mIfaceIsUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public start()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager;->mStateMachine:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->sendMessage(I)V

    .line 75
    return-void
.end method

.method public stop()V
    .locals 3

    .line 81
    const-string v0, "WifiClientModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " currentstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/ClientModeManager;->getCurrentStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/ClientModeManager;->mExpectedStop:Z

    .line 83
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager;->mClientInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 84
    iget-boolean v0, p0, Lcom/android/server/wifi/ClientModeManager;->mIfaceIsUp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/ClientModeManager;->updateWifiState(II)V

    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/ClientModeManager;->updateWifiState(II)V

    .line 92
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager;->mStateMachine:Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->quitNow()V

    .line 93
    return-void
.end method

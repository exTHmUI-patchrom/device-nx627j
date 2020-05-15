.class Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "ClientModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ClientModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientModeStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;,
        Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;
    }
.end annotation


# static fields
.field public static final CMD_INTERFACE_DESTROYED:I = 0x4

.field public static final CMD_INTERFACE_DOWN:I = 0x5

.field public static final CMD_INTERFACE_STATUS_CHANGED:I = 0x3

.field public static final CMD_START:I


# instance fields
.field private final mIdleState:Lcom/android/internal/util/State;

.field private final mStartedState:Lcom/android/internal/util/State;

.field private final mWifiNativeInterfaceCallback:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

.field final synthetic this$0:Lcom/android/server/wifi/ClientModeManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ClientModeManager;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 200
    iput-object p1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    .line 201
    const-string p1, "WifiClientModeManager"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 167
    new-instance p1, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$IdleState;-><init>(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;Lcom/android/server/wifi/ClientModeManager$1;)V

    iput-object p1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->mIdleState:Lcom/android/internal/util/State;

    .line 168
    new-instance p1, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;

    invoke-direct {p1, p0, v0}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$StartedState;-><init>(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;Lcom/android/server/wifi/ClientModeManager$1;)V

    iput-object p1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->mStartedState:Lcom/android/internal/util/State;

    .line 170
    new-instance p1, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;

    invoke-direct {p1, p0}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine$1;-><init>(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;)V

    iput-object p1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->mWifiNativeInterfaceCallback:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 203
    iget-object p1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->mIdleState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 204
    iget-object p1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 206
    iget-object p1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->mIdleState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->start()V

    .line 208
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    .line 161
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->mStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    .line 161
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->mIdleState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;)Lcom/android/server/wifi/WifiNative$InterfaceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;

    .line 161
    iget-object v0, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->mWifiNativeInterfaceCallback:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;
    .param p1, "x1"    # Z

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->sendScanAvailableBroadcast(Z)V

    return-void
.end method

.method private sendScanAvailableBroadcast(Z)V
    .locals 3
    .param p1, "available"    # Z

    .line 339
    const-string v0, "WifiClientModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending scan available broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "wifi_scan_available"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 342
    if-eqz p1, :cond_0

    .line 343
    const-string v1, "scan_enabled"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 345
    :cond_0
    const-string v1, "scan_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/ClientModeManager$ClientModeStateMachine;->this$0:Lcom/android/server/wifi/ClientModeManager;

    invoke-static {v1}, Lcom/android/server/wifi/ClientModeManager;->access$1300(Lcom/android/server/wifi/ClientModeManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 348
    return-void
.end method

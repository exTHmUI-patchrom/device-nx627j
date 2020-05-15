.class Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "ScanOnlyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ScanOnlyModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanOnlyModeStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;,
        Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;
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

.field final synthetic this$0:Lcom/android/server/wifi/ScanOnlyModeManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScanOnlyModeManager;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 175
    iput-object p1, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    .line 176
    const-string p1, "WifiScanOnlyModeManager"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 149
    new-instance p1, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$IdleState;-><init>(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;Lcom/android/server/wifi/ScanOnlyModeManager$1;)V

    iput-object p1, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->mIdleState:Lcom/android/internal/util/State;

    .line 150
    new-instance p1, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;

    invoke-direct {p1, p0, v0}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$StartedState;-><init>(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;Lcom/android/server/wifi/ScanOnlyModeManager$1;)V

    iput-object p1, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->mStartedState:Lcom/android/internal/util/State;

    .line 152
    new-instance p1, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$1;

    invoke-direct {p1, p0}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$1;-><init>(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;)V

    iput-object p1, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->mWifiNativeInterfaceCallback:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 178
    iget-object p1, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->mIdleState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 179
    iget-object p1, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 181
    iget-object p1, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->mIdleState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->start()V

    .line 183
    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    .line 142
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->mIdleState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;)Lcom/android/server/wifi/WifiNative$InterfaceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    .line 142
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->mWifiNativeInterfaceCallback:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    .line 142
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->mStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

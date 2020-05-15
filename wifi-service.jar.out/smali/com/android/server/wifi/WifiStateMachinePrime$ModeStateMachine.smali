.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachinePrime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;,
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;,
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$WifiDisabledState;,
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;
    }
.end annotation


# static fields
.field public static final CMD_DISABLE_WIFI:I = 0x3

.field public static final CMD_START_CLIENT_MODE:I = 0x0

.field public static final CMD_START_SCAN_ONLY_MODE:I = 0x1


# instance fields
.field private final mClientModeActiveState:Lcom/android/internal/util/State;

.field private final mScanOnlyModeActiveState:Lcom/android/internal/util/State;

.field private final mWifiDisabledState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachinePrime;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V
    .locals 1

    .line 274
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 275
    const-string v0, "WifiStateMachinePrime"

    invoke-static {p1}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$200(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 270
    new-instance p1, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$WifiDisabledState;

    invoke-direct {p1, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$WifiDisabledState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mWifiDisabledState:Lcom/android/internal/util/State;

    .line 271
    new-instance p1, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;

    invoke-direct {p1, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mClientModeActiveState:Lcom/android/internal/util/State;

    .line 272
    new-instance p1, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;

    invoke-direct {p1, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mScanOnlyModeActiveState:Lcom/android/internal/util/State;

    .line 277
    iget-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mClientModeActiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 278
    iget-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mScanOnlyModeActiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 279
    iget-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mWifiDisabledState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 281
    const-string p1, "WifiStateMachinePrime"

    const-string v0, "Starting Wifi in WifiDisabledState"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mWifiDisabledState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->start()V

    .line 284
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    .line 263
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    .line 263
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mWifiDisabledState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 263
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->checkForAndHandleModeChange(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private checkForAndHandleModeChange(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 291
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 305
    const/4 v0, 0x0

    return v0

    .line 297
    :pswitch_0
    const-string v0, "WifiStateMachinePrime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->getCurrentMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to ScanOnlyMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$300(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mScanOnlyModeActiveState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 299
    goto :goto_0

    .line 293
    :pswitch_1
    const-string v0, "WifiStateMachinePrime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->getCurrentMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to ClientMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$300(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mClientModeActiveState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 295
    goto :goto_0

    .line 301
    :cond_0
    const-string v0, "WifiStateMachinePrime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->getCurrentMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to WifiDisabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$300(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mWifiDisabledState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 303
    nop

    .line 307
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentMode()Ljava/lang/String;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

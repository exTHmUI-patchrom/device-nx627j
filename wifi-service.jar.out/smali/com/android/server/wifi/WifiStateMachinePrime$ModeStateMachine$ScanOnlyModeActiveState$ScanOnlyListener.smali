.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;
.super Ljava/lang/Object;
.source "WifiStateMachinePrime.java"

# interfaces
.implements Lcom/android/server/wifi/ScanOnlyModeManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanOnlyListener"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;->this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;Lcom/android/server/wifi/WifiStateMachinePrime$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiStateMachinePrime$1;

    .line 443
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 446
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;->this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;

    if-eq p0, v0, :cond_0

    .line 447
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "ScanOnly mode state change from previous manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void

    .line 451
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 452
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "ScanOnlyMode mode failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;->this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$300(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    const v1, 0x200cc

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 455
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 456
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "ScanOnlyMode stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;->this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$300(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    const v1, 0x200cb

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 459
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 461
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "scan mode active"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_3
    const-string v0, "WifiStateMachinePrime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected state update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_0
    return-void
.end method

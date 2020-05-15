.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;
.super Ljava/lang/Object;
.source "WifiStateMachinePrime.java"

# interfaces
.implements Lcom/android/server/wifi/ClientModeManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientListener"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;->this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;Lcom/android/server/wifi/WifiStateMachinePrime$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiStateMachinePrime$1;

    .line 359
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 363
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;->this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;

    if-eq p0, v0, :cond_0

    .line 364
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "Client mode state change from previous manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void

    .line 368
    :cond_0
    const-string v0, "WifiStateMachinePrime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State changed from client mode. state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;->this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$300(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    const v1, 0x20130

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 373
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState$ClientListener;->this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$300(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    const v1, 0x2012f

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 376
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 378
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "client mode active"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_3
    :goto_0
    return-void
.end method

.class Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$RssiEventHandler;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RssiEventHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    .line 5259
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$RssiEventHandler;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRssiThresholdBreached(B)V
    .locals 3
    .param p1, "curRssi"    # B

    .line 5262
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$RssiEventHandler;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5263
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRssiThresholdBreach event. Cur Rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5265
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$RssiEventHandler;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200a4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 5266
    return-void
.end method

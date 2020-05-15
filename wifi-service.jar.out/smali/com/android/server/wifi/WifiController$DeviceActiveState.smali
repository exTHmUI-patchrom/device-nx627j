.class Lcom/android/server/wifi/WifiController$DeviceActiveState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .line 740
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method public static synthetic lambda$processMessage$0(Lcom/android/server/wifi/WifiController$DeviceActiveState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bugTitle"    # Ljava/lang/String;
    .param p2, "bugDetail"    # Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$2200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->takeBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->enterClientMode()V

    .line 744
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$2200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    .line 745
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 749
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2600c

    if-ne v0, v1, :cond_1

    .line 753
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$2200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reloadTlsNetworksAndReconnect()V

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$1002(Lcom/android/server/wifi/WifiController;Z)Z

    .line 757
    return v1

    .line 758
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x26011

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 761
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/android/server/wifi/SelfRecovery;->REASON_STRINGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ltz v0, :cond_2

    .line 762
    sget-object v0, Lcom/android/server/wifi/SelfRecovery;->REASON_STRINGS:[Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    .line 763
    .local v0, "bugDetail":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wi-Fi BugReport: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "bugTitle":Ljava/lang/String;
    goto :goto_0

    .line 765
    .end local v0    # "bugDetail":Ljava/lang/String;
    .end local v1    # "bugTitle":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    .line 766
    .restart local v0    # "bugDetail":Ljava/lang/String;
    const-string v1, "Wi-Fi BugReport"

    .line 768
    .restart local v1    # "bugTitle":Ljava/lang/String;
    :goto_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_3

    .line 769
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$4400(Lcom/android/server/wifi/WifiController;)Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiController$DeviceActiveState$j60bKc3b7Z47vZXsDHcRTlqzedE;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/server/wifi/-$$Lambda$WifiController$DeviceActiveState$j60bKc3b7Z47vZXsDHcRTlqzedE;-><init>(Lcom/android/server/wifi/WifiController$DeviceActiveState;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 773
    :cond_3
    return v2

    .line 775
    .end local v0    # "bugDetail":Ljava/lang/String;
    .end local v1    # "bugTitle":Ljava/lang/String;
    :cond_4
    return v2
.end method

.class Lcom/android/server/wifi/WifiServiceImpl$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 2801
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2804
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2805
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2806
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1000(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v1

    const v2, 0x2600c

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto/16 :goto_0

    .line 2807
    :cond_0
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2808
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2809
    .local v1, "userHandle":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->removeUserConfigs(I)V

    .line 2810
    .end local v1    # "userHandle":I
    goto :goto_0

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2811
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2813
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    .line 2814
    .end local v1    # "state":I
    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2815
    const-string v1, "phoneinECMState"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2816
    .local v1, "emergencyMode":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$1000(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v3

    const v4, 0x26001

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    .line 2817
    .end local v1    # "emergencyMode":Z
    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2818
    const-string v1, "phoneInEmergencyCall"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2819
    .local v1, "inCall":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$1000(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v3

    const v4, 0x2600e

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    .line 2820
    .end local v1    # "inCall":Z
    goto :goto_0

    :cond_4
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2821
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl;->handleIdleModeChanged()V

    .line 2823
    :cond_5
    :goto_0
    return-void
.end method

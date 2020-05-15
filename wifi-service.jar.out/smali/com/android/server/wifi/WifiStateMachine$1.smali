.class Lcom/android/server/wifi/WifiStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Looper;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/WifiCountryCode;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WrongPasswordNotifier;Lcom/android/server/wifi/SarManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 918
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 921
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x2005f

    if-eqz v1, :cond_3

    .line 925
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiUcPktFilterEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    const-string v1, "WifiStateMachine"

    const-string v3, "clear ReasonList and enable the Blacklist configs Because of Screen On"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mReasonListWhileConnectFail:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 928
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mOverThresholdConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 929
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->enableBlacklistconfigs()V

    .line 930
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 931
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->clearPnoscanFailCount()V

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 937
    :cond_1
    const-string v1, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi latency status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " when screen on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    goto/16 :goto_0

    .line 941
    :cond_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 942
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 944
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 945
    :cond_4
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi latency status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " when screen off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 950
    :cond_5
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 951
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiUcPktFilterEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_6

    .line 952
    const-string v1, "WifiStateMachine"

    const-string v2, "clear ReasonList and enable the Blacklist configs Because of leave Device Idle Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mReasonListWhileConnectFail:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 954
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mOverThresholdConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 955
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->enableBlacklistconfigs()V

    .line 956
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 957
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->startScreenOffPnoScan()V

    .line 958
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->clearPnoscanFailCount()V

    .line 963
    :cond_6
    :goto_0
    return-void
.end method

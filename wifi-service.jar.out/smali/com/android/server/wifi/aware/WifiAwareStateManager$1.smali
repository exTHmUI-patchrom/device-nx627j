.class Lcom/android/server/wifi/aware/WifiAwareStateManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiAwareStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/aware/WifiAwareStateManager;->start(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 401
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 404
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->reconfigure()V

    .line 411
    :cond_1
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 412
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$000(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "on_idle_disable_aware"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    .line 413
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$100(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disableUsage()V

    goto :goto_0

    .line 416
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->enableUsage()V

    goto :goto_0

    .line 419
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->reconfigure()V

    .line 422
    :cond_4
    :goto_0
    return-void
.end method

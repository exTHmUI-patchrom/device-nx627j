.class Lcom/android/server/wifi/rtt/RttServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "RttServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/rtt/RttServiceImpl;->start(Landroid/os/Looper;Lcom/android/server/wifi/Clock;Landroid/net/wifi/aware/IWifiAwareManager;Lcom/android/server/wifi/rtt/RttNative;Lcom/android/server/wifi/rtt/RttMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/FrameworkFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 240
    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$1;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 243
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$1;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$100(Lcom/android/server/wifi/rtt/RttServiceImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RttServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$1;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$200(Lcom/android/server/wifi/rtt/RttServiceImpl;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$1;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->disable()V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$1;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->enableIfPossible()V

    .line 253
    :cond_2
    :goto_0
    return-void
.end method

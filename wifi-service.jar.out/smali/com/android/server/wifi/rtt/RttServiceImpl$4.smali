.class Lcom/android/server/wifi/rtt/RttServiceImpl$4;
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

    .line 283
    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$4;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 286
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$4;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$100(Lcom/android/server/wifi/rtt/RttServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RttServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: MODE_CHANGED_ACTION: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$4;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$600(Lcom/android/server/wifi/rtt/RttServiceImpl;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$4;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->enableIfPossible()V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$4;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->disable()V

    .line 292
    :goto_0
    return-void
.end method

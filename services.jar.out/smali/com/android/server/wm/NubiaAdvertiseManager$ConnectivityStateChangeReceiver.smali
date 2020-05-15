.class Lcom/android/server/wm/NubiaAdvertiseManager$ConnectivityStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NubiaAdvertiseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NubiaAdvertiseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityStateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/NubiaAdvertiseManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/NubiaAdvertiseManager;)V
    .locals 3

    .line 217
    iput-object p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$ConnectivityStateChangeReceiver;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 219
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    invoke-static {p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$100(Lcom/android/server/wm/NubiaAdvertiseManager;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 221
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 225
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$ConnectivityStateChangeReceiver;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$ConnectivityStateChangeReceiver;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-virtual {v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->getNetworkType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$202(Lcom/android/server/wm/NubiaAdvertiseManager;I)I

    .line 230
    :cond_1
    return-void

    .line 226
    :cond_2
    :goto_0
    return-void
.end method

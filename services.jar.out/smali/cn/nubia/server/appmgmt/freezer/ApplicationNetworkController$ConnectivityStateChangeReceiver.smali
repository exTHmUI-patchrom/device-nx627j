.class Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityStateChangeReceiver"
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)V
    .locals 3

    .line 192
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 193
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    invoke-static {p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->access$400(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->access$300(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {v2, p0, v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 199
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 203
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 210
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->access$400(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 212
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_3

    .line 213
    return-void

    .line 215
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->access$500(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    const-string v0, "ApplicationNetworkController"

    const-string v1, "get connectivityStateChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 219
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_6

    .line 220
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->access$500(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 221
    const-string v1, "ApplicationNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_5
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->access$600(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 225
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->access$600(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteNetworkConnected(Z)V

    .line 228
    :cond_6
    return-void

    .line 204
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    :cond_7
    :goto_0
    return-void
.end method

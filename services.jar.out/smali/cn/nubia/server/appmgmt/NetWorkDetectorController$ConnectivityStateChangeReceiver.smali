.class Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkDetectorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/NetWorkDetectorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityStateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)V
    .locals 3

    .line 71
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    invoke-static {p1}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$000(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 75
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 79
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 81
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$000(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 84
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 85
    .local v1, "net":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 86
    const-string/jumbo v3, "networkType"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 87
    .local v3, "type":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 88
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$000(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "wifi"

    .line 89
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 90
    .local v2, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "bSSID":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 92
    return-void

    .line 93
    :cond_1
    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$100(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$100(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;

    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->isRepeatAgain()Z

    move-result v6

    if-nez v6, :cond_2

    .line 94
    iget-object v4, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$100(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;

    iget-boolean v6, v6, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->isAccess:Z

    invoke-static {v4, v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$200(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Z)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    new-instance v7, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    iget-object v8, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-direct {v7, v8, v4, v5}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;-><init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;ILjava/lang/String;)V

    invoke-static {v6, v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$302(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    .line 98
    iget-object v4, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$400(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$300(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    iget-object v4, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$400(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$300(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    .end local v2    # "wifi":Landroid/net/wifi/WifiManager;
    .end local v5    # "bSSID":Ljava/lang/String;
    :goto_0
    goto/16 :goto_2

    :cond_3
    if-nez v3, :cond_6

    .line 102
    iget-object v4, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$000(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "phone"

    .line 103
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 104
    .local v4, "telephone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "simOperator":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 106
    return-void

    .line 107
    :cond_4
    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$500(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    .line 108
    invoke-static {v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$500(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;

    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->isRepeatAgain()Z

    move-result v6

    if-nez v6, :cond_5

    .line 109
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$500(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;

    iget-boolean v6, v6, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->isAccess:Z

    invoke-static {v2, v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$200(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Z)V

    goto :goto_1

    .line 111
    :cond_5
    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    new-instance v7, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    iget-object v8, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-direct {v7, v8, v2, v5}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;-><init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;ILjava/lang/String;)V

    invoke-static {v6, v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$302(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    .line 114
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$400(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$300(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$400(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v6}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$300(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    .end local v4    # "telephone":Landroid/telephony/TelephonyManager;
    .end local v5    # "simOperator":Ljava/lang/String;
    :goto_1
    goto :goto_2

    :cond_6
    const/16 v2, 0x11

    if-ne v3, v2, :cond_7

    .line 118
    iget-object v4, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    new-instance v5, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    const-string v7, ""

    invoke-direct {v5, v6, v2, v7}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;-><init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;ILjava/lang/String;)V

    invoke-static {v4, v5}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$302(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    .line 120
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$400(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$300(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$400(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$300(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    .end local v3    # "type":I
    :cond_7
    :goto_2
    goto :goto_3

    .line 124
    :cond_8
    iget-object v3, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$ConnectivityStateChangeReceiver;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$200(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Z)V

    .line 127
    .end local v0    # "conn":Landroid/net/ConnectivityManager;
    .end local v1    # "net":Landroid/net/NetworkInfo;
    :cond_9
    :goto_3
    return-void

    .line 80
    :cond_a
    :goto_4
    return-void
.end method

.class Lcom/android/server/connectivity/NetworkMonitor$1;
.super Landroid/database/ContentObserver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 396
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .line 399
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$600(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 402
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$700(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "keyguard_is_showing"

    const/4 v2, -0x1

    .line 401
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 403
    .local v0, "isUnLocked":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 404
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$602(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 405
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v3, 0x8200c

    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 406
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IIJ)V

    .line 409
    .end local v0    # "isUnLocked":Z
    :cond_1
    return-void
.end method

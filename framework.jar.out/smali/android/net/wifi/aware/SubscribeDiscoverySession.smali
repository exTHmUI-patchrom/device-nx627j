.class public Landroid/net/wifi/aware/SubscribeDiscoverySession;
.super Landroid/net/wifi/aware/DiscoverySession;
.source "SubscribeDiscoverySession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubscribeDiscSession"


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;II)V
    .locals 0
    .param p1, "manager"    # Landroid/net/wifi/aware/WifiAwareManager;
    .param p2, "clientId"    # I
    .param p3, "sessionId"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/aware/DiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    .line 41
    return-void
.end method


# virtual methods
.method public updateSubscribe(Landroid/net/wifi/aware/SubscribeConfig;)V
    .locals 3
    .param p1, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;

    .line 60
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;->mTerminated:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "SubscribeDiscSession"

    const-string/jumbo v1, "updateSubscribe: called on terminated session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 65
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_1

    .line 66
    const-string v1, "SubscribeDiscSession"

    const-string/jumbo v2, "updateSubscribe: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 70
    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;->mClientId:I

    iget v2, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;->mSessionId:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/net/wifi/aware/WifiAwareManager;->updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V

    .line 72
    .end local v0    # "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    return-void
.end method

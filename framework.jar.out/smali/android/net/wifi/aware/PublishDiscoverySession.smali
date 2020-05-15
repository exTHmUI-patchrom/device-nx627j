.class public Landroid/net/wifi/aware/PublishDiscoverySession;
.super Landroid/net/wifi/aware/DiscoverySession;
.source "PublishDiscoverySession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PublishDiscoverySession"


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;II)V
    .locals 0
    .param p1, "manager"    # Landroid/net/wifi/aware/WifiAwareManager;
    .param p2, "clientId"    # I
    .param p3, "sessionId"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/aware/DiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    .line 37
    return-void
.end method


# virtual methods
.method public updatePublish(Landroid/net/wifi/aware/PublishConfig;)V
    .locals 3
    .param p1, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;

    .line 55
    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishDiscoverySession;->mTerminated:Z

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "PublishDiscoverySession"

    const-string/jumbo v1, "updatePublish: called on terminated session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/PublishDiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 60
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_1

    .line 61
    const-string v1, "PublishDiscoverySession"

    const-string/jumbo v2, "updatePublish: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 65
    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/PublishDiscoverySession;->mClientId:I

    iget v2, p0, Landroid/net/wifi/aware/PublishDiscoverySession;->mSessionId:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/net/wifi/aware/WifiAwareManager;->updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V

    .line 67
    .end local v0    # "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    return-void
.end method

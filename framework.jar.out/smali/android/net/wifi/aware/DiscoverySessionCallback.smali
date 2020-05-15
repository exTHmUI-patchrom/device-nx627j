.class public Landroid/net/wifi/aware/DiscoverySessionCallback;
.super Ljava/lang/Object;
.source "DiscoverySessionCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Landroid/net/wifi/aware/PeerHandle;[B)V
    .locals 0
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "message"    # [B

    .line 191
    return-void
.end method

.method public onMessageSendFailed(I)V
    .locals 0
    .param p1, "messageId"    # I

    .line 180
    return-void
.end method

.method public onMessageSendSucceeded(I)V
    .locals 0
    .param p1, "messageId"    # I

    .line 165
    return-void
.end method

.method public onPublishStarted(Landroid/net/wifi/aware/PublishDiscoverySession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/wifi/aware/PublishDiscoverySession;

    .line 45
    return-void
.end method

.method public onServiceDiscovered(Landroid/net/wifi/aware/PeerHandle;[BLjava/util/List;)V
    .locals 0
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "serviceSpecificInfo"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/aware/PeerHandle;",
            "[B",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 117
    .local p3, "matchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    return-void
.end method

.method public onServiceDiscoveredWithinRange(Landroid/net/wifi/aware/PeerHandle;[BLjava/util/List;I)V
    .locals 0
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "serviceSpecificInfo"    # [B
    .param p4, "distanceMm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/aware/PeerHandle;",
            "[B",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    .line 149
    .local p3, "matchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    return-void
.end method

.method public onSessionConfigFailed()V
    .locals 0

    .line 83
    return-void
.end method

.method public onSessionConfigUpdated()V
    .locals 0

    .line 67
    return-void
.end method

.method public onSessionTerminated()V
    .locals 0

    .line 93
    return-void
.end method

.method public onSubscribeStarted(Landroid/net/wifi/aware/SubscribeDiscoverySession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/wifi/aware/SubscribeDiscoverySession;

    .line 57
    return-void
.end method

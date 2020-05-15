.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;
.super Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiAwareDiscoverySessionCallbackProxy"
.end annotation


# static fields
.field private static final CALLBACK_MATCH:I = 0x4

.field private static final CALLBACK_MATCH_WITH_DISTANCE:I = 0x8

.field private static final CALLBACK_MESSAGE_RECEIVED:I = 0x7

.field private static final CALLBACK_MESSAGE_SEND_FAIL:I = 0x6

.field private static final CALLBACK_MESSAGE_SEND_SUCCESS:I = 0x5

.field private static final CALLBACK_SESSION_CONFIG_FAIL:I = 0x2

.field private static final CALLBACK_SESSION_CONFIG_SUCCESS:I = 0x1

.field private static final CALLBACK_SESSION_STARTED:I = 0x0

.field private static final CALLBACK_SESSION_TERMINATED:I = 0x3

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE2:Ljava/lang/String; = "message2"


# instance fields
.field private final mAwareManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIsPublish:Z

.field private final mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

.field private mSession:Landroid/net/wifi/aware/DiscoverySession;


# direct methods
.method constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V
    .locals 1
    .param p1, "mgr"    # Landroid/net/wifi/aware/WifiAwareManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "isPublish"    # Z
    .param p4, "originalCallback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;
    .param p5, "clientId"    # I

    .line 596
    invoke-direct {p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;-><init>()V

    .line 597
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    .line 598
    iput-boolean p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mIsPublish:Z

    .line 599
    iput-object p4, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    .line 600
    iput p5, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    .line 606
    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;

    invoke-direct {v0, p0, p2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 674
    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    .line 571
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySessionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    .line 571
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySession;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    .line 571
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    return-object v0
.end method

.method private onMatchCommon(II[B[BI)V
    .locals 3
    .param p1, "messageType"    # I
    .param p2, "peerId"    # I
    .param p3, "serviceSpecificInfo"    # [B
    .param p4, "matchFilter"    # [B
    .param p5, "distanceMm"    # I

    .line 713
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 714
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 715
    const-string/jumbo v1, "message2"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 717
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 718
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 719
    iput p5, v1, Landroid/os/Message;->arg2:I

    .line 720
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 721
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 722
    return-void
.end method


# virtual methods
.method public onMatch(I[B[B)V
    .locals 6
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "matchFilter"    # [B

    .line 728
    const/4 v1, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->onMatchCommon(II[B[BI)V

    .line 729
    return-void
.end method

.method public onMatchWithDistance(I[B[BI)V
    .locals 6
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "matchFilter"    # [B
    .param p4, "distanceMm"    # I

    .line 738
    const/16 v1, 0x8

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->onMatchCommon(II[B[BI)V

    .line 740
    return-void
.end method

.method public onMessageReceived(I[B)V
    .locals 2
    .param p1, "peerId"    # I
    .param p2, "message"    # [B

    .line 767
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 768
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 769
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 770
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 771
    return-void
.end method

.method public onMessageSendFail(II)V
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "reason"    # I

    .line 755
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 756
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 757
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 758
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 759
    return-void
.end method

.method public onMessageSendSuccess(I)V
    .locals 2
    .param p1, "messageId"    # I

    .line 746
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 747
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 748
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 749
    return-void
.end method

.method public onProxySessionStarted(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 778
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    if-nez v0, :cond_2

    .line 785
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 786
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_0

    .line 787
    const-string v1, "WifiAwareManager"

    const-string/jumbo v2, "onProxySessionStarted: mgr GC\'d"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-void

    .line 791
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mIsPublish:Z

    if-eqz v1, :cond_1

    .line 792
    new-instance v1, Landroid/net/wifi/aware/PublishDiscoverySession;

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    invoke-direct {v1, v0, v2, p1}, Landroid/net/wifi/aware/PublishDiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    .line 794
    .local v1, "session":Landroid/net/wifi/aware/PublishDiscoverySession;
    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    .line 795
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v2, v1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onPublishStarted(Landroid/net/wifi/aware/PublishDiscoverySession;)V

    .line 796
    .end local v1    # "session":Landroid/net/wifi/aware/PublishDiscoverySession;
    goto :goto_0

    .line 798
    :cond_1
    new-instance v1, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    invoke-direct {v1, v0, v2, p1}, Landroid/net/wifi/aware/SubscribeDiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    .line 799
    .local v1, "session":Landroid/net/wifi/aware/SubscribeDiscoverySession;
    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    .line 800
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v2, v1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSubscribeStarted(Landroid/net/wifi/aware/SubscribeDiscoverySession;)V

    .line 802
    .end local v1    # "session":Landroid/net/wifi/aware/SubscribeDiscoverySession;
    :goto_0
    return-void

    .line 779
    .end local v0    # "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSessionStarted: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": session already created!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiAwareManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionStarted: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": session already created!?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProxySessionTerminated(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 806
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    invoke-virtual {v0}, Landroid/net/wifi/aware/DiscoverySession;->setTerminated()V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    goto :goto_0

    .line 810
    :cond_0
    const-string v0, "WifiAwareManager"

    const-string v1, "Proxy: onSessionTerminated called but mSession is null!?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 813
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v0}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSessionTerminated()V

    .line 814
    return-void
.end method

.method public onSessionConfigFail(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 697
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 698
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 699
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 700
    return-void
.end method

.method public onSessionConfigSuccess()V
    .locals 2

    .line 689
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 690
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 691
    return-void
.end method

.method public onSessionStarted(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 680
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 681
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 682
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 683
    return-void
.end method

.method public onSessionTerminated(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 706
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 707
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 708
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 709
    return-void
.end method

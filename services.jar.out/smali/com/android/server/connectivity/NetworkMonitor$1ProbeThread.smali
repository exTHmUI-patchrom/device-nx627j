.class final Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
.super Ljava/lang/Thread;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProbeThread"
.end annotation


# instance fields
.field private final mIsHttps:Z

.field private volatile mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;

.field final synthetic val$httpUrl:Ljava/net/URL;

.field final synthetic val$httpsUrl:Ljava/net/URL;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$proxy:Landroid/net/ProxyInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "isHttps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1409
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpsUrl:Ljava/net/URL;

    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1407
    sget-object p3, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 1410
    iput-boolean p2, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    .line 1411
    return-void
.end method


# virtual methods
.method public result()Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 1419
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpsUrl:Ljava/net/URL;

    const/4 v3, 0x2

    .line 1421
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4400(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    goto :goto_0

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4400(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 1425
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1427
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 1428
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 1432
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1433
    return-void
.end method

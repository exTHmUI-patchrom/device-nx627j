.class Landroid/net/wifi/rtt/WifiRttManager$1;
.super Landroid/net/wifi/rtt/IRttCallback$Stub;
.source "WifiRttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/rtt/WifiRttManager;->startRanging(Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/rtt/WifiRttManager;

.field final synthetic val$callback:Landroid/net/wifi/rtt/RangingResultCallback;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/net/wifi/rtt/WifiRttManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/rtt/WifiRttManager;

    .line 150
    iput-object p1, p0, Landroid/net/wifi/rtt/WifiRttManager$1;->this$0:Landroid/net/wifi/rtt/WifiRttManager;

    iput-object p2, p0, Landroid/net/wifi/rtt/WifiRttManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/rtt/WifiRttManager$1;->val$callback:Landroid/net/wifi/rtt/RangingResultCallback;

    invoke-direct {p0}, Landroid/net/wifi/rtt/IRttCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onRangingFailure$0(Landroid/net/wifi/rtt/RangingResultCallback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/net/wifi/rtt/RangingResultCallback;
    .param p1, "status"    # I

    .line 154
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingResultCallback;->onRangingFailure(I)V

    return-void
.end method

.method static synthetic lambda$onRangingResults$1(Landroid/net/wifi/rtt/RangingResultCallback;Ljava/util/List;)V
    .locals 0
    .param p0, "callback"    # Landroid/net/wifi/rtt/RangingResultCallback;
    .param p1, "results"    # Ljava/util/List;

    .line 161
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingResultCallback;->onRangingResults(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onRangingFailure(I)V
    .locals 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/net/wifi/rtt/WifiRttManager$1;->clearCallingIdentity()J

    .line 154
    iget-object v0, p0, Landroid/net/wifi/rtt/WifiRttManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/rtt/WifiRttManager$1;->val$callback:Landroid/net/wifi/rtt/RangingResultCallback;

    new-instance v2, Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$j3tVizFtxt_z0tTXfTNSFM4Loi8;

    invoke-direct {v2, v1, p1}, Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$j3tVizFtxt_z0tTXfTNSFM4Loi8;-><init>(Landroid/net/wifi/rtt/RangingResultCallback;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public onRangingResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/RangingResult;>;"
    invoke-static {}, Landroid/net/wifi/rtt/WifiRttManager$1;->clearCallingIdentity()J

    .line 161
    iget-object v0, p0, Landroid/net/wifi/rtt/WifiRttManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/rtt/WifiRttManager$1;->val$callback:Landroid/net/wifi/rtt/RangingResultCallback;

    new-instance v2, Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$3uT7vOEOvW11feiFUB6LWvcBJEk;

    invoke-direct {v2, v1, p1}, Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$3uT7vOEOvW11feiFUB6LWvcBJEk;-><init>(Landroid/net/wifi/rtt/RangingResultCallback;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

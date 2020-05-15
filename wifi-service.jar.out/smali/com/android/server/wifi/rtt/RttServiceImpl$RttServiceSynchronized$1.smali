.class Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;
.super Landroid/net/wifi/aware/IWifiAwareMacAddressProvider$Stub;
.source "RttServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->processAwarePeerHandles(Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

.field final synthetic val$request:Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    .line 981
    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;->this$1:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    iput-object p2, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;->val$request:Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    invoke-direct {p0}, Landroid/net/wifi/aware/IWifiAwareMacAddressProvider$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$macAddress$0(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;Ljava/util/Map;)V
    .locals 1
    .param p1, "request"    # Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;
    .param p2, "peerIdToMacMap"    # Ljava/util/Map;

    .line 987
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;->this$1:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->access$1500(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;Ljava/util/Map;)V

    .line 988
    return-void
.end method


# virtual methods
.method public macAddress(Ljava/util/Map;)V
    .locals 3
    .param p1, "peerIdToMacMap"    # Ljava/util/Map;

    .line 985
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;->this$1:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    iget-object v0, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;->val$request:Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    new-instance v2, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$RttServiceSynchronized$1$X3EitWNHg38OS5b_JDpRvNEeXDk;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$RttServiceSynchronized$1$X3EitWNHg38OS5b_JDpRvNEeXDk;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 989
    return-void
.end method

.class Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "WifiAwareDataPathStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiAwareNetworkAgent"
.end annotation


# instance fields
.field private mAwareNetworkRequestInfo:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)V
    .locals 9
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "ni"    # Landroid/net/NetworkInfo;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "lp"    # Landroid/net/LinkProperties;
    .param p8, "score"    # I
    .param p9, "anri"    # Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    move-object v8, p0

    .line 871
    move-object v0, p1

    iput-object v0, v8, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 872
    move-object v0, v8

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    .line 874
    move-object v0, p5

    iput-object v0, v8, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 875
    move-object/from16 v1, p9

    iput-object v1, v8, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->mAwareNetworkRequestInfo:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    .line 876
    return-void
.end method


# virtual methods
.method reconfigureAgentAsDisconnected()V
    .locals 4

    .line 897
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 899
    return-void
.end method

.method protected unwanted()V
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->access$000(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->mAwareNetworkRequestInfo:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget v1, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    .line 885
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->mAwareNetworkRequestInfo:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    const/16 v1, 0x6a

    iput v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    .line 889
    return-void
.end method

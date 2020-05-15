.class Lcom/android/server/wifi/ScoredNetworkEvaluator$1;
.super Landroid/database/ContentObserver;
.source "ScoredNetworkEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ScoredNetworkEvaluator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Landroid/net/NetworkScoreManager;Lcom/android/server/wifi/WifiConfigManager;Landroid/util/LocalLog;Landroid/net/wifi/WifiNetworkScoreCache;Lcom/android/server/wifi/util/WifiPermissionsUtil;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$frameworkFacade:Lcom/android/server/wifi/FrameworkFacade;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScoredNetworkEvaluator;Landroid/os/Handler;Lcom/android/server/wifi/FrameworkFacade;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/ScoredNetworkEvaluator;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    iput-object p3, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;->val$frameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iput-object p4, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .line 72
    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;->val$frameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;->val$context:Landroid/content/Context;

    const-string v3, "network_recommendations_enabled"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v0, v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->access$002(Lcom/android/server/wifi/ScoredNetworkEvaluator;Z)Z

    .line 74
    return-void
.end method

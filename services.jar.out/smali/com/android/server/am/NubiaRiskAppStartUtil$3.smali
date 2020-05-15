.class Lcom/android/server/am/NubiaRiskAppStartUtil$3;
.super Ljava/lang/Object;
.source "NubiaRiskAppStartUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/NubiaRiskAppStartUtil;->setBlackListPkgNames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;


# direct methods
.method constructor <init>(Lcom/android/server/am/NubiaRiskAppStartUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/NubiaRiskAppStartUtil;

    .line 145
    iput-object p1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$3;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$3;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    iget-object v1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$3;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    invoke-static {v1}, Lcom/android/server/am/NubiaRiskAppStartUtil;->access$200(Lcom/android/server/am/NubiaRiskAppStartUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/NubiaRiskAppStartUtil;->access$300(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 150
    .local v0, "blackPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$3;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    invoke-static {v1}, Lcom/android/server/am/NubiaRiskAppStartUtil;->access$400(Lcom/android/server/am/NubiaRiskAppStartUtil;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$3;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    invoke-static {v2}, Lcom/android/server/am/NubiaRiskAppStartUtil;->access$400(Lcom/android/server/am/NubiaRiskAppStartUtil;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 152
    iget-object v2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$3;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    invoke-static {v2}, Lcom/android/server/am/NubiaRiskAppStartUtil;->access$400(Lcom/android/server/am/NubiaRiskAppStartUtil;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 153
    monitor-exit v1

    .line 156
    .end local v0    # "blackPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 153
    .restart local v0    # "blackPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    .end local v0    # "blackPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NubiaRiskAppStartUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBlackListPkgNames error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

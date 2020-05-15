.class Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;
.super Ljava/lang/Object;
.source "ResolverRankerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

.field final synthetic val$result:Landroid/service/resolver/IResolverRankerResult;

.field final synthetic val$targets:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    .line 150
    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    iput-object p2, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$targets:Ljava/util/List;

    iput-object p3, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$result:Landroid/service/resolver/IResolverRankerResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    iget-object v0, v0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->this$0:Landroid/service/resolver/ResolverRankerService;

    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$targets:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/service/resolver/ResolverRankerService;->onPredictSharingProbabilities(Ljava/util/List;)V

    .line 158
    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$targets:Ljava/util/List;

    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$result:Landroid/service/resolver/IResolverRankerResult;

    invoke-static {v0, v1}, Landroid/service/resolver/ResolverRankerService;->access$100(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ResolverRankerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPredictSharingProbabilities failed; send null results: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$result:Landroid/service/resolver/IResolverRankerResult;

    invoke-static {v1, v2}, Landroid/service/resolver/ResolverRankerService;->access$100(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

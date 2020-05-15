.class Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;
.super Landroid/service/chooser/IChooserTargetResult$Stub;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .line 1429
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-direct {p0}, Landroid/service/chooser/IChooserTargetResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1432
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->access$700(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1433
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->access$800(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1434
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyed ChooserTargetServiceConnection received result from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .line 1435
    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->access$900(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; ignoring..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1434
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    monitor-exit v0

    return-void

    .line 1438
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->access$800(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .line 1439
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->access$1000(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1438
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->filterServiceTargets(Ljava/lang/String;Ljava/util/List;)V

    .line 1440
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1441
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1442
    new-instance v2, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->access$1000(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-direct {v2, v3, p1, v4}, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;-><init>(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1444
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->access$800(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->access$200(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1445
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 1446
    return-void

    .line 1445
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

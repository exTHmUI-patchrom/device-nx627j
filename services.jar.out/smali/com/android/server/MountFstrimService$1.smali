.class Lcom/android/server/MountFstrimService$1;
.super Ljava/lang/Object;
.source "MountFstrimService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountFstrimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountFstrimService;


# direct methods
.method constructor <init>(Lcom/android/server/MountFstrimService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountFstrimService;

    .line 96
    iput-object p1, p0, Lcom/android/server/MountFstrimService$1;->this$0:Lcom/android/server/MountFstrimService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 99
    sget-boolean v0, Lcom/android/server/MountFstrimService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "MountFstrimService"

    const-string v1, "Got mount service completion callback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountFstrimService$1;->this$0:Lcom/android/server/MountFstrimService;

    invoke-static {v0}, Lcom/android/server/MountFstrimService;->access$000(Lcom/android/server/MountFstrimService;)Ljava/lang/Runnable;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountFstrimService$1;->this$0:Lcom/android/server/MountFstrimService;

    iget-boolean v1, v1, Lcom/android/server/MountFstrimService;->mStarted:Z

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/server/MountFstrimService$1;->this$0:Lcom/android/server/MountFstrimService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/MountFstrimService;->mStarted:Z

    .line 105
    iget-object v1, p0, Lcom/android/server/MountFstrimService$1;->this$0:Lcom/android/server/MountFstrimService;

    invoke-static {v1}, Lcom/android/server/MountFstrimService;->access$200(Lcom/android/server/MountFstrimService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountFstrimService$1;->this$0:Lcom/android/server/MountFstrimService;

    invoke-static {v2}, Lcom/android/server/MountFstrimService;->access$100(Lcom/android/server/MountFstrimService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    :cond_1
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

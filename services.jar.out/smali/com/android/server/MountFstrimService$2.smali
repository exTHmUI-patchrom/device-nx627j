.class Lcom/android/server/MountFstrimService$2;
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

    .line 110
    iput-object p1, p0, Lcom/android/server/MountFstrimService$2;->this$0:Lcom/android/server/MountFstrimService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    sget-boolean v0, Lcom/android/server/MountFstrimService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "MountFstrimService"

    const-string/jumbo v1, "mCancalTrim"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountFstrimService$2;->this$0:Lcom/android/server/MountFstrimService;

    invoke-static {v0}, Lcom/android/server/MountFstrimService;->access$100(Lcom/android/server/MountFstrimService;)Ljava/lang/Runnable;

    move-result-object v0

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountFstrimService$2;->this$0:Lcom/android/server/MountFstrimService;

    invoke-virtual {v1}, Lcom/android/server/MountFstrimService;->onStopJob()Z

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

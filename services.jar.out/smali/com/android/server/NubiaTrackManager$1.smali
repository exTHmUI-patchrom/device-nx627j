.class Lcom/android/server/NubiaTrackManager$1;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NubiaTrackManager;


# direct methods
.method constructor <init>(Lcom/android/server/NubiaTrackManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NubiaTrackManager;

    .line 37
    iput-object p1, p0, Lcom/android/server/NubiaTrackManager$1;->this$0:Lcom/android/server/NubiaTrackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 40
    sget-object v0, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NubiaTrackManager$1;->this$0:Lcom/android/server/NubiaTrackManager;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v1, v2}, Lcom/android/server/NubiaTrackManager;->access$102(Lcom/android/server/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 42
    iget-object v1, p0, Lcom/android/server/NubiaTrackManager$1;->this$0:Lcom/android/server/NubiaTrackManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/NubiaTrackManager;->access$202(Lcom/android/server/NubiaTrackManager;Z)Z

    .line 43
    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 49
    sget-object v0, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NubiaTrackManager$1;->this$0:Lcom/android/server/NubiaTrackManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/NubiaTrackManager;->access$102(Lcom/android/server/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 51
    iget-object v1, p0, Lcom/android/server/NubiaTrackManager$1;->this$0:Lcom/android/server/NubiaTrackManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/NubiaTrackManager;->access$202(Lcom/android/server/NubiaTrackManager;Z)Z

    .line 52
    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class Landroid/media/AudioManager$4;
.super Landroid/media/IAudioServerStateDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .line 5012
    iput-object p1, p0, Landroid/media/AudioManager$4;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioServerStateDispatcher$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$dispatchAudioServerStateChange$0(Landroid/media/AudioManager$AudioServerStateCallback;)V
    .locals 0
    .param p0, "cb"    # Landroid/media/AudioManager$AudioServerStateCallback;

    .line 5027
    invoke-virtual {p0}, Landroid/media/AudioManager$AudioServerStateCallback;->onAudioServerUp()V

    return-void
.end method

.method static synthetic lambda$dispatchAudioServerStateChange$1(Landroid/media/AudioManager$AudioServerStateCallback;)V
    .locals 0
    .param p0, "cb"    # Landroid/media/AudioManager$AudioServerStateCallback;

    .line 5029
    invoke-virtual {p0}, Landroid/media/AudioManager$AudioServerStateCallback;->onAudioServerDown()V

    return-void
.end method


# virtual methods
.method public dispatchAudioServerStateChange(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 5018
    iget-object v0, p0, Landroid/media/AudioManager$4;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->access$1300(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5019
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$4;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->access$1400(Landroid/media/AudioManager;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 5020
    .local v1, "exec":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/media/AudioManager$4;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->access$1500(Landroid/media/AudioManager;)Landroid/media/AudioManager$AudioServerStateCallback;

    move-result-object v2

    .line 5021
    .local v2, "cb":Landroid/media/AudioManager$AudioServerStateCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5023
    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_1

    .line 5026
    :cond_0
    if-eqz p1, :cond_1

    .line 5027
    new-instance v0, Landroid/media/-$$Lambda$AudioManager$4$Q85LmhgKDCoq1YI14giFabZrM7A;

    invoke-direct {v0, v2}, Landroid/media/-$$Lambda$AudioManager$4$Q85LmhgKDCoq1YI14giFabZrM7A;-><init>(Landroid/media/AudioManager$AudioServerStateCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5029
    :cond_1
    new-instance v0, Landroid/media/-$$Lambda$AudioManager$4$7k7uSoMGULBCueASQSmf9jAil7I;

    invoke-direct {v0, v2}, Landroid/media/-$$Lambda$AudioManager$4$7k7uSoMGULBCueASQSmf9jAil7I;-><init>(Landroid/media/AudioManager$AudioServerStateCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5031
    :goto_0
    return-void

    .line 5024
    :cond_2
    :goto_1
    return-void

    .line 5021
    .end local v1    # "exec":Ljava/util/concurrent/Executor;
    .end local v2    # "cb":Landroid/media/AudioManager$AudioServerStateCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

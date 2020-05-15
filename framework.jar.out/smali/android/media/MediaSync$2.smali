.class Landroid/media/MediaSync$2;
.super Ljava/lang/Object;
.source "MediaSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaSync;

.field final synthetic val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

.field final synthetic val$sync:Landroid/media/MediaSync;


# direct methods
.method constructor <init>(Landroid/media/MediaSync;Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaSync;

    .line 583
    iput-object p1, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    iput-object p2, p0, Landroid/media/MediaSync$2;->val$sync:Landroid/media/MediaSync;

    iput-object p3, p0, Landroid/media/MediaSync$2;->val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 586
    iget-object v0, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    invoke-static {v0}, Landroid/media/MediaSync;->access$800(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 587
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->access$900(Landroid/media/MediaSync;)Landroid/media/MediaSync$Callback;

    move-result-object v1

    .line 588
    .local v1, "callback":Landroid/media/MediaSync$Callback;
    iget-object v2, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    invoke-static {v2}, Landroid/media/MediaSync;->access$1000(Landroid/media/MediaSync;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    .line 589
    invoke-static {v2}, Landroid/media/MediaSync;->access$1000(Landroid/media/MediaSync;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    .line 590
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    if-eqz v1, :cond_1

    .line 596
    iget-object v0, p0, Landroid/media/MediaSync$2;->val$sync:Landroid/media/MediaSync;

    iget-object v2, p0, Landroid/media/MediaSync$2;->val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

    iget-object v2, v2, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/media/MediaSync$2;->val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

    iget v3, v3, Landroid/media/MediaSync$AudioBuffer;->mBufferIndex:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaSync$Callback;->onAudioBufferConsumed(Landroid/media/MediaSync;Ljava/nio/ByteBuffer;I)V

    .line 599
    :cond_1
    return-void

    .line 592
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 594
    .end local v1    # "callback":Landroid/media/MediaSync$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

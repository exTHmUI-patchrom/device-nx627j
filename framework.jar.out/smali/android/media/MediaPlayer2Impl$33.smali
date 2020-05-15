.class Landroid/media/MediaPlayer2Impl$33;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->restoreDrmKeys([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$keySetId:[B


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZ[B)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer2Impl;
    .param p2, "mediaCallType"    # I
    .param p3, "needToWaitForEventToComplete"    # Z

    .line 3714
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$33;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-object p4, p0, Landroid/media/MediaPlayer2Impl$33;->val$keySetId:[B

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    .line 3717
    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreDrmKeys: keySetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$33;->val$keySetId:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$33;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$4800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3721
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$33;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$5700(Landroid/media/MediaPlayer2Impl;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3728
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$33;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$6100(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaDrm;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$33;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$6000(Landroid/media/MediaPlayer2Impl;)[B

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$33;->val$keySetId:[B

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaDrm;->restoreKeys([B[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3732
    nop

    .line 3734
    :try_start_2
    monitor-exit v0

    .line 3735
    return-void

    .line 3729
    :catch_0
    move-exception v1

    .line 3730
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreKeys Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    throw v1

    .line 3722
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "MediaPlayer2Impl"

    const-string/jumbo v2, "restoreDrmKeys NoDrmSchemeException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    new-instance v1, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;

    const-string/jumbo v2, "restoreDrmKeys: Has to set a DRM scheme first."

    invoke-direct {v1, v2}, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3734
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

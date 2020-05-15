.class abstract Landroid/media/MediaPlayer2Impl$Task;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Task"
.end annotation


# instance fields
.field private mDSD:Landroid/media/DataSourceDesc;

.field private final mMediaCallType:I

.field private final mNeedToWaitForEventToComplete:Z

.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer2Impl;IZ)V
    .locals 0
    .param p2, "mediaCallType"    # I
    .param p3, "needToWaitForEventToComplete"    # Z

    .line 4741
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$Task;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4742
    iput p2, p0, Landroid/media/MediaPlayer2Impl$Task;->mMediaCallType:I

    .line 4743
    iput-boolean p3, p0, Landroid/media/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    .line 4744
    return-void
.end method

.method static synthetic access$4300(Landroid/media/MediaPlayer2Impl$Task;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer2Impl$Task;

    .line 4736
    iget v0, p0, Landroid/media/MediaPlayer2Impl$Task;->mMediaCallType:I

    return v0
.end method

.method static synthetic access$4400(Landroid/media/MediaPlayer2Impl$Task;)Landroid/media/DataSourceDesc;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer2Impl$Task;

    .line 4736
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$Task;->mDSD:Landroid/media/DataSourceDesc;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/media/MediaPlayer2Impl$Task;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer2Impl$Task;

    .line 4736
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    return v0
.end method

.method static synthetic access$4600(Landroid/media/MediaPlayer2Impl$Task;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer2Impl$Task;
    .param p1, "x1"    # I

    .line 4736
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    return-void
.end method

.method public static synthetic lambda$sendCompleteNotification$0(Landroid/media/MediaPlayer2Impl$Task;Landroid/util/Pair;I)V
    .locals 4
    .param p1, "cb"    # Landroid/util/Pair;
    .param p2, "status"    # I

    .line 4790
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$Task;->this$0:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$Task;->mDSD:Landroid/media/DataSourceDesc;

    iget v3, p0, Landroid/media/MediaPlayer2Impl$Task;->mMediaCallType:I

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onCallCompleted(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method private sendCompleteNotification(I)V
    .locals 5
    .param p1, "status"    # I

    .line 4785
    iget v0, p0, Landroid/media/MediaPlayer2Impl$Task;->mMediaCallType:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    .line 4786
    return-void

    .line 4788
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$Task;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4789
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$Task;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 4790
    .local v2, "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/-$$Lambda$MediaPlayer2Impl$Task$FRvdJ9PUPHSq0Jucj91aL6zYEJY;

    invoke-direct {v4, p0, v2, p1}, Landroid/media/-$$Lambda$MediaPlayer2Impl$Task$FRvdJ9PUPHSq0Jucj91aL6zYEJY;-><init>(Landroid/media/MediaPlayer2Impl$Task;Landroid/util/Pair;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4792
    .end local v2    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    goto :goto_0

    .line 4793
    :cond_1
    monitor-exit v0

    .line 4794
    return-void

    .line 4793
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method abstract process()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation
.end method

.method public run()V
    .locals 4

    .line 4750
    const/4 v0, 0x0

    .line 4752
    .local v0, "status":I
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl$Task;->process()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/MediaPlayer2$NoDrmSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4765
    :goto_0
    goto :goto_1

    .line 4763
    :catch_0
    move-exception v1

    .line 4764
    .local v1, "e":Ljava/lang/Exception;
    const/high16 v0, -0x80000000

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 4761
    :catch_1
    move-exception v1

    .line 4762
    .local v1, "e":Landroid/media/MediaPlayer2$NoDrmSchemeException;
    const/4 v0, 0x5

    .end local v1    # "e":Landroid/media/MediaPlayer2$NoDrmSchemeException;
    goto :goto_0

    .line 4759
    :catch_2
    move-exception v1

    .line 4760
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x4

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 4757
    :catch_3
    move-exception v1

    .line 4758
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v0, 0x3

    .end local v1    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 4755
    :catch_4
    move-exception v1

    .line 4756
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x2

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 4753
    :catch_5
    move-exception v1

    .line 4754
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/4 v0, 0x1

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 4766
    :goto_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$Task;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4767
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$Task;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl$Task;->mDSD:Landroid/media/DataSourceDesc;

    .line 4768
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4771
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 4773
    :cond_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    .line 4775
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$Task;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$4100(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4776
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$Task;->this$0:Landroid/media/MediaPlayer2Impl;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/media/MediaPlayer2Impl;->access$4202(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl$Task;)Landroid/media/MediaPlayer2Impl$Task;

    .line 4777
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$Task;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$4700(Landroid/media/MediaPlayer2Impl;)V

    .line 4778
    monitor-exit v2

    .line 4780
    :cond_1
    return-void

    .line 4778
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4768
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

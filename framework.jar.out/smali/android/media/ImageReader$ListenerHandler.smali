.class final Landroid/media/ImageReader$ListenerHandler;
.super Landroid/os/Handler;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 782
    iput-object p1, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    .line 783
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 784
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 789
    iget-object v0, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-static {v0}, Landroid/media/ImageReader;->access$300(Landroid/media/ImageReader;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 790
    :try_start_0
    iget-object v1, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-static {v1}, Landroid/media/ImageReader;->access$400(Landroid/media/ImageReader;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v1

    .line 791
    .local v1, "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 795
    const/4 v0, 0x0

    .line 796
    .local v0, "isReaderValid":Z
    iget-object v2, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-static {v2}, Landroid/media/ImageReader;->access$500(Landroid/media/ImageReader;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 797
    :try_start_1
    iget-object v3, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-static {v3}, Landroid/media/ImageReader;->access$600(Landroid/media/ImageReader;)Z

    move-result v3

    move v0, v3

    .line 798
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 800
    iget-object v2, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-interface {v1, v2}, Landroid/media/ImageReader$OnImageAvailableListener;->onImageAvailable(Landroid/media/ImageReader;)V

    .line 802
    :cond_0
    return-void

    .line 798
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 791
    .end local v0    # "isReaderValid":Z
    .end local v1    # "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

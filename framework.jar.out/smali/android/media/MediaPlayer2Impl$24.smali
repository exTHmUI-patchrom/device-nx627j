.class Landroid/media/MediaPlayer2Impl$24;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->setSubtitleAnchor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;Landroid/os/HandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer2Impl;

    .line 2121
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$24;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/media/MediaPlayer2Impl$24;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2124
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 2125
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$24;->this$0:Landroid/media/MediaPlayer2Impl;

    new-instance v2, Landroid/media/SubtitleController;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$24;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$24;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-direct {v2, v0, v3, v4}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    invoke-static {v1, v2}, Landroid/media/MediaPlayer2Impl;->access$3202(Landroid/media/MediaPlayer2Impl;Landroid/media/SubtitleController;)Landroid/media/SubtitleController;

    .line 2126
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$24;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$3200(Landroid/media/MediaPlayer2Impl;)Landroid/media/SubtitleController;

    move-result-object v1

    new-instance v2, Landroid/media/MediaPlayer2Impl$24$1;

    invoke-direct {v2, p0}, Landroid/media/MediaPlayer2Impl$24$1;-><init>(Landroid/media/MediaPlayer2Impl$24;)V

    invoke-virtual {v1, v2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 2136
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$24;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 2137
    return-void
.end method

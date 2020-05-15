.class Landroid/media/MediaPlayer2Impl$9;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->loopCurrent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$loop:Z


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZZ)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer2Impl;
    .param p2, "mediaCallType"    # I
    .param p3, "needToWaitForEventToComplete"    # Z

    .line 491
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$9;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-boolean p4, p0, Landroid/media/MediaPlayer2Impl$9;->val$loop:Z

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 2

    .line 495
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$9;->this$0:Landroid/media/MediaPlayer2Impl;

    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl$9;->val$loop:Z

    invoke-static {v0, v1}, Landroid/media/MediaPlayer2Impl;->access$1400(Landroid/media/MediaPlayer2Impl;Z)V

    .line 496
    return-void
.end method

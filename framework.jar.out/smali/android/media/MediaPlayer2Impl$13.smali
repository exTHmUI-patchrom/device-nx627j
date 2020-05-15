.class Landroid/media/MediaPlayer2Impl$13;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->setSurface(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZLandroid/view/Surface;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer2Impl;
    .param p2, "mediaCallType"    # I
    .param p3, "needToWaitForEventToComplete"    # Z

    .line 728
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$13;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-object p4, p0, Landroid/media/MediaPlayer2Impl$13;->val$surface:Landroid/view/Surface;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 2

    .line 731
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$13;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$2000(Landroid/media/MediaPlayer2Impl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$13;->val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 732
    const-string v0, "MediaPlayer2Impl"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$13;->this$0:Landroid/media/MediaPlayer2Impl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/MediaPlayer2Impl;->access$2102(Landroid/media/MediaPlayer2Impl;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 735
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$13;->this$0:Landroid/media/MediaPlayer2Impl;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$13;->val$surface:Landroid/view/Surface;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer2Impl;->access$2200(Landroid/media/MediaPlayer2Impl;Landroid/view/Surface;)V

    .line 736
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$13;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$2300(Landroid/media/MediaPlayer2Impl;)V

    .line 737
    return-void
.end method

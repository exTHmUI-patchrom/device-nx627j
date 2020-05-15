.class Landroid/media/MediaPlayer2Impl$16;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->playNextDataSource_l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$msg2:Landroid/os/Message;

.field final synthetic val$srcId:J


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;Landroid/os/Message;J)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer2Impl;

    .line 1054
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$16;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/media/MediaPlayer2Impl$16;->val$msg2:Landroid/os/Message;

    iput-wide p3, p0, Landroid/media/MediaPlayer2Impl$16;->val$srcId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1057
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$16;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$2500(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$16;->val$msg2:Landroid/os/Message;

    iget-wide v2, p0, Landroid/media/MediaPlayer2Impl$16;->val$srcId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer2Impl$EventHandler;->handleMessage(Landroid/os/Message;J)V

    .line 1058
    return-void
.end method

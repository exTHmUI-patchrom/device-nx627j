.class Landroid/media/MediaPlayer2Impl$2;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZ)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer2Impl;
    .param p2, "mediaCallType"    # I
    .param p3, "needToWaitForEventToComplete"    # Z

    .line 239
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$2;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 1

    .line 242
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$2;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroid/media/MediaPlayer2Impl;->_prepare()V

    .line 243
    return-void
.end method

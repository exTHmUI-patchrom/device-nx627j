.class Landroid/media/MediaPlayer2Impl$11;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->setPlayerVolume(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$volume:F


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZF)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer2Impl;
    .param p2, "mediaCallType"    # I
    .param p3, "needToWaitForEventToComplete"    # Z

    .line 553
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$11;->this$0:Landroid/media/MediaPlayer2Impl;

    iput p4, p0, Landroid/media/MediaPlayer2Impl$11;->val$volume:F

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 3

    .line 556
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$11;->this$0:Landroid/media/MediaPlayer2Impl;

    iget v1, p0, Landroid/media/MediaPlayer2Impl$11;->val$volume:F

    invoke-static {v0, v1}, Landroid/media/MediaPlayer2Impl;->access$1602(Landroid/media/MediaPlayer2Impl;F)F

    .line 557
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$11;->this$0:Landroid/media/MediaPlayer2Impl;

    iget v1, p0, Landroid/media/MediaPlayer2Impl$11;->val$volume:F

    iget v2, p0, Landroid/media/MediaPlayer2Impl$11;->val$volume:F

    invoke-static {v0, v1, v2}, Landroid/media/MediaPlayer2Impl;->access$1700(Landroid/media/MediaPlayer2Impl;FF)V

    .line 558
    return-void
.end method

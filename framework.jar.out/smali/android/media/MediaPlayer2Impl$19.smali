.class Landroid/media/MediaPlayer2Impl$19;
.super Landroid/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->setSyncParams(Landroid/media/SyncParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field final synthetic val$params:Landroid/media/SyncParams;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/SyncParams;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer2Impl;
    .param p2, "mediaCallType"    # I
    .param p3, "needToWaitForEventToComplete"    # Z

    .line 1492
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$19;->this$0:Landroid/media/MediaPlayer2Impl;

    iput-object p4, p0, Landroid/media/MediaPlayer2Impl$19;->val$params:Landroid/media/SyncParams;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$Task;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 2

    .line 1495
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$19;->val$params:Landroid/media/SyncParams;

    const-string/jumbo v1, "the SyncParams cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$19;->this$0:Landroid/media/MediaPlayer2Impl;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$19;->val$params:Landroid/media/SyncParams;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer2Impl;->access$2700(Landroid/media/MediaPlayer2Impl;Landroid/media/SyncParams;)V

    .line 1497
    return-void
.end method

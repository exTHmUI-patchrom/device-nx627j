.class Landroid/media/browse/MediaBrowser$4;
.super Landroid/os/ResultReceiver;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/os/Handler;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 451
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$4;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iput-object p4, p0, Landroid/media/browse/MediaBrowser$4;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 454
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$4;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    return-void

    .line 457
    :cond_0
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    const-string/jumbo v0, "media_item"

    .line 458
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 462
    :cond_1
    const-string/jumbo v0, "media_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 463
    .local v0, "item":Landroid/os/Parcelable;
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/media/browse/MediaBrowser$MediaItem;

    if-nez v1, :cond_2

    .line 464
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$4;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    .line 465
    return-void

    .line 467
    :cond_2
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    move-object v2, v0

    check-cast v2, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {v1, v2}, Landroid/media/browse/MediaBrowser$ItemCallback;->onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V

    .line 468
    return-void

    .line 459
    .end local v0    # "item":Landroid/os/Parcelable;
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$4;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.class Landroid/service/media/MediaBrowserService$4;
.super Landroid/service/media/MediaBrowserService$Result;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService;->performLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/media/MediaBrowserService$Result<",
        "Landroid/media/browse/MediaBrowser$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;

.field final synthetic val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;
    .param p2, "debug"    # Ljava/lang/Object;

    .line 737
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$4;->this$0:Landroid/service/media/MediaBrowserService;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$4;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iput-object p4, p0, Landroid/service/media/MediaBrowserService$4;->val$itemId:Ljava/lang/String;

    iput-object p5, p0, Landroid/service/media/MediaBrowserService$4;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService$Result;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onResultSent(Landroid/media/browse/MediaBrowser$MediaItem;I)V
    .locals 3
    .param p1, "item"    # Landroid/media/browse/MediaBrowser$MediaItem;
    .param p2, "flag"    # I

    .line 740
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$4;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->access$000(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$4;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$4;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    if-eq v0, v1, :cond_0

    .line 745
    return-void

    .line 747
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$4;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 749
    return-void

    .line 751
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 752
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "media_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 753
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$4;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 754
    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
    .locals 0

    .line 737
    check-cast p1, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService$4;->onResultSent(Landroid/media/browse/MediaBrowser$MediaItem;I)V

    return-void
.end method

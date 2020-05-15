.class Landroid/service/media/MediaBrowserService$3;
.super Landroid/service/media/MediaBrowserService$Result;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService;->performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/media/MediaBrowserService$Result<",
        "Ljava/util/List<",
        "Landroid/media/browse/MediaBrowser$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;

.field final synthetic val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;
    .param p2, "debug"    # Ljava/lang/Object;

    .line 673
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$3;->this$0:Landroid/service/media/MediaBrowserService;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iput-object p4, p0, Landroid/service/media/MediaBrowserService$3;->val$parentId:Ljava/lang/String;

    iput-object p5, p0, Landroid/service/media/MediaBrowserService$3;->val$options:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService$Result;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
    .locals 0

    .line 673
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService$3;->onResultSent(Ljava/util/List;I)V

    return-void
.end method

.method onResultSent(Ljava/util/List;I)V
    .locals 6
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;I)V"
        }
    .end annotation

    .line 676
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$3;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->access$000(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    if-eq v0, v1, :cond_0

    .line 681
    return-void

    .line 685
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$3;->this$0:Landroid/service/media/MediaBrowserService;

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$3;->val$options:Landroid/os/Bundle;

    invoke-static {v0, p1, v1}, Landroid/service/media/MediaBrowserService;->access$1000(Landroid/service/media/MediaBrowserService;Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 688
    .local v0, "filteredList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 690
    .local v1, "pls":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    :goto_1
    :try_start_0
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v3, p0, Landroid/service/media/MediaBrowserService$3;->val$parentId:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$3;->val$options:Landroid/os/Bundle;

    invoke-interface {v2, v3, v1, v4}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onLoadChildrenWithOptions(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    goto :goto_2

    .line 691
    :catch_0
    move-exception v2

    .line 693
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MediaBrowserService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onLoadChildren() failed for id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/service/media/MediaBrowserService$3;->val$parentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/service/media/MediaBrowserService$3;->val$connection:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v5, v5, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.class Landroid/media/browse/MediaBrowser$6;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->onServiceConnected(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$root:Ljava/lang/String;

.field final synthetic val$session:Landroid/media/session/MediaSession$Token;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;

    .line 580
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$6;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$6;->val$root:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/browse/MediaBrowser$6;->val$session:Landroid/media/session/MediaSession$Token;

    iput-object p5, p0, Landroid/media/browse/MediaBrowser$6;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 585
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    const-string/jumbo v2, "onConnect"

    invoke-static {v0, v1, v2}, Landroid/media/browse/MediaBrowser;->access$900(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$000(Landroid/media/browse/MediaBrowser;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 590
    const-string v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnect from service while mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    .line 591
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->access$000(Landroid/media/browse/MediaBrowser;)I

    move-result v2

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->access$1000(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "... ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->val$root:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$1102(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->val$session:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$1202(Landroid/media/browse/MediaBrowser;Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaSession$Token;

    .line 596
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$6;->val$extra:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$1302(Landroid/media/browse/MediaBrowser;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 597
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$002(Landroid/media/browse/MediaBrowser;I)I

    .line 603
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$800(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnected()V

    .line 607
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$1400(Landroid/media/browse/MediaBrowser;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 608
    .local v1, "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/browse/MediaBrowser$Subscription;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 609
    .local v2, "id":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/browse/MediaBrowser$Subscription;

    .line 610
    .local v3, "sub":Landroid/media/browse/MediaBrowser$Subscription;
    invoke-virtual {v3}, Landroid/media/browse/MediaBrowser$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v4

    .line 611
    .local v4, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$SubscriptionCallback;>;"
    invoke-virtual {v3}, Landroid/media/browse/MediaBrowser$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v5

    .line 612
    .local v5, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v6, 0x0

    .line 612
    .local v6, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 614
    :try_start_0
    iget-object v7, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v7}, Landroid/media/browse/MediaBrowser;->access$100(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    move-result-object v7

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    iget-object v8, v8, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->mToken:Landroid/os/Binder;

    .line 615
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    iget-object v10, p0, Landroid/media/browse/MediaBrowser$6;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v10}, Landroid/media/browse/MediaBrowser;->access$200(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v10

    .line 614
    invoke-interface {v7, v2, v8, v9, v10}, Landroid/service/media/IMediaBrowserService;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    goto :goto_2

    .line 616
    :catch_0
    move-exception v7

    .line 619
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v8, "MediaBrowser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v7    # "ex":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 623
    .end local v1    # "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/browse/MediaBrowser$Subscription;>;"
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "sub":Landroid/media/browse/MediaBrowser$Subscription;
    .end local v4    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$SubscriptionCallback;>;"
    .end local v5    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v6    # "i":I
    :cond_2
    goto :goto_0

    .line 624
    :cond_3
    return-void
.end method

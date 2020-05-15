.class public Landroid/media/MediaBrowser2;
.super Landroid/media/MediaController2;
.source "MediaBrowser2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaBrowser2$BrowserCallback;
    }
.end annotation


# instance fields
.field private final mProvider:Landroid/media/update/MediaBrowser2Provider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaBrowser2$BrowserCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/media/SessionToken2;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/media/MediaBrowser2$BrowserCallback;

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaController2;-><init>(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)V

    .line 140
    invoke-virtual {p0}, Landroid/media/MediaBrowser2;->getProvider()Landroid/media/update/MediaController2Provider;

    move-result-object v0

    check-cast v0, Landroid/media/update/MediaBrowser2Provider;

    iput-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    .line 141
    return-void
.end method


# virtual methods
.method createProvider(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/update/MediaBrowser2Provider;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/media/SessionToken2;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/media/MediaController2$ControllerCallback;

    .line 146
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    move-object v5, p4

    check-cast v5, Landroid/media/MediaBrowser2$BrowserCallback;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/media/update/StaticProvider;->createMediaBrowser2(Landroid/content/Context;Landroid/media/MediaBrowser2;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaBrowser2$BrowserCallback;)Landroid/media/update/MediaBrowser2Provider;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createProvider(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/update/MediaController2Provider;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaBrowser2;->createProvider(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/update/MediaBrowser2Provider;

    move-result-object p1

    return-object p1
.end method

.method public getChildren(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "pageSize"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 198
    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/update/MediaBrowser2Provider;->getChildren_impl(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 199
    return-void
.end method

.method public getItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaBrowser2Provider;->getItem_impl(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public getLibraryRoot(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "rootHints"    # Landroid/os/Bundle;

    .line 158
    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaBrowser2Provider;->getLibraryRoot_impl(Landroid/os/Bundle;)V

    .line 159
    return-void
.end method

.method public getSearchResult(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "pageSize"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 236
    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/update/MediaBrowser2Provider;->getSearchResult_impl(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 237
    return-void
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 221
    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaBrowser2Provider;->search_impl(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 222
    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 171
    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaBrowser2Provider;->subscribe_impl(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 172
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Landroid/media/MediaBrowser2;->mProvider:Landroid/media/update/MediaBrowser2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaBrowser2Provider;->unsubscribe_impl(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.class public final Landroid/media/MediaLibraryService2$MediaLibrarySession;
.super Landroid/media/MediaSession2;
.source "MediaLibraryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaLibraryService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaLibrarySession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;,
        Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;
    }
.end annotation


# instance fields
.field private final mProvider:Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;


# direct methods
.method public constructor <init>(Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;

    .line 258
    invoke-direct {p0, p1}, Landroid/media/MediaSession2;-><init>(Landroid/media/update/MediaSession2Provider;)V

    .line 259
    iput-object p1, p0, Landroid/media/MediaLibraryService2$MediaLibrarySession;->mProvider:Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;

    .line 260
    return-void
.end method


# virtual methods
.method public notifyChildrenChanged(Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 277
    iget-object v0, p0, Landroid/media/MediaLibraryService2$MediaLibrarySession;->mProvider:Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;->notifyChildrenChanged_impl(Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 278
    return-void
.end method

.method public notifyChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "itemCount"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 292
    iget-object v0, p0, Landroid/media/MediaLibraryService2$MediaLibrarySession;->mProvider:Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;->notifyChildrenChanged_impl(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 293
    return-void
.end method

.method public notifySearchResultChanged(Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 305
    iget-object v0, p0, Landroid/media/MediaLibraryService2$MediaLibrarySession;->mProvider:Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;->notifySearchResultChanged_impl(Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 306
    return-void
.end method

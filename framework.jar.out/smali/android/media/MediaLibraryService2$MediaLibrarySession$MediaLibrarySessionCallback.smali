.class public Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;
.super Landroid/media/MediaSession2$SessionCallback;
.source "MediaLibraryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaLibraryService2$MediaLibrarySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaLibrarySessionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroid/media/MediaSession2$SessionCallback;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public onGetChildren(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .param p1, "session"    # Landroid/media/MediaLibraryService2$MediaLibrarySession;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "pageSize"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaLibraryService2$MediaLibrarySession;",
            "Landroid/media/MediaSession2$ControllerInfo;",
            "Ljava/lang/String;",
            "II",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;"
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetItem(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;)Landroid/media/MediaItem2;
    .locals 1
    .param p1, "session"    # Landroid/media/MediaLibraryService2$MediaLibrarySession;
    .param p2, "controllerInfo"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "mediaId"    # Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetLibraryRoot(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Landroid/os/Bundle;)Landroid/media/MediaLibraryService2$LibraryRoot;
    .locals 1
    .param p1, "session"    # Landroid/media/MediaLibraryService2$MediaLibrarySession;
    .param p2, "controllerInfo"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "rootHints"    # Landroid/os/Bundle;

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetSearchResult(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .param p1, "session"    # Landroid/media/MediaLibraryService2$MediaLibrarySession;
    .param p2, "controllerInfo"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "pageSize"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaLibraryService2$MediaLibrarySession;",
            "Landroid/media/MediaSession2$ControllerInfo;",
            "Ljava/lang/String;",
            "II",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;"
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSearch(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaLibraryService2$MediaLibrarySession;
    .param p2, "controllerInfo"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 175
    return-void
.end method

.method public onSubscribe(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaLibraryService2$MediaLibrarySession;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 151
    return-void
.end method

.method public onUnsubscribe(Landroid/media/MediaLibraryService2$MediaLibrarySession;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaLibraryService2$MediaLibrarySession;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "parentId"    # Ljava/lang/String;

    .line 162
    return-void
.end method

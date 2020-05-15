.class public final Landroid/media/MediaLibraryService2$LibraryRoot;
.super Ljava/lang/Object;
.source "MediaLibraryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaLibraryService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryRoot"
.end annotation


# static fields
.field public static final EXTRA_OFFLINE:Ljava/lang/String; = "android.media.extra.OFFLINE"

.field public static final EXTRA_RECENT:Ljava/lang/String; = "android.media.extra.RECENT"

.field public static final EXTRA_SUGGESTED:Ljava/lang/String; = "android.media.extra.SUGGESTED"


# instance fields
.field private final mProvider:Landroid/media/update/MediaLibraryService2Provider$LibraryRootProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/media/update/StaticProvider;->createMediaLibraryService2LibraryRoot(Landroid/media/MediaLibraryService2$LibraryRoot;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/update/MediaLibraryService2Provider$LibraryRootProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaLibraryService2$LibraryRoot;->mProvider:Landroid/media/update/MediaLibraryService2Provider$LibraryRootProvider;

    .line 406
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 419
    iget-object v0, p0, Landroid/media/MediaLibraryService2$LibraryRoot;->mProvider:Landroid/media/update/MediaLibraryService2Provider$LibraryRootProvider;

    invoke-interface {v0}, Landroid/media/update/MediaLibraryService2Provider$LibraryRootProvider;->getExtras_impl()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getRootId()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Landroid/media/MediaLibraryService2$LibraryRoot;->mProvider:Landroid/media/update/MediaLibraryService2Provider$LibraryRootProvider;

    invoke-interface {v0}, Landroid/media/update/MediaLibraryService2Provider$LibraryRootProvider;->getRootId_impl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

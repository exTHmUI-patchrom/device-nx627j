.class public abstract Landroid/media/MediaLibraryService2;
.super Landroid/media/MediaSessionService2;
.source "MediaLibraryService2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaLibraryService2$LibraryRoot;,
        Landroid/media/MediaLibraryService2$MediaLibrarySession;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaLibraryService2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroid/media/MediaSessionService2;-><init>()V

    return-void
.end method


# virtual methods
.method createProvider()Landroid/media/update/MediaSessionService2Provider;
    .locals 1

    .line 311
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->createMediaLibraryService2(Landroid/media/MediaLibraryService2;)Landroid/media/update/MediaSessionService2Provider;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreateSession(Ljava/lang/String;)Landroid/media/MediaLibraryService2$MediaLibrarySession;
.end method

.method public bridge synthetic onCreateSession(Ljava/lang/String;)Landroid/media/MediaSession2;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Landroid/media/MediaLibraryService2;->onCreateSession(Ljava/lang/String;)Landroid/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object p1

    return-object p1
.end method

.class public interface abstract Landroid/media/update/MediaLibraryService2Provider$MediaLibrarySessionProvider;
.super Ljava/lang/Object;
.source "MediaLibraryService2Provider.java"

# interfaces
.implements Landroid/media/update/MediaSession2Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/update/MediaLibraryService2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaLibrarySessionProvider"
.end annotation


# virtual methods
.method public abstract notifyChildrenChanged_impl(Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract notifyChildrenChanged_impl(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract notifySearchResultChanged_impl(Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

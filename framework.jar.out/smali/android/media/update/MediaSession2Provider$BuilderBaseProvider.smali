.class public interface abstract Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;
.super Ljava/lang/Object;
.source "MediaSession2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/update/MediaSession2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BuilderBaseProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/media/MediaSession2;",
        "C:",
        "Landroid/media/MediaSession2$SessionCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract build_impl()Landroid/media/MediaSession2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract setId_impl(Ljava/lang/String;)V
.end method

.method public abstract setPlayer_impl(Landroid/media/MediaPlayerBase;)V
.end method

.method public abstract setPlaylistAgent_impl(Landroid/media/MediaPlaylistAgent;)V
.end method

.method public abstract setSessionActivity_impl(Landroid/app/PendingIntent;)V
.end method

.method public abstract setSessionCallback_impl(Ljava/util/concurrent/Executor;Landroid/media/MediaSession2$SessionCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TC;)V"
        }
    .end annotation
.end method

.method public abstract setVolumeProvider_impl(Landroid/media/VolumeProvider2;)V
.end method

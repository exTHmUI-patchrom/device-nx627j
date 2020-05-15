.class public interface abstract Landroid/media/update/MediaSessionService2Provider;
.super Ljava/lang/Object;
.source "MediaSessionService2Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/update/MediaSessionService2Provider$MediaNotificationProvider;
    }
.end annotation


# virtual methods
.method public abstract getSession_impl()Landroid/media/MediaSession2;
.end method

.method public abstract onBind_impl(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract onCreate_impl()V
.end method

.method public abstract onUpdateNotification_impl()Landroid/media/MediaSessionService2$MediaNotification;
.end method

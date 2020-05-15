.class public interface abstract Landroid/media/update/MediaSession2Provider$CommandButtonProvider;
.super Ljava/lang/Object;
.source "MediaSession2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/update/MediaSession2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommandButtonProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;
    }
.end annotation


# virtual methods
.method public abstract getCommand_impl()Landroid/media/SessionCommand2;
.end method

.method public abstract getDisplayName_impl()Ljava/lang/String;
.end method

.method public abstract getExtras_impl()Landroid/os/Bundle;
.end method

.method public abstract getIconResId_impl()I
.end method

.method public abstract isEnabled_impl()Z
.end method

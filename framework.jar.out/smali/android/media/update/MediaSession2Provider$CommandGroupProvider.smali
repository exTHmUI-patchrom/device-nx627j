.class public interface abstract Landroid/media/update/MediaSession2Provider$CommandGroupProvider;
.super Ljava/lang/Object;
.source "MediaSession2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/update/MediaSession2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommandGroupProvider"
.end annotation


# virtual methods
.method public abstract addAllPredefinedCommands_impl()V
.end method

.method public abstract addCommand_impl(Landroid/media/SessionCommand2;)V
.end method

.method public abstract getCommands_impl()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/media/SessionCommand2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCommand_impl(I)Z
.end method

.method public abstract hasCommand_impl(Landroid/media/SessionCommand2;)Z
.end method

.method public abstract removeCommand_impl(Landroid/media/SessionCommand2;)V
.end method

.method public abstract toBundle_impl()Landroid/os/Bundle;
.end method

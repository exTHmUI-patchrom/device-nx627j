.class public interface abstract Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSessionTokensChangedListener"
.end annotation


# virtual methods
.method public abstract onSessionTokensChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/SessionToken2;",
            ">;)V"
        }
    .end annotation
.end method

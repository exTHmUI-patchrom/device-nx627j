.class public abstract Landroid/app/SynchronousUserSwitchObserver;
.super Landroid/app/UserSwitchObserver;
.source "SynchronousUserSwitchObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onUserSwitching(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 2
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/SynchronousUserSwitchObserver;->onUserSwitching(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz p2, :cond_0

    .line 39
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 42
    :cond_0
    return-void

    .line 38
    :catchall_0
    move-exception v1

    if-eqz p2, :cond_1

    .line 39
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_1
    throw v1
.end method

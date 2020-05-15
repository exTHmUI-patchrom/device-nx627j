.class public interface abstract Lnubia/os/presssensor/IPressSensorManager;
.super Ljava/lang/Object;
.source "IPressSensorManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/presssensor/IPressSensorManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerPressListener(Lnubia/os/presssensor/IPressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerRankListener(Lnubia/os/presssensor/IRankListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPressGestureCtrl(Lnubia/os/presssensor/IPressGestureCtrl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterPressListener(Lnubia/os/presssensor/IPressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterRankListener(Lnubia/os/presssensor/IRankListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

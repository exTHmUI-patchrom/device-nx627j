.class public interface abstract Landroid/net/wifi/IInterfaceEventCallback;
.super Ljava/lang/Object;
.source "IInterfaceEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IInterfaceEventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract OnApInterfaceReady(Landroid/net/wifi/IApInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnApTorndownEvent(Landroid/net/wifi/IApInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnClientInterfaceReady(Landroid/net/wifi/IClientInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnClientTorndownEvent(Landroid/net/wifi/IClientInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

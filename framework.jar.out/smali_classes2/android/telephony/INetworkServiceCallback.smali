.class public interface abstract Landroid/telephony/INetworkServiceCallback;
.super Ljava/lang/Object;
.source "INetworkServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/INetworkServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetNetworkRegistrationStateComplete(ILandroid/telephony/NetworkRegistrationState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNetworkStateChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

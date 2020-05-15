.class public interface abstract Landroid/service/euicc/IOtaStatusChangedCallback;
.super Ljava/lang/Object;
.source "IOtaStatusChangedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IOtaStatusChangedCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onOtaStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

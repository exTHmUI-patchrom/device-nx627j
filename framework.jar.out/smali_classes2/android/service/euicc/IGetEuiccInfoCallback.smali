.class public interface abstract Landroid/service/euicc/IGetEuiccInfoCallback;
.super Ljava/lang/Object;
.source "IGetEuiccInfoCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IGetEuiccInfoCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSuccess(Landroid/telephony/euicc/EuiccInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

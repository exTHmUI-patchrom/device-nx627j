.class public interface abstract Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;
.super Ljava/lang/Object;
.source "IGetRulesAuthTableCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(ILandroid/telephony/euicc/EuiccRulesAuthTable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Lnubia/os/screenswitch/IScreenSwitchCallback;
.super Ljava/lang/Object;
.source "IScreenSwitchCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/screenswitch/IScreenSwitchCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSwitch(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

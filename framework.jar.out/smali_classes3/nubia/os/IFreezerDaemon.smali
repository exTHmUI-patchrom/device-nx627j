.class public interface abstract Lnubia/os/IFreezerDaemon;
.super Ljava/lang/Object;
.source "IFreezerDaemon.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/IFreezerDaemon$Stub;
    }
.end annotation


# virtual methods
.method public abstract freeze([II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unfreeze([II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

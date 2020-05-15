.class public interface abstract Lnubia/os/presssensor/IPressListener;
.super Ljava/lang/Object;
.source "IPressListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/presssensor/IPressListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPressChanged(JII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Landroid/hardware/input/IPressKeyListener;
.super Ljava/lang/Object;
.source "IPressKeyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IPressKeyListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPressKeyChanged(JII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

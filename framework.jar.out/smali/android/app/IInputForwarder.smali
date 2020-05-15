.class public interface abstract Landroid/app/IInputForwarder;
.super Ljava/lang/Object;
.source "IInputForwarder.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IInputForwarder$Stub;
    }
.end annotation


# virtual methods
.method public abstract forwardEvent(Landroid/view/InputEvent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

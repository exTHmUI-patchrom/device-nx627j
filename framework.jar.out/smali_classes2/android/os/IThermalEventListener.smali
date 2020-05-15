.class public interface abstract Landroid/os/IThermalEventListener;
.super Ljava/lang/Object;
.source "IThermalEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IThermalEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyThrottling(ZLandroid/os/Temperature;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

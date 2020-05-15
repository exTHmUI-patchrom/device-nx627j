.class public interface abstract Lnubia/hardware/IColorfulLightManager;
.super Ljava/lang/Object;
.source "IColorfulLightManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/hardware/IColorfulLightManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract copyColorfulLightData(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestColorfulLight(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

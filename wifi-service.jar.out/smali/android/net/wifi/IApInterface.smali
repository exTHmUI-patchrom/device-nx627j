.class public interface abstract Landroid/net/wifi/IApInterface;
.super Ljava/lang/Object;
.source "IApInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IApInterface$Stub;
    }
.end annotation


# static fields
.field public static final ENCRYPTION_TYPE_NONE:I = 0x0

.field public static final ENCRYPTION_TYPE_WPA:I = 0x1

.field public static final ENCRYPTION_TYPE_WPA2:I = 0x2


# virtual methods
.method public abstract getInterfaceName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNumberOfAssociatedStations()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startHostapd(Landroid/net/wifi/IApInterfaceEventCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopHostapd()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

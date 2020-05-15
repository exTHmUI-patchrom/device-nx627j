.class public interface abstract Landroid/net/wifi/IApInterfaceEventCallback;
.super Ljava/lang/Object;
.source "IApInterfaceEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IApInterfaceEventCallback$Stub;
    }
.end annotation


# static fields
.field public static final BANDWIDTH_160:I = 0x6

.field public static final BANDWIDTH_20:I = 0x2

.field public static final BANDWIDTH_20_NOHT:I = 0x1

.field public static final BANDWIDTH_40:I = 0x3

.field public static final BANDWIDTH_80:I = 0x4

.field public static final BANDWIDTH_80P80:I = 0x5

.field public static final BANDWIDTH_INVALID:I


# virtual methods
.method public abstract onNumAssociatedStationsChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSoftApChannelSwitched(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

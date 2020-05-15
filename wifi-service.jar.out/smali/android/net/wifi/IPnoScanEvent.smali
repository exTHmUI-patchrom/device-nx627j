.class public interface abstract Landroid/net/wifi/IPnoScanEvent;
.super Ljava/lang/Object;
.source "IPnoScanEvent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IPnoScanEvent$Stub;
    }
.end annotation


# static fields
.field public static final PNO_SCAN_OVER_OFFLOAD_BINDER_FAILURE:I = 0x0

.field public static final PNO_SCAN_OVER_OFFLOAD_REMOTE_FAILURE:I = 0x1


# virtual methods
.method public abstract OnPnoNetworkFound()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnPnoScanFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnPnoScanOverOffloadFailed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnPnoScanOverOffloadStarted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

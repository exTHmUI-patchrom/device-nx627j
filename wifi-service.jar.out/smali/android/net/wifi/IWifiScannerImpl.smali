.class public interface abstract Landroid/net/wifi/IWifiScannerImpl;
.super Ljava/lang/Object;
.source "IWifiScannerImpl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiScannerImpl$Stub;
    }
.end annotation


# static fields
.field public static final SCAN_TYPE_DEFAULT:I = -0x1

.field public static final SCAN_TYPE_HIGH_ACCURACY:I = 0x2

.field public static final SCAN_TYPE_LOW_POWER:I = 0x1

.field public static final SCAN_TYPE_LOW_SPAN:I


# virtual methods
.method public abstract abortScan()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPnoScanResults()[Lcom/android/server/wifi/wificond/NativeScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getScanResults()[Lcom/android/server/wifi/wificond/NativeScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scan(Lcom/android/server/wifi/wificond/SingleScanSettings;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startPnoScan(Lcom/android/server/wifi/wificond/PnoSettings;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopPnoScan()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract subscribePnoScanEvents(Landroid/net/wifi/IPnoScanEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract subscribeScanEvents(Landroid/net/wifi/IScanEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unsubscribePnoScanEvents()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unsubscribeScanEvents()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

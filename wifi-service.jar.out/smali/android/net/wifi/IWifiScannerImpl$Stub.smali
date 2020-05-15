.class public abstract Landroid/net/wifi/IWifiScannerImpl$Stub;
.super Landroid/os/Binder;
.source "IWifiScannerImpl.java"

# interfaces
.implements Landroid/net/wifi/IWifiScannerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiScannerImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiScannerImpl"

.field static final TRANSACTION_abortScan:I = 0xa

.field static final TRANSACTION_getPnoScanResults:I = 0x2

.field static final TRANSACTION_getScanResults:I = 0x1

.field static final TRANSACTION_scan:I = 0x3

.field static final TRANSACTION_startPnoScan:I = 0x8

.field static final TRANSACTION_stopPnoScan:I = 0x9

.field static final TRANSACTION_subscribePnoScanEvents:I = 0x6

.field static final TRANSACTION_subscribeScanEvents:I = 0x4

.field static final TRANSACTION_unsubscribePnoScanEvents:I = 0x7

.field static final TRANSACTION_unsubscribeScanEvents:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.net.wifi.IWifiScannerImpl"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScannerImpl;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "android.net.wifi.IWifiScannerImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiScannerImpl;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IWifiScannerImpl;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiScannerImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiScannerImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const-string v0, "android.net.wifi.IWifiScannerImpl"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->abortScan()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    return v2

    .line 122
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->stopPnoScan()Z

    move-result v1

    .line 124
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return v2

    .line 107
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    sget-object v1, Lcom/android/server/wifi/wificond/PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/wificond/PnoSettings;

    .local v1, "_arg0":Lcom/android/server/wifi/wificond/PnoSettings;
    goto :goto_0

    .line 113
    .end local v1    # "_arg0":Lcom/android/server/wifi/wificond/PnoSettings;
    :cond_0
    nop

    .line 115
    .restart local v1    # "_arg0":Lcom/android/server/wifi/wificond/PnoSettings;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiScannerImpl$Stub;->startPnoScan(Lcom/android/server/wifi/wificond/PnoSettings;)Z

    move-result v3

    .line 116
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v2

    .line 101
    .end local v1    # "_arg0":Lcom/android/server/wifi/wificond/PnoSettings;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->unsubscribePnoScanEvents()V

    .line 103
    return v2

    .line 93
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IPnoScanEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IPnoScanEvent;

    move-result-object v1

    .line 96
    .local v1, "_arg0":Landroid/net/wifi/IPnoScanEvent;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiScannerImpl$Stub;->subscribePnoScanEvents(Landroid/net/wifi/IPnoScanEvent;)V

    .line 97
    return v2

    .line 87
    .end local v1    # "_arg0":Landroid/net/wifi/IPnoScanEvent;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->unsubscribeScanEvents()V

    .line 89
    return v2

    .line 79
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IScanEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IScanEvent;

    move-result-object v1

    .line 82
    .local v1, "_arg0":Landroid/net/wifi/IScanEvent;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiScannerImpl$Stub;->subscribeScanEvents(Landroid/net/wifi/IScanEvent;)V

    .line 83
    return v2

    .line 64
    .end local v1    # "_arg0":Landroid/net/wifi/IScanEvent;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    sget-object v1, Lcom/android/server/wifi/wificond/SingleScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/wificond/SingleScanSettings;

    .local v1, "_arg0":Lcom/android/server/wifi/wificond/SingleScanSettings;
    goto :goto_1

    .line 70
    .end local v1    # "_arg0":Lcom/android/server/wifi/wificond/SingleScanSettings;
    :cond_1
    nop

    .line 72
    .restart local v1    # "_arg0":Lcom/android/server/wifi/wificond/SingleScanSettings;
    :goto_1
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiScannerImpl$Stub;->scan(Lcom/android/server/wifi/wificond/SingleScanSettings;)Z

    move-result v3

    .line 73
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return v2

    .line 56
    .end local v1    # "_arg0":Lcom/android/server/wifi/wificond/SingleScanSettings;
    .end local v3    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->getPnoScanResults()[Lcom/android/server/wifi/wificond/NativeScanResult;

    move-result-object v1

    .line 58
    .local v1, "_result":[Lcom/android/server/wifi/wificond/NativeScanResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 60
    return v2

    .line 48
    .end local v1    # "_result":[Lcom/android/server/wifi/wificond/NativeScanResult;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/net/wifi/IWifiScannerImpl$Stub;->getScanResults()[Lcom/android/server/wifi/wificond/NativeScanResult;

    move-result-object v1

    .line 50
    .restart local v1    # "_result":[Lcom/android/server/wifi/wificond/NativeScanResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 52
    return v2

    .line 43
    .end local v1    # "_result":[Lcom/android/server/wifi/wificond/NativeScanResult;
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

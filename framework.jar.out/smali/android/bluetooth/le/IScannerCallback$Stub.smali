.class public abstract Landroid/bluetooth/le/IScannerCallback$Stub;
.super Landroid/os/Binder;
.source "IScannerCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IScannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IScannerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IScannerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.le.IScannerCallback"

.field static final TRANSACTION_onBatchScanResults:I = 0x3

.field static final TRANSACTION_onFoundOrLost:I = 0x4

.field static final TRANSACTION_onScanManagerErrorCallback:I = 0x5

.field static final TRANSACTION_onScanResult:I = 0x2

.field static final TRANSACTION_onScannerRegistered:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/le/IScannerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IScannerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "android.bluetooth.le.IScannerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/le/IScannerCallback;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/le/IScannerCallback;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Landroid/bluetooth/le/IScannerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/IScannerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const-string v0, "android.bluetooth.le.IScannerCallback"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 98
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/le/IScannerCallback$Stub;->onScanManagerErrorCallback(I)V

    .line 102
    return v2

    .line 83
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 87
    .local v3, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    sget-object v1, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .local v1, "_arg1":Landroid/bluetooth/le/ScanResult;
    goto :goto_1

    .line 91
    .end local v1    # "_arg1":Landroid/bluetooth/le/ScanResult;
    :cond_1
    nop

    .line 93
    .restart local v1    # "_arg1":Landroid/bluetooth/le/ScanResult;
    :goto_1
    invoke-virtual {p0, v3, v1}, Landroid/bluetooth/le/IScannerCallback$Stub;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    .line 94
    return v2

    .line 75
    .end local v1    # "_arg1":Landroid/bluetooth/le/ScanResult;
    .end local v3    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    sget-object v1, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    invoke-virtual {p0, v1}, Landroid/bluetooth/le/IScannerCallback$Stub;->onBatchScanResults(Ljava/util/List;)V

    .line 79
    return v2

    .line 62
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    sget-object v1, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .local v1, "_arg0":Landroid/bluetooth/le/ScanResult;
    goto :goto_2

    .line 68
    .end local v1    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :cond_2
    nop

    .line 70
    .restart local v1    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :goto_2
    invoke-virtual {p0, v1}, Landroid/bluetooth/le/IScannerCallback$Stub;->onScanResult(Landroid/bluetooth/le/ScanResult;)V

    .line 71
    return v2

    .line 52
    .end local v1    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 57
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/le/IScannerCallback$Stub;->onScannerRegistered(II)V

    .line 58
    return v2

    .line 47
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

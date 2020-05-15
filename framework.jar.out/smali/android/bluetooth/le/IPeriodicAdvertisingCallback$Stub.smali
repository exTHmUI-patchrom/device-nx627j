.class public abstract Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;
.super Landroid/os/Binder;
.source "IPeriodicAdvertisingCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IPeriodicAdvertisingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.le.IPeriodicAdvertisingCallback"

.field static final TRANSACTION_onPeriodicAdvertisingReport:I = 0x2

.field static final TRANSACTION_onSyncEstablished:I = 0x1

.field static final TRANSACTION_onSyncLost:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.bluetooth.le.IPeriodicAdvertisingCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "android.bluetooth.le.IPeriodicAdvertisingCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    .line 42
    const-string v10, "android.bluetooth.le.IPeriodicAdvertisingCallback"

    .line 43
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v8, v0, :cond_2

    const/4 v0, 0x0

    packed-switch v8, :pswitch_data_0

    .line 96
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 88
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->onSyncLost(I)V

    .line 92
    return v11

    .line 75
    .end local v0    # "_arg0":I
    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget-object v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;

    .local v0, "_arg0":Landroid/bluetooth/le/PeriodicAdvertisingReport;
    goto :goto_0

    .line 81
    .end local v0    # "_arg0":Landroid/bluetooth/le/PeriodicAdvertisingReport;
    :cond_0
    nop

    .line 83
    .restart local v0    # "_arg0":Landroid/bluetooth/le/PeriodicAdvertisingReport;
    :goto_0
    invoke-virtual {v7, v0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V

    .line 84
    return v11

    .line 52
    .end local v0    # "_arg0":Landroid/bluetooth/le/PeriodicAdvertisingReport;
    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 56
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 60
    .local v2, "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    move-object v2, v0

    goto :goto_2

    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    goto :goto_1

    .line 63
    .restart local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 65
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 67
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 69
    .local v15, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 70
    .local v16, "_arg5":I
    move-object v0, v7

    move v1, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V

    .line 71
    return v11

    .line 47
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v12    # "_arg0":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    .end local v16    # "_arg5":I
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

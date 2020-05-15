.class public abstract Landroid/bluetooth/IBluetoothHealthCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHealthCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHealthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHealthCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHealthCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHealthCallback"

.field static final TRANSACTION_onHealthAppConfigurationStatusChange:I = 0x1

.field static final TRANSACTION_onHealthChannelStateChange:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.bluetooth.IBluetoothHealthCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHealthCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothHealthCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHealthCallback;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothHealthCallback;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHealthCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHealthCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move v0, p1

    move-object/from16 v1, p2

    .line 41
    const-string v2, "android.bluetooth.IBluetoothHealthCallback"

    .line 42
    .local v2, "descriptor":Ljava/lang/String;
    const v3, 0x5f4e5446

    const/4 v4, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 101
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 67
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    sget-object v5, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 73
    .local v5, "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    move-object v7, v5

    goto :goto_0

    .end local v5    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :cond_0
    move-object v7, v3

    .line 76
    .local v7, "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 80
    .local v5, "_arg1":Landroid/bluetooth/BluetoothDevice;
    move-object v8, v5

    goto :goto_1

    .end local v5    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    move-object v8, v3

    .line 83
    .local v8, "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 85
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 87
    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 91
    .local v11, "_arg4":Landroid/os/ParcelFileDescriptor;
    :goto_2
    move-object v11, v3

    goto :goto_3

    .end local v11    # "_arg4":Landroid/os/ParcelFileDescriptor;
    :cond_2
    goto :goto_2

    .line 94
    .restart local v11    # "_arg4":Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 95
    .local v3, "_arg5":I
    move-object v6, p0

    move v9, v5

    move v10, v13

    move v12, v3

    invoke-virtual/range {v6 .. v12}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;->onHealthChannelStateChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    return v4

    .line 51
    .end local v3    # "_arg5":I
    .end local v5    # "_arg2":I
    .end local v7    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v8    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v11    # "_arg4":Landroid/os/ParcelFileDescriptor;
    .end local v13    # "_arg3":I
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 54
    sget-object v3, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_4

    .line 57
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :cond_3
    nop

    .line 60
    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 61
    .local v5, "_arg1":I
    move-object v6, p0

    invoke-virtual {v6, v3, v5}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;->onHealthAppConfigurationStatusChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v4

    .line 46
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v5    # "_arg1":I
    :cond_4
    move-object v6, p0

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

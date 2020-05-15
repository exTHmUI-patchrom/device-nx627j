.class public abstract Landroid/bluetooth/IBluetoothA2dp$Stub;
.super Landroid/os/Binder;
.source "IBluetoothA2dp.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothA2dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothA2dp"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disableOptionalCodecs:I = 0x10

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_enableOptionalCodecs:I = 0xf

.field static final TRANSACTION_getActiveDevice:I = 0x7

.field static final TRANSACTION_getCodecStatus:I = 0xd

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getOptionalCodecsEnabled:I = 0x12

.field static final TRANSACTION_getPriority:I = 0x9

.field static final TRANSACTION_isA2dpPlaying:I = 0xc

.field static final TRANSACTION_isAvrcpAbsoluteVolumeSupported:I = 0xa

.field static final TRANSACTION_setActiveDevice:I = 0x6

.field static final TRANSACTION_setAvrcpAbsoluteVolume:I = 0xb

.field static final TRANSACTION_setCodecConfigPreference:I = 0xe

.field static final TRANSACTION_setOptionalCodecsEnabled:I = 0x13

.field static final TRANSACTION_setPriority:I = 0x8

.field static final TRANSACTION_supportsOptionalCodecs:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothA2dp"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothA2dp;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
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

    .line 43
    const-string v0, "android.bluetooth.IBluetoothA2dp"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_11

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 320
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 305
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 311
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    move-object v1, v3

    .line 314
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 315
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 316
    return v2

    .line 290
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 296
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    move-object v1, v3

    .line 298
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 299
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    return v2

    .line 275
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 281
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    move-object v1, v3

    .line 283
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 284
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    return v2

    .line 262
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .line 268
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_3
    move-object v1, v3

    .line 270
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 271
    return v2

    .line 249
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 252
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 255
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_4
    move-object v1, v3

    .line 257
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 258
    return v2

    .line 229
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 232
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .line 235
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_5
    move-object v1, v3

    .line 238
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 239
    sget-object v3, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothCodecConfig;

    .local v3, "_arg1":Landroid/bluetooth/BluetoothCodecConfig;
    goto :goto_6

    .line 242
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothCodecConfig;
    :cond_6
    nop

    .line 244
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothCodecConfig;
    :goto_6
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 245
    return v2

    .line 208
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothCodecConfig;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 211
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .line 214
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_7
    nop

    .line 216
    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_7
    invoke-virtual {p0, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v4

    .line 217
    .local v4, "_result":Landroid/bluetooth/BluetoothCodecStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v4, :cond_8

    .line 219
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    invoke-virtual {v4, p3, v2}, Landroid/bluetooth/BluetoothCodecStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 223
    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    :goto_8
    return v2

    .line 193
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":Landroid/bluetooth/BluetoothCodecStatus;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 196
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    .line 199
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_9
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_9
    move-object v1, v3

    .line 201
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 202
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    return v2

    .line 185
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setAvrcpAbsoluteVolume(I)V

    .line 189
    return v2

    .line 177
    .end local v1    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v1

    .line 179
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    return v2

    .line 162
    .end local v1    # "_result":Z
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 165
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .line 168
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_a
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_a
    move-object v1, v3

    .line 170
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 171
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    return v2

    .line 145
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 148
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_b

    .line 151
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_b
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_b
    move-object v1, v3

    .line 154
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    .line 156
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    return v2

    .line 131
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 133
    .local v3, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v3, :cond_c

    .line 135
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v3, p3, v2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 139
    :cond_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    :goto_c
    return v2

    .line 116
    .end local v3    # "_result":Landroid/bluetooth/BluetoothDevice;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 119
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .line 122
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_d
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_d
    move-object v1, v3

    .line 124
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 125
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return v2

    .line 101
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 104
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .line 107
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_e
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_e
    move-object v1, v3

    .line 109
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 110
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v2

    .line 91
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":I
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 94
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v3

    .line 95
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 97
    return v2

    .line 83
    .end local v1    # "_arg0":[I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 85
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    return v2

    .line 68
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 71
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_f

    .line 74
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_f
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_f
    move-object v1, v3

    .line 76
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 77
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return v2

    .line 53
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 56
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    .line 59
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_10
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_10
    move-object v1, v3

    .line 61
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 62
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return v2

    .line 48
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

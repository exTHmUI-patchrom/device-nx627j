.class public abstract Landroid/net/IIpSecService$Stub;
.super Landroid/os/Binder;
.source "IIpSecService.java"

# interfaces
.implements Landroid/net/IIpSecService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpSecService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IIpSecService"

.field static final TRANSACTION_addAddressToTunnelInterface:I = 0x6

.field static final TRANSACTION_allocateSecurityParameterIndex:I = 0x1

.field static final TRANSACTION_applyTransportModeTransform:I = 0xb

.field static final TRANSACTION_applyTunnelModeTransform:I = 0xc

.field static final TRANSACTION_closeUdpEncapsulationSocket:I = 0x4

.field static final TRANSACTION_createTransform:I = 0x9

.field static final TRANSACTION_createTunnelInterface:I = 0x5

.field static final TRANSACTION_deleteTransform:I = 0xa

.field static final TRANSACTION_deleteTunnelInterface:I = 0x8

.field static final TRANSACTION_openUdpEncapsulationSocket:I = 0x3

.field static final TRANSACTION_releaseSecurityParameterIndex:I = 0x2

.field static final TRANSACTION_removeAddressFromTunnelInterface:I = 0x7

.field static final TRANSACTION_removeTransportModeTransforms:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.net.IIpSecService"

    invoke-virtual {p0, p0, v0}, Landroid/net/IIpSecService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IIpSecService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.net.IIpSecService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IIpSecService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/net/IIpSecService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/net/IIpSecService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IIpSecService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
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

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 41
    const-string v10, "android.net.IIpSecService"

    .line 42
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_a

    const/4 v12, 0x0

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    .line 264
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 250
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 256
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_0
    nop

    .line 258
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_0
    invoke-virtual {v6, v0}, Landroid/net/IIpSecService$Stub;->removeTransportModeTransforms(Landroid/os/ParcelFileDescriptor;)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    return v11

    .line 235
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 239
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 241
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 243
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/IIpSecService$Stub;->applyTunnelModeTransform(IIILjava/lang/String;)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    return v11

    .line 217
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 223
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_1
    nop

    .line 226
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 228
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IIpSecService$Stub;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;II)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    return v11

    .line 208
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 211
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/net/IIpSecService$Stub;->deleteTransform(I)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    return v11

    .line 183
    .end local v0    # "_arg0":I
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    sget-object v0, Landroid/net/IpSecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecConfig;

    .local v0, "_arg0":Landroid/net/IpSecConfig;
    goto :goto_2

    .line 189
    .end local v0    # "_arg0":Landroid/net/IpSecConfig;
    :cond_2
    nop

    .line 192
    .restart local v0    # "_arg0":Landroid/net/IpSecConfig;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 194
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IIpSecService$Stub;->createTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTransformResponse;

    move-result-object v3

    .line 196
    .local v3, "_result":Landroid/net/IpSecTransformResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v3, :cond_3

    .line 198
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    invoke-virtual {v3, v9, v11}, Landroid/net/IpSecTransformResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 202
    :cond_3
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    :goto_3
    return v11

    .line 172
    .end local v0    # "_arg0":Landroid/net/IpSecConfig;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/IpSecTransformResponse;
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/net/IIpSecService$Stub;->deleteTunnelInterface(ILjava/lang/String;)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    return v11

    .line 154
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 159
    sget-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .local v0, "_arg1":Landroid/net/LinkAddress;
    goto :goto_4

    .line 162
    .end local v0    # "_arg1":Landroid/net/LinkAddress;
    :cond_4
    nop

    .line 165
    .restart local v0    # "_arg1":Landroid/net/LinkAddress;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v1, v0, v2}, Landroid/net/IIpSecService$Stub;->removeAddressFromTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    return v11

    .line 136
    .end local v0    # "_arg1":Landroid/net/LinkAddress;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    sget-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .restart local v0    # "_arg1":Landroid/net/LinkAddress;
    goto :goto_5

    .line 144
    .end local v0    # "_arg1":Landroid/net/LinkAddress;
    :cond_5
    nop

    .line 147
    .restart local v0    # "_arg1":Landroid/net/LinkAddress;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v1, v0, v2}, Landroid/net/IIpSecService$Stub;->addAddressToTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    return v11

    .line 107
    .end local v0    # "_arg1":Landroid/net/LinkAddress;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 111
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 113
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 117
    .local v3, "_arg2":Landroid/net/Network;
    :goto_6
    move-object v3, v0

    goto :goto_7

    .end local v3    # "_arg2":Landroid/net/Network;
    :cond_6
    goto :goto_6

    .line 120
    .restart local v3    # "_arg2":Landroid/net/Network;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 122
    .local v15, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 123
    .local v16, "_arg4":Ljava/lang/String;
    move-object v0, v6

    move-object v1, v13

    move-object v2, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/IIpSecService$Stub;->createTunnelInterface(Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTunnelInterfaceResponse;

    move-result-object v0

    .line 124
    .local v0, "_result":Landroid/net/IpSecTunnelInterfaceResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v0, :cond_7

    .line 126
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {v0, v9, v11}, Landroid/net/IpSecTunnelInterfaceResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 130
    :cond_7
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    :goto_8
    return v11

    .line 98
    .end local v0    # "_result":Landroid/net/IpSecTunnelInterfaceResponse;
    .end local v3    # "_arg2":Landroid/net/Network;
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg3":Landroid/os/IBinder;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/net/IIpSecService$Stub;->closeUdpEncapsulationSocket(I)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v11

    .line 80
    .end local v0    # "_arg0":I
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 85
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v6, v0, v1}, Landroid/net/IIpSecService$Stub;->openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;

    move-result-object v2

    .line 86
    .local v2, "_result":Landroid/net/IpSecUdpEncapResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v2, :cond_8

    .line 88
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v2, v9, v11}, Landroid/net/IpSecUdpEncapResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 92
    :cond_8
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    :goto_9
    return v11

    .line 71
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/net/IpSecUdpEncapResponse;
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/net/IIpSecService$Stub;->releaseSecurityParameterIndex(I)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v11

    .line 51
    .end local v0    # "_arg0":I
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 58
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IIpSecService$Stub;->allocateSecurityParameterIndex(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;

    move-result-object v3

    .line 59
    .local v3, "_result":Landroid/net/IpSecSpiResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v3, :cond_9

    .line 61
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v3, v9, v11}, Landroid/net/IpSecSpiResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 65
    :cond_9
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    :goto_a
    return v11

    .line 46
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_result":Landroid/net/IpSecSpiResponse;
    :cond_a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

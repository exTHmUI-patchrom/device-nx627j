.class public abstract Landroid/net/wifi/aware/IWifiAwareManager$Stub;
.super Landroid/os/Binder;
.source "IWifiAwareManager.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.aware.IWifiAwareManager"

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_getCharacteristics:I = 0x2

.field static final TRANSACTION_isUsageEnabled:I = 0x1

.field static final TRANSACTION_publish:I = 0x5

.field static final TRANSACTION_requestMacAddresses:I = 0xb

.field static final TRANSACTION_sendMessage:I = 0x9

.field static final TRANSACTION_subscribe:I = 0x6

.field static final TRANSACTION_terminateSession:I = 0xa

.field static final TRANSACTION_updatePublish:I = 0x7

.field static final TRANSACTION_updateSubscribe:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.aware.IWifiAwareManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.net.wifi.aware.IWifiAwareManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/aware/IWifiAwareManager;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/IWifiAwareManager;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
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

    move-object/from16 v10, p3

    .line 43
    const-string v11, "android.net.wifi.aware.IWifiAwareManager"

    .line 44
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v8, :pswitch_data_0

    .line 228
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 214
    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .local v0, "_arg0":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 219
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 221
    .local v2, "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/aware/IWifiAwareMacAddressProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;

    move-result-object v3

    .line 222
    .local v3, "_arg2":Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;
    invoke-virtual {v7, v0, v2, v3}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->requestMacAddresses(ILjava/util/List;Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    return v12

    .line 203
    .end local v0    # "_arg0":I
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "_arg1":Ljava/util/List;
    .end local v3    # "_arg2":Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;
    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 208
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->terminateSession(II)V

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    return v12

    .line 184
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 188
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 190
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 192
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 194
    .local v16, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 196
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 197
    .local v18, "_arg5":I
    move-object v0, v7

    move v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->sendMessage(III[BII)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    return v12

    .line 166
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":[B
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    sget-object v1, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/SubscribeConfig;

    .local v1, "_arg2":Landroid/net/wifi/aware/SubscribeConfig;
    goto :goto_0

    .line 176
    .end local v1    # "_arg2":Landroid/net/wifi/aware/SubscribeConfig;
    :cond_0
    nop

    .line 178
    .restart local v1    # "_arg2":Landroid/net/wifi/aware/SubscribeConfig;
    :goto_0
    invoke-virtual {v7, v0, v2, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    return v12

    .line 148
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Landroid/net/wifi/aware/SubscribeConfig;
    .end local v2    # "_arg1":I
    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    sget-object v1, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/PublishConfig;

    .local v1, "_arg2":Landroid/net/wifi/aware/PublishConfig;
    goto :goto_1

    .line 158
    .end local v1    # "_arg2":Landroid/net/wifi/aware/PublishConfig;
    :cond_1
    nop

    .line 160
    .restart local v1    # "_arg2":Landroid/net/wifi/aware/PublishConfig;
    :goto_1
    invoke-virtual {v7, v0, v2, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    return v12

    .line 128
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Landroid/net/wifi/aware/PublishConfig;
    .end local v2    # "_arg1":I
    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 134
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    sget-object v1, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/SubscribeConfig;

    .local v1, "_arg2":Landroid/net/wifi/aware/SubscribeConfig;
    goto :goto_2

    .line 138
    .end local v1    # "_arg2":Landroid/net/wifi/aware/SubscribeConfig;
    :cond_2
    nop

    .line 141
    .restart local v1    # "_arg2":Landroid/net/wifi/aware/SubscribeConfig;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v3

    .line 142
    .local v3, "_arg3":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->subscribe(Ljava/lang/String;ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    return v12

    .line 108
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg2":Landroid/net/wifi/aware/SubscribeConfig;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg3":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    sget-object v1, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/PublishConfig;

    .local v1, "_arg2":Landroid/net/wifi/aware/PublishConfig;
    goto :goto_3

    .line 118
    .end local v1    # "_arg2":Landroid/net/wifi/aware/PublishConfig;
    :cond_3
    nop

    .line 121
    .restart local v1    # "_arg2":Landroid/net/wifi/aware/PublishConfig;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v3

    .line 122
    .restart local v3    # "_arg3":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->publish(Ljava/lang/String;ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    return v12

    .line 97
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg2":Landroid/net/wifi/aware/PublishConfig;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg3":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 102
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v7, v0, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->disconnect(ILandroid/os/IBinder;)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v12

    .line 75
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 79
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 81
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareEventCallback;

    move-result-object v14

    .line 83
    .local v14, "_arg2":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    sget-object v1, Landroid/net/wifi/aware/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/ConfigRequest;

    .line 87
    .local v4, "_arg3":Landroid/net/wifi/aware/ConfigRequest;
    :goto_4
    move-object v4, v1

    goto :goto_5

    .end local v4    # "_arg3":Landroid/net/wifi/aware/ConfigRequest;
    :cond_4
    goto :goto_4

    .line 90
    .restart local v4    # "_arg3":Landroid/net/wifi/aware/ConfigRequest;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v5, v12

    goto :goto_6

    :cond_5
    move v5, v0

    .line 91
    .local v5, "_arg4":Z
    :goto_6
    move-object v0, v7

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->connect(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V

    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    return v12

    .line 61
    .end local v4    # "_arg3":Landroid/net/wifi/aware/ConfigRequest;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    :pswitch_9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v1

    .line 63
    .local v1, "_result":Landroid/net/wifi/aware/Characteristics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v1, :cond_6

    .line 65
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {v1, v10, v12}, Landroid/net/wifi/aware/Characteristics;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 69
    :cond_6
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    :goto_7
    return v12

    .line 53
    .end local v1    # "_result":Landroid/net/wifi/aware/Characteristics;
    :pswitch_a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->isUsageEnabled()Z

    move-result v0

    .line 55
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v12

    .line 48
    .end local v0    # "_result":Z
    :cond_7
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

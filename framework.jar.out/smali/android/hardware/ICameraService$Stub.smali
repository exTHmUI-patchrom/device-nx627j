.class public abstract Landroid/hardware/ICameraService$Stub;
.super Landroid/os/Binder;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraService"

.field static final TRANSACTION_addListener:I = 0x6

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_connectDevice:I = 0x4

.field static final TRANSACTION_connectLegacy:I = 0x5

.field static final TRANSACTION_getCameraCharacteristics:I = 0x8

.field static final TRANSACTION_getCameraInfo:I = 0x2

.field static final TRANSACTION_getCameraVendorTagCache:I = 0xa

.field static final TRANSACTION_getCameraVendorTagDescriptor:I = 0x9

.field static final TRANSACTION_getLegacyParameters:I = 0xb

.field static final TRANSACTION_getNumberOfCameras:I = 0x1

.field static final TRANSACTION_notifySystemEvent:I = 0xe

.field static final TRANSACTION_removeListener:I = 0x7

.field static final TRANSACTION_setTorchMode:I = 0xd

.field static final TRANSACTION_supportsCameraApi:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.hardware.ICameraService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/ICameraService;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/hardware/ICameraService;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/hardware/ICameraService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ICameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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

    .line 43
    const-string v10, "android.hardware.ICameraService"

    .line 44
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_8

    const/4 v12, 0x0

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    .line 239
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 229
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 233
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 234
    .local v1, "_arg1":[I
    invoke-virtual {v6, v0, v1}, Landroid/hardware/ICameraService$Stub;->notifySystemEvent(I[I)V

    .line 235
    return v11

    .line 216
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v11

    nop

    .line 222
    .local v0, "_arg1":Z
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 223
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v6, v1, v0, v2}, Landroid/hardware/ICameraService$Stub;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    return v11

    .line 204
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/hardware/ICameraService$Stub;->supportsCameraApi(Ljava/lang/String;I)Z

    move-result v2

    .line 210
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    return v11

    .line 194
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 197
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/hardware/ICameraService$Stub;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    return v11

    .line 180
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagCache()Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    move-result-object v1

    .line 182
    .local v1, "_result":Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v1, v9, v11}, Landroid/hardware/camera2/params/VendorTagDescriptorCache;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    :goto_0
    return v11

    .line 166
    .end local v1    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object v1

    .line 168
    .local v1, "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v1, :cond_2

    .line 170
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    invoke-virtual {v1, v9, v11}, Landroid/hardware/camera2/params/VendorTagDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    :goto_1
    return v11

    .line 150
    .end local v1    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v1}, Landroid/hardware/ICameraService$Stub;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 154
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v2, :cond_3

    .line 156
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {v2, v9, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 160
    :cond_3
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    :goto_2
    return v11

    .line 141
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v0

    .line 144
    .local v0, "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual {v6, v0}, Landroid/hardware/ICameraService$Stub;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v11

    .line 131
    .end local v0    # "_arg0":Landroid/hardware/ICameraServiceListener;
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v0

    .line 134
    .restart local v0    # "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual {v6, v0}, Landroid/hardware/ICameraService$Stub;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v1

    .line 135
    .local v1, "_result":[Landroid/hardware/CameraStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 137
    return v11

    .line 113
    .end local v0    # "_arg0":Landroid/hardware/ICameraServiceListener;
    .end local v1    # "_result":[Landroid/hardware/CameraStatus;
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v13

    .line 117
    .local v13, "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 119
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 121
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 123
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 124
    .local v17, "_arg4":I
    move-object v0, v6

    move-object v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->connectLegacy(Landroid/hardware/ICameraClient;IILjava/lang/String;I)Landroid/hardware/ICamera;

    move-result-object v0

    .line 125
    .local v0, "_result":Landroid/hardware/ICamera;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/hardware/ICamera;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    nop

    :cond_4
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 127
    return v11

    .line 97
    .end local v0    # "_result":Landroid/hardware/ICamera;
    .end local v13    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":I
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v0

    .line 101
    .local v0, "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 106
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/ICameraService$Stub;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v4

    .line 107
    .local v4, "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    nop

    :cond_5
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 109
    return v11

    .line 79
    .end local v0    # "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v13

    .line 83
    .restart local v13    # "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 85
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 87
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 89
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 90
    .restart local v17    # "_arg4":I
    move-object v0, v6

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->connect(Landroid/hardware/ICameraClient;ILjava/lang/String;II)Landroid/hardware/ICamera;

    move-result-object v0

    .line 91
    .local v0, "_result":Landroid/hardware/ICamera;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/hardware/ICamera;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    nop

    :cond_6
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 93
    return v11

    .line 63
    .end local v0    # "_result":Landroid/hardware/ICamera;
    .end local v13    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "_arg0":I
    invoke-virtual {v6, v1}, Landroid/hardware/ICameraService$Stub;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v2

    .line 67
    .local v2, "_result":Landroid/hardware/CameraInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v2, :cond_7

    .line 69
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {v2, v9, v11}, Landroid/hardware/CameraInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 73
    :cond_7
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    :goto_3
    return v11

    .line 53
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/hardware/CameraInfo;
    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/hardware/ICameraService$Stub;->getNumberOfCameras(I)I

    move-result v1

    .line 57
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return v11

    .line 48
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :cond_8
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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

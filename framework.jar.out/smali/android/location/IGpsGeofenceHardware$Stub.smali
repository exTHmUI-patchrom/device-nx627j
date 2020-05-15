.class public abstract Landroid/location/IGpsGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "IGpsGeofenceHardware.java"

# interfaces
.implements Landroid/location/IGpsGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGpsGeofenceHardware"

.field static final TRANSACTION_addCircularHardwareGeofence:I = 0x2

.field static final TRANSACTION_isHardwareGeofenceSupported:I = 0x1

.field static final TRANSACTION_pauseHardwareGeofence:I = 0x4

.field static final TRANSACTION_removeHardwareGeofence:I = 0x3

.field static final TRANSACTION_resumeHardwareGeofence:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.IGpsGeofenceHardware"

    invoke-virtual {p0, p0, v0}, Landroid/location/IGpsGeofenceHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.location.IGpsGeofenceHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/IGpsGeofenceHardware;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/location/IGpsGeofenceHardware;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 43
    const-string v11, "android.location.IGpsGeofenceHardware"

    .line 44
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/16 v16, 0x1

    if-eq v13, v0, :cond_0

    packed-switch v13, :pswitch_data_0

    .line 117
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 105
    :pswitch_0
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .local v1, "_arg1":I
    invoke-virtual {v12, v0, v1}, Landroid/location/IGpsGeofenceHardware$Stub;->resumeHardwareGeofence(II)Z

    move-result v2

    .line 111
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return v16

    .line 95
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Landroid/location/IGpsGeofenceHardware$Stub;->pauseHardwareGeofence(I)Z

    move-result v1

    .line 99
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return v16

    .line 85
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Landroid/location/IGpsGeofenceHardware$Stub;->removeHardwareGeofence(I)Z

    move-result v1

    .line 89
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return v16

    .line 61
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 65
    .local v17, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 67
    .local v18, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    .line 69
    .local v20, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v22

    .line 71
    .local v22, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 73
    .local v24, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 75
    .local v25, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 77
    .local v26, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 78
    .local v27, "_arg7":I
    move-object v0, v12

    move/from16 v1, v17

    move-wide/from16 v2, v18

    move-wide/from16 v4, v20

    move-wide/from16 v6, v22

    move/from16 v8, v24

    move/from16 v9, v25

    move/from16 v10, v26

    move-object v13, v11

    move/from16 v11, v27

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v13, "descriptor":Ljava/lang/String;
    invoke-virtual/range {v0 .. v11}, Landroid/location/IGpsGeofenceHardware$Stub;->addCircularHardwareGeofence(IDDDIIII)Z

    move-result v0

    .line 79
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v16

    .line 53
    .end local v0    # "_result":Z
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v17    # "_arg0":I
    .end local v18    # "_arg1":D
    .end local v20    # "_arg2":D
    .end local v22    # "_arg3":D
    .end local v24    # "_arg4":I
    .end local v25    # "_arg5":I
    .end local v26    # "_arg6":I
    .end local v27    # "_arg7":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4
    move-object v13, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/location/IGpsGeofenceHardware$Stub;->isHardwareGeofenceSupported()Z

    move-result v0

    .line 55
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v16

    .line 48
    .end local v0    # "_result":Z
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :cond_0
    move-object v13, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v16

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

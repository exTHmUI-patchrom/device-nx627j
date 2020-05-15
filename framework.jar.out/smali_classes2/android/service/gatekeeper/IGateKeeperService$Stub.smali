.class public abstract Landroid/service/gatekeeper/IGateKeeperService$Stub;
.super Landroid/os/Binder;
.source "IGateKeeperService.java"

# interfaces
.implements Landroid/service/gatekeeper/IGateKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/IGateKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.gatekeeper.IGateKeeperService"

.field static final TRANSACTION_clearSecureUserId:I = 0x5

.field static final TRANSACTION_enroll:I = 0x1

.field static final TRANSACTION_getSecureUserId:I = 0x4

.field static final TRANSACTION_reportDeviceSetupComplete:I = 0x6

.field static final TRANSACTION_verify:I = 0x2

.field static final TRANSACTION_verifyChallenge:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p0, p0, v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_1

    .line 37
    move-object v1, v0

    check-cast v1, Landroid/service/gatekeeper/IGateKeeperService;

    return-object v1

    .line 39
    :cond_1
    new-instance v1, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 43
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

    .line 47
    const-string v10, "android.service.gatekeeper.IGateKeeperService"

    .line 48
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_3

    const/4 v12, 0x0

    packed-switch v7, :pswitch_data_0

    .line 147
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 140
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->reportDeviceSetupComplete()V

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    return v11

    .line 131
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->clearSecureUserId(I)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    return v11

    .line 121
    .end local v0    # "_arg0":I
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->getSecureUserId(I)J

    move-result-wide v1

    .line 125
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    return v11

    .line 99
    .end local v0    # "_arg0":I
    .end local v1    # "_result":J
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 103
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 105
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 107
    .local v16, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 108
    .local v17, "_arg3":[B
    move-object v0, v6

    move v1, v13

    move-wide v2, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 109
    .local v0, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v0, v9, v11}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    :goto_0
    return v11

    .line 79
    .end local v0    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":[B
    .end local v17    # "_arg3":[B
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 85
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 86
    .local v2, "_arg2":[B
    invoke-virtual {v6, v0, v1, v2}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v3

    .line 87
    .local v3, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v3, v9, v11}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    :goto_1
    return v11

    .line 57
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 63
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 65
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 66
    .local v3, "_arg3":[B
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v4

    .line 67
    .local v4, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v4, :cond_2

    .line 69
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {v4, v9, v11}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    :goto_2
    return v11

    .line 52
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_3
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

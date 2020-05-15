.class public abstract Landroid/telephony/data/IDataService$Stub;
.super Landroid/os/Binder;
.source "IDataService.java"

# interfaces
.implements Landroid/telephony/data/IDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/IDataService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.data.IDataService"

.field static final TRANSACTION_createDataServiceProvider:I = 0x1

.field static final TRANSACTION_deactivateDataCall:I = 0x4

.field static final TRANSACTION_getDataCallList:I = 0x7

.field static final TRANSACTION_registerForDataCallListChanged:I = 0x8

.field static final TRANSACTION_removeDataServiceProvider:I = 0x2

.field static final TRANSACTION_setDataProfile:I = 0x6

.field static final TRANSACTION_setInitialAttachApn:I = 0x5

.field static final TRANSACTION_setupDataCall:I = 0x3

.field static final TRANSACTION_unregisterForDataCallListChanged:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.telephony.data.IDataService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/data/IDataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.telephony.data.IDataService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/data/IDataService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/telephony/data/IDataService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/telephony/data/IDataService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/data/IDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
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

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    .line 41
    const-string v12, "android.telephony.data.IDataService"

    .line 42
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v10, v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v10, :pswitch_data_0

    .line 176
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 166
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    .line 171
    .local v1, "_arg1":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v9, v0, v1}, Landroid/telephony/data/IDataService$Stub;->unregisterForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 172
    return v13

    .line 156
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_1
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    .line 161
    .restart local v1    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v9, v0, v1}, Landroid/telephony/data/IDataService$Stub;->registerForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 162
    return v13

    .line 146
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_2
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    .line 151
    .restart local v1    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v9, v0, v1}, Landroid/telephony/data/IDataService$Stub;->getDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 152
    return v13

    .line 132
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_3
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .restart local v0    # "_arg0":I
    sget-object v2, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 138
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v13

    nop

    .line 140
    .local v1, "_arg2":Z
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    .line 141
    .local v3, "_arg3":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/telephony/data/IDataService$Stub;->setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V

    .line 142
    return v13

    .line 113
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    .end local v3    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_4
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    sget-object v0, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataProfile;

    .local v0, "_arg1":Landroid/telephony/data/DataProfile;
    goto :goto_0

    .line 121
    .end local v0    # "_arg1":Landroid/telephony/data/DataProfile;
    :cond_1
    nop

    .line 124
    .restart local v0    # "_arg1":Landroid/telephony/data/DataProfile;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v13

    nop

    .line 126
    .restart local v1    # "_arg2":Z
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    .line 127
    .restart local v3    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v9, v2, v0, v1, v3}, Landroid/telephony/data/IDataService$Stub;->setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V

    .line 128
    return v13

    .line 99
    .end local v0    # "_arg1":Landroid/telephony/data/DataProfile;
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg0":I
    .end local v3    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_5
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    .line 108
    .restart local v3    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V

    .line 109
    return v13

    .line 67
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_6
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 71
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 73
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    sget-object v2, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 77
    .local v2, "_arg2":Landroid/telephony/data/DataProfile;
    move-object v3, v2

    goto :goto_1

    .end local v2    # "_arg2":Landroid/telephony/data/DataProfile;
    :cond_3
    move-object v3, v0

    .line 80
    .local v3, "_arg2":Landroid/telephony/data/DataProfile;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v4, v13

    goto :goto_2

    :cond_4
    move v4, v1

    .line 82
    .local v4, "_arg3":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v5, v13

    goto :goto_3

    :cond_5
    move v5, v1

    .line 84
    .local v5, "_arg4":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 86
    .local v16, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .line 90
    .local v7, "_arg6":Landroid/net/LinkProperties;
    :goto_4
    move-object v7, v0

    goto :goto_5

    .end local v7    # "_arg6":Landroid/net/LinkProperties;
    :cond_6
    goto :goto_4

    .line 93
    .restart local v7    # "_arg6":Landroid/net/LinkProperties;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v17

    .line 94
    .local v17, "_arg7":Landroid/telephony/data/IDataServiceCallback;
    move-object v0, v9

    move v1, v14

    move v2, v15

    move/from16 v6, v16

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/data/IDataService$Stub;->setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/IDataServiceCallback;)V

    .line 95
    return v13

    .line 59
    .end local v3    # "_arg2":Landroid/telephony/data/DataProfile;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v7    # "_arg6":Landroid/net/LinkProperties;
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg5":I
    .end local v17    # "_arg7":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_7
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Landroid/telephony/data/IDataService$Stub;->removeDataServiceProvider(I)V

    .line 63
    return v13

    .line 51
    .end local v0    # "_arg0":I
    :pswitch_8
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Landroid/telephony/data/IDataService$Stub;->createDataServiceProvider(I)V

    .line 55
    return v13

    .line 46
    .end local v0    # "_arg0":I
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v13

    :pswitch_data_0
    .packed-switch 0x1
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

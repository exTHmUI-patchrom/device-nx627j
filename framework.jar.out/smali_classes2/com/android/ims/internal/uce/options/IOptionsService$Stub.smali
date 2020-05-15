.class public abstract Lcom/android/ims/internal/uce/options/IOptionsService$Stub;
.super Landroid/os/Binder;
.source "IOptionsService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.options.IOptionsService"

.field static final TRANSACTION_addListener:I = 0x2

.field static final TRANSACTION_getContactCap:I = 0x6

.field static final TRANSACTION_getContactListCap:I = 0x7

.field static final TRANSACTION_getMyInfo:I = 0x5

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_removeListener:I = 0x3

.field static final TRANSACTION_responseIncomingOptions:I = 0x8

.field static final TRANSACTION_setMyInfo:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/options/IOptionsService;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/options/IOptionsService;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
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

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 39
    const-string v11, "com.android.ims.internal.uce.options.IOptionsService"

    .line 40
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_e

    const/4 v0, 0x0

    const/4 v13, 0x0

    packed-switch v8, :pswitch_data_0

    .line 234
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 203
    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 207
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 209
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 211
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 213
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    sget-object v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    .line 217
    .local v5, "_arg4":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    :goto_0
    move-object v5, v0

    goto :goto_1

    .end local v5    # "_arg4":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    :cond_0
    goto :goto_0

    .line 220
    .restart local v5    # "_arg4":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v6, v12

    goto :goto_2

    :cond_1
    move v6, v13

    .line 221
    .local v6, "_arg5":Z
    :goto_2
    move-object v0, v7

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->responseIncomingOptions(IIILjava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;Z)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v0

    .line 222
    .local v0, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    invoke-virtual {v0, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 228
    :cond_2
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    :goto_3
    return v12

    .line 183
    .end local v0    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    .end local v5    # "_arg4":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .end local v6    # "_arg5":Z
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 187
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    .line 191
    .local v3, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v3, :cond_3

    .line 193
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {v3, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 197
    :cond_3
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    :goto_4
    return v12

    .line 163
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    .line 171
    .restart local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v3, :cond_4

    .line 173
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {v3, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 177
    :cond_4
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    :goto_5
    return v12

    .line 145
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getMyInfo(II)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v2

    .line 151
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v2, :cond_5

    .line 153
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {v2, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 157
    :cond_5
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    :goto_6
    return v12

    .line 120
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 125
    sget-object v0, Lcom/android/ims/internal/uce/common/CapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/CapInfo;

    .local v0, "_arg1":Lcom/android/ims/internal/uce/common/CapInfo;
    goto :goto_7

    .line 128
    .end local v0    # "_arg1":Lcom/android/ims/internal/uce/common/CapInfo;
    :cond_6
    nop

    .line 131
    .restart local v0    # "_arg1":Lcom/android/ims/internal/uce/common/CapInfo;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, "_arg2":I
    invoke-virtual {v7, v1, v0, v2}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->setMyInfo(ILcom/android/ims/internal/uce/common/CapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    .line 133
    .restart local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v3, :cond_7

    .line 135
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v3, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 139
    :cond_7
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    :goto_8
    return v12

    .line 97
    .end local v0    # "_arg1":Lcom/android/ims/internal/uce/common/CapInfo;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 102
    sget-object v0, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/UceLong;

    .local v0, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_9

    .line 105
    .end local v0    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    :cond_8
    nop

    .line 107
    .restart local v0    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    :goto_9
    invoke-virtual {v7, v1, v0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v2

    .line 108
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v2, :cond_9

    .line 110
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v2, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 114
    :cond_9
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    :goto_a
    return v12

    .line 65
    .end local v0    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v2

    .line 71
    .local v2, "_arg1":Lcom/android/ims/internal/uce/options/IOptionsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 72
    sget-object v0, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/UceLong;

    .local v0, "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_b

    .line 75
    .end local v0    # "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    :cond_a
    nop

    .line 77
    .restart local v0    # "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    :goto_b
    invoke-virtual {v7, v1, v2, v0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->addListener(ILcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    .line 78
    .restart local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v3, :cond_b

    .line 80
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v3, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 84
    :cond_b
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    :goto_c
    if-eqz v0, :cond_c

    .line 87
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {v0, v10, v12}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 91
    :cond_c
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    :goto_d
    return v12

    .line 49
    .end local v0    # "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v1

    .line 53
    .local v1, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v1, :cond_d

    .line 55
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {v1, v10, v12}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 59
    :cond_d
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    :goto_e
    return v12

    .line 44
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_e
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

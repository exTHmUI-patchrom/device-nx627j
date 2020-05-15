.class public abstract Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;
.super Landroid/os/Binder;
.source "IQtiImsExt.java"

# interfaces
.implements Lorg/codeaurora/ims/internal/IQtiImsExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/internal/IQtiImsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.ims.internal.IQtiImsExt"

.field static final TRANSACTION_getCallForwardUncondTimer:I = 0x2

.field static final TRANSACTION_getHandoverConfig:I = 0xd

.field static final TRANSACTION_getMultiIdentityInterface:I = 0x13

.field static final TRANSACTION_getPacketCount:I = 0x3

.field static final TRANSACTION_getPacketErrorCount:I = 0x4

.field static final TRANSACTION_getRcsAppConfig:I = 0xf

.field static final TRANSACTION_getVvmAppConfig:I = 0x11

.field static final TRANSACTION_querySsacStatus:I = 0x8

.field static final TRANSACTION_queryVoltePreference:I = 0xc

.field static final TRANSACTION_queryVopsStatus:I = 0x7

.field static final TRANSACTION_registerForParticipantStatusInfo:I = 0xa

.field static final TRANSACTION_resumePendingCall:I = 0x9

.field static final TRANSACTION_sendCallTransferRequest:I = 0x5

.field static final TRANSACTION_sendCancelModifyCall:I = 0x6

.field static final TRANSACTION_setCallForwardUncondTimer:I = 0x1

.field static final TRANSACTION_setHandoverConfig:I = 0xe

.field static final TRANSACTION_setRcsAppConfig:I = 0x10

.field static final TRANSACTION_setVvmAppConfig:I = 0x12

.field static final TRANSACTION_updateVoltePreference:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/internal/IQtiImsExt;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Lorg/codeaurora/ims/internal/IQtiImsExt;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 42
    const-string v15, "org.codeaurora.ims.internal.IQtiImsExt"

    .line 43
    .local v15, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/16 v16, 0x1

    if-eq v12, v0, :cond_1

    packed-switch v12, :pswitch_data_0

    .line 274
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 264
    :pswitch_0
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 267
    .local v0, "_arg0":I
    invoke-virtual {v11, v0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getMultiIdentityInterface(I)Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    move-result-object v1

    .line 268
    .local v1, "_result":Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 270
    return v16

    .line 252
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;
    :pswitch_1
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 256
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->setVvmAppConfig(II)I

    move-result v2

    .line 258
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    return v16

    .line 242
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    .restart local v0    # "_arg0":I
    invoke-virtual {v11, v0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getVvmAppConfig(I)I

    move-result v1

    .line 246
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    return v16

    .line 230
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 235
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->setRcsAppConfig(II)I

    move-result v2

    .line 236
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    return v16

    .line 220
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .restart local v0    # "_arg0":I
    invoke-virtual {v11, v0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getRcsAppConfig(I)I

    move-result v1

    .line 224
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    return v16

    .line 208
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v2

    .line 215
    .local v2, "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {v11, v0, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->setHandoverConfig(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 216
    return v16

    .line 198
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :pswitch_6
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v1

    .line 203
    .local v1, "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {v11, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 204
    return v16

    .line 188
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :pswitch_7
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v1

    .line 193
    .restart local v1    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {v11, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->queryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 194
    return v16

    .line 176
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :pswitch_8
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 182
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v2

    .line 183
    .restart local v2    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {v11, v0, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->updateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 184
    return v16

    .line 166
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :pswitch_9
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v1

    .line 171
    .local v1, "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {v11, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->registerForParticipantStatusInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 172
    return v16

    .line 156
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :pswitch_a
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->resumePendingCall(II)V

    .line 162
    return v16

    .line 146
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_b
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v1

    .line 151
    .local v1, "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {v11, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->querySsacStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 152
    return v16

    .line 136
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :pswitch_c
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v1

    .line 141
    .restart local v1    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {v11, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->queryVopsStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 142
    return v16

    .line 126
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :pswitch_d
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v1

    .line 131
    .restart local v1    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {v11, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->sendCancelModifyCall(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 132
    return v16

    .line 112
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :pswitch_e
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v3

    .line 121
    .local v3, "_arg3":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {v11, v0, v1, v2, v3}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 122
    return v16

    .line 102
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :pswitch_f
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v1

    .line 107
    .local v1, "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {v11, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getPacketErrorCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 108
    return v16

    .line 92
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :pswitch_10
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v1

    .line 97
    .restart local v1    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {v11, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getPacketCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 98
    return v16

    .line 78
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :pswitch_11
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v3

    .line 87
    .restart local v3    # "_arg3":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {v11, v0, v1, v2, v3}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getCallForwardUncondTimer(IIILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 88
    return v16

    .line 52
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :pswitch_12
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 56
    .local v17, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 58
    .local v18, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 60
    .local v19, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 62
    .local v20, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 64
    .local v21, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 66
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 68
    .local v23, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 70
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 72
    .local v25, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v26

    .line 73
    .local v26, "_arg9":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    invoke-virtual/range {v0 .. v10}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->setCallForwardUncondTimer(IIIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 74
    return v16

    .line 47
    .end local v17    # "_arg0":I
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":I
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":I
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":Ljava/lang/String;
    .end local v26    # "_arg9":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :cond_1
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v16

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

.class public abstract Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;
.super Landroid/os/Binder;
.source "IQtiImsExtListener.java"

# interfaces
.implements Lorg/codeaurora/ims/internal/IQtiImsExtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/internal/IQtiImsExtListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.ims.internal.IQtiImsExtListener"

.field static final TRANSACTION_notifyParticipantStatusInfo:I = 0xa

.field static final TRANSACTION_notifySsacStatus:I = 0x9

.field static final TRANSACTION_notifyVopsStatus:I = 0x8

.field static final TRANSACTION_onGetCallForwardUncondTimer:I = 0x2

.field static final TRANSACTION_onGetHandoverConfig:I = 0xe

.field static final TRANSACTION_onGetPacketCount:I = 0x4

.field static final TRANSACTION_onGetPacketErrorCount:I = 0x5

.field static final TRANSACTION_onSetCallForwardUncondTimer:I = 0x1

.field static final TRANSACTION_onSetHandoverConfig:I = 0xd

.field static final TRANSACTION_onUTReqFailed:I = 0x3

.field static final TRANSACTION_onVoltePreferenceQueried:I = 0xc

.field static final TRANSACTION_onVoltePreferenceUpdated:I = 0xb

.field static final TRANSACTION_receiveCallTransferResponse:I = 0x6

.field static final TRANSACTION_receiveCancelModifyCallResponse:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExtListener"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExtListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    .line 43
    const-string v13, "org.codeaurora.ims.internal.IQtiImsExtListener"

    .line 44
    .local v13, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v11, v0, :cond_3

    const/4 v0, 0x0

    packed-switch v11, :pswitch_data_0

    .line 223
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 211
    :pswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 218
    .local v2, "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetHandoverConfig(III)V

    .line 219
    return v14

    .line 201
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_1
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .restart local v1    # "_arg1":I
    invoke-virtual {v10, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onSetHandoverConfig(II)V

    .line 207
    return v14

    .line 189
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 193
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .restart local v2    # "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onVoltePreferenceQueried(III)V

    .line 197
    return v14

    .line 179
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_3
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    .restart local v1    # "_arg1":I
    invoke-virtual {v10, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onVoltePreferenceUpdated(II)V

    .line 185
    return v14

    .line 163
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 167
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 169
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 171
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v5, v14

    goto :goto_0

    :cond_0
    move v5, v0

    .line 174
    .local v5, "_arg4":Z
    :goto_0
    move-object v0, v10

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifyParticipantStatusInfo(IIILjava/lang/String;Z)V

    .line 175
    return v14

    .line 153
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 157
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v14

    nop

    .line 158
    .local v0, "_arg1":Z
    :cond_1
    invoke-virtual {v10, v1, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifySsacStatus(IZ)V

    .line 159
    return v14

    .line 143
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_6
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v14

    nop

    .line 148
    .restart local v0    # "_arg1":Z
    :cond_2
    invoke-virtual {v10, v1, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifyVopsStatus(IZ)V

    .line 149
    return v14

    .line 133
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_7
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->receiveCancelModifyCallResponse(II)V

    .line 139
    return v14

    .line 123
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_8
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .restart local v1    # "_arg1":I
    invoke-virtual {v10, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->receiveCallTransferResponse(II)V

    .line 129
    return v14

    .line 111
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_9
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 118
    .local v2, "_arg2":J
    invoke-virtual {v10, v0, v1, v2, v3}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetPacketErrorCount(IIJ)V

    .line 119
    return v14

    .line 99
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_a
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 106
    .restart local v2    # "_arg2":J
    invoke-virtual {v10, v0, v1, v2, v3}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetPacketCount(IIJ)V

    .line 107
    return v14

    .line 87
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_b
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onUTReqFailed(IILjava/lang/String;)V

    .line 95
    return v14

    .line 63
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 67
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 69
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 71
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 73
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 75
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 77
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 79
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 81
    .local v22, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 82
    .local v23, "_arg8":I
    move-object v0, v10

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    move/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetCallForwardUncondTimer(IIIIIIILjava/lang/String;I)V

    .line 83
    return v14

    .line 53
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":Ljava/lang/String;
    .end local v23    # "_arg8":I
    :pswitch_d
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .restart local v1    # "_arg1":I
    invoke-virtual {v10, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onSetCallForwardUncondTimer(II)V

    .line 59
    return v14

    .line 48
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v14

    nop

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

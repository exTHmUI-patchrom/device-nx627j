.class public abstract Lcom/android/ims/internal/IImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IImsCallSession.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSession"

.field static final TRANSACTION_accept:I = 0xd

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_deflect:I = 0xe

.field static final TRANSACTION_extendToConference:I = 0x15

.field static final TRANSACTION_getCallId:I = 0x2

.field static final TRANSACTION_getCallProfile:I = 0x3

.field static final TRANSACTION_getLocalCallProfile:I = 0x4

.field static final TRANSACTION_getProperty:I = 0x6

.field static final TRANSACTION_getRemoteCallProfile:I = 0x5

.field static final TRANSACTION_getState:I = 0x7

.field static final TRANSACTION_getVideoCallProvider:I = 0x1c

.field static final TRANSACTION_hold:I = 0x11

.field static final TRANSACTION_inviteParticipants:I = 0x16

.field static final TRANSACTION_isInCall:I = 0x8

.field static final TRANSACTION_isMultiparty:I = 0x1d

.field static final TRANSACTION_merge:I = 0x13

.field static final TRANSACTION_reject:I = 0xf

.field static final TRANSACTION_removeParticipants:I = 0x17

.field static final TRANSACTION_resume:I = 0x12

.field static final TRANSACTION_sendDtmf:I = 0x18

.field static final TRANSACTION_sendRttMessage:I = 0x20

.field static final TRANSACTION_sendRttModifyRequest:I = 0x1e

.field static final TRANSACTION_sendRttModifyResponse:I = 0x1f

.field static final TRANSACTION_sendUssd:I = 0x1b

.field static final TRANSACTION_setListener:I = 0x9

.field static final TRANSACTION_setMute:I = 0xa

.field static final TRANSACTION_start:I = 0xb

.field static final TRANSACTION_startConference:I = 0xc

.field static final TRANSACTION_startDtmf:I = 0x19

.field static final TRANSACTION_stopDtmf:I = 0x1a

.field static final TRANSACTION_terminate:I = 0x10

.field static final TRANSACTION_update:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.android.ims.internal.IImsCallSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSession;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsCallSession;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "com.android.ims.internal.IImsCallSession"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_e

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 396
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 387
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttMessage(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    return v2

    .line 378
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 381
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttModifyResponse(Z)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    return v2

    .line 364
    .end local v1    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .local v3, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_0

    .line 370
    .end local v3    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :cond_1
    nop

    .restart local v3    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :goto_0
    move-object v1, v3

    .line 372
    .end local v3    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    .local v1, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    return v2

    .line 356
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isMultiparty()Z

    move-result v1

    .line 358
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    return v2

    .line 348
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v1

    .line 350
    .local v1, "_result":Lcom/android/ims/internal/IImsVideoCallProvider;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    nop

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 352
    return v2

    .line 339
    .end local v1    # "_result":Lcom/android/ims/internal/IImsVideoCallProvider;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendUssd(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    return v2

    .line 332
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->stopDtmf()V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    return v2

    .line 323
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    .line 326
    .local v1, "_arg0":C
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->startDtmf(C)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    return v2

    .line 307
    .end local v1    # "_arg0":C
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    .line 311
    .restart local v1    # "_arg0":C
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 312
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .local v3, "_arg1":Landroid/os/Message;
    goto :goto_1

    .line 315
    .end local v3    # "_arg1":Landroid/os/Message;
    :cond_3
    nop

    .line 317
    .restart local v3    # "_arg1":Landroid/os/Message;
    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendDtmf(CLandroid/os/Message;)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    return v2

    .line 298
    .end local v1    # "_arg0":C
    .end local v3    # "_arg1":Landroid/os/Message;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->removeParticipants([Ljava/lang/String;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    return v2

    .line 289
    .end local v1    # "_arg0":[Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 292
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->inviteParticipants([Ljava/lang/String;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    return v2

    .line 280
    .end local v1    # "_arg0":[Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 283
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->extendToConference([Ljava/lang/String;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    return v2

    .line 264
    .end local v1    # "_arg0":[Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 269
    sget-object v3, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    .local v3, "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    goto :goto_2

    .line 272
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_4
    nop

    .line 274
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    :goto_2
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    return v2

    .line 257
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->merge()V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    return v2

    .line 243
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 246
    sget-object v1, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    .local v3, "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    goto :goto_3

    .line 249
    .end local v3    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_5
    nop

    .restart local v3    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :goto_3
    move-object v1, v3

    .line 251
    .end local v3    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    .local v1, "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    return v2

    .line 229
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 232
    sget-object v1, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    .restart local v3    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    goto :goto_4

    .line 235
    .end local v3    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_6
    nop

    .restart local v3    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :goto_4
    move-object v1, v3

    .line 237
    .end local v3    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    return v2

    .line 220
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->terminate(I)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    return v2

    .line 211
    .end local v1    # "_arg0":I
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->reject(I)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    return v2

    .line 202
    .end local v1    # "_arg0":I
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->deflect(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    return v2

    .line 186
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 191
    sget-object v3, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    .local v3, "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    goto :goto_5

    .line 194
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_7
    nop

    .line 196
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    :goto_5
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    return v2

    .line 170
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 175
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_6

    .line 178
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :cond_8
    nop

    .line 180
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :goto_6
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    return v2

    .line 154
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 159
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_7

    .line 162
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :cond_9
    nop

    .line 164
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :goto_7
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    return v2

    .line 145
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    move v1, v2

    nop

    .line 148
    .local v1, "_arg0":Z
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->setMute(Z)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    return v2

    .line 136
    .end local v1    # "_arg0":Z
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v1

    .line 139
    .local v1, "_arg0":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    return v2

    .line 128
    .end local v1    # "_arg0":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isInCall()Z

    move-result v1

    .line 130
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return v2

    .line 120
    .end local v1    # "_result":Z
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getState()I

    move-result v1

    .line 122
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v2

    .line 110
    .end local v1    # "_result":I
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v2

    .line 96
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 98
    .local v3, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v3, :cond_b

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {v3, p3, v2}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 104
    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_8
    return v2

    .line 82
    .end local v3    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 84
    .restart local v3    # "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v3, :cond_c

    .line 86
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v3, p3, v2}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 90
    :cond_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    :goto_9
    return v2

    .line 68
    .end local v3    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 70
    .restart local v3    # "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v3, :cond_d

    .line 72
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v3, p3, v2}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 76
    :cond_d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    :goto_a
    return v2

    .line 60
    .end local v3    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallId()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return v2

    .line 53
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->close()V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    return v2

    .line 48
    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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

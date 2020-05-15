.class public abstract Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallSessionListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IImsCallSessionListener"

.field static final TRANSACTION_callSessionConferenceExtendFailed:I = 0x12

.field static final TRANSACTION_callSessionConferenceExtendReceived:I = 0x13

.field static final TRANSACTION_callSessionConferenceExtended:I = 0x11

.field static final TRANSACTION_callSessionConferenceStateUpdated:I = 0x18

.field static final TRANSACTION_callSessionHandover:I = 0x1a

.field static final TRANSACTION_callSessionHandoverFailed:I = 0x1b

.field static final TRANSACTION_callSessionHeld:I = 0x5

.field static final TRANSACTION_callSessionHoldFailed:I = 0x6

.field static final TRANSACTION_callSessionHoldReceived:I = 0x7

.field static final TRANSACTION_callSessionInitiated:I = 0x2

.field static final TRANSACTION_callSessionInitiatedFailed:I = 0x3

.field static final TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x14

.field static final TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x15

.field static final TRANSACTION_callSessionMayHandover:I = 0x1c

.field static final TRANSACTION_callSessionMergeComplete:I = 0xc

.field static final TRANSACTION_callSessionMergeFailed:I = 0xd

.field static final TRANSACTION_callSessionMergeStarted:I = 0xb

.field static final TRANSACTION_callSessionMultipartyStateChanged:I = 0x1e

.field static final TRANSACTION_callSessionProgressing:I = 0x1

.field static final TRANSACTION_callSessionPropertyChanged:I = 0x23

.field static final TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x16

.field static final TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x17

.field static final TRANSACTION_callSessionResumeFailed:I = 0x9

.field static final TRANSACTION_callSessionResumeReceived:I = 0xa

.field static final TRANSACTION_callSessionResumed:I = 0x8

.field static final TRANSACTION_callSessionRttMessageReceived:I = 0x22

.field static final TRANSACTION_callSessionRttModifyRequestReceived:I = 0x20

.field static final TRANSACTION_callSessionRttModifyResponseReceived:I = 0x21

.field static final TRANSACTION_callSessionSuppServiceReceived:I = 0x1f

.field static final TRANSACTION_callSessionTerminated:I = 0x4

.field static final TRANSACTION_callSessionTtyModeReceived:I = 0x1d

.field static final TRANSACTION_callSessionUpdateFailed:I = 0xf

.field static final TRANSACTION_callSessionUpdateReceived:I = 0x10

.field static final TRANSACTION_callSessionUpdated:I = 0xe

.field static final TRANSACTION_callSessionUssdMessageReceived:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 34
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-object v1

    .line 36
    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    .line 45
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1a

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 473
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 465
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 468
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionPropertyChanged(I)V

    .line 469
    return v2

    .line 457
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 461
    return v2

    .line 449
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 452
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttModifyResponseReceived(I)V

    .line 453
    return v2

    .line 436
    .end local v1    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .local v1, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_0

    .line 442
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :cond_0
    nop

    .line 444
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 445
    return v2

    .line 423
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    sget-object v1, Landroid/telephony/ims/ImsSuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSuppServiceNotification;

    .local v1, "_arg0":Landroid/telephony/ims/ImsSuppServiceNotification;
    goto :goto_1

    .line 429
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsSuppServiceNotification;
    :cond_1
    nop

    .line 431
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsSuppServiceNotification;
    :goto_1
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 432
    return v2

    .line 415
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsSuppServiceNotification;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 418
    .local v1, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMultipartyStateChanged(Z)V

    .line 419
    return v2

    .line 407
    .end local v1    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 410
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTtyModeReceived(I)V

    .line 411
    return v2

    .line 397
    .end local v1    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 401
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 402
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMayHandover(II)V

    .line 403
    return v2

    .line 380
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 384
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 386
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 387
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_3

    .line 390
    .end local v1    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :cond_3
    nop

    .line 392
    .restart local v1    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :goto_3
    invoke-virtual {p0, v3, v4, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 393
    return v2

    .line 363
    .end local v1    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 367
    .restart local v3    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 369
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 370
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .restart local v1    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_4

    .line 373
    .end local v1    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    nop

    .line 375
    .restart local v1    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :goto_4
    invoke-virtual {p0, v3, v4, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 376
    return v2

    .line 353
    .end local v1    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 357
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 359
    return v2

    .line 340
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 343
    sget-object v1, Landroid/telephony/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsConferenceState;

    .local v1, "_arg0":Landroid/telephony/ims/ImsConferenceState;
    goto :goto_5

    .line 346
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsConferenceState;
    :cond_5
    nop

    .line 348
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsConferenceState;
    :goto_5
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 349
    return v2

    .line 327
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsConferenceState;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 330
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_6

    .line 333
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :cond_6
    nop

    .line 335
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :goto_6
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 336
    return v2

    .line 321
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestDelivered()V

    .line 323
    return v2

    .line 308
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 311
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_7

    .line 314
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :cond_7
    nop

    .line 316
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :goto_7
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 317
    return v2

    .line 302
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestDelivered()V

    .line 304
    return v2

    .line 287
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 291
    .local v3, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 292
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .local v1, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_8

    .line 295
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :cond_8
    nop

    .line 297
    .restart local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :goto_8
    invoke-virtual {p0, v3, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 298
    return v2

    .line 274
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 277
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_9

    .line 280
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :cond_9
    nop

    .line 282
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :goto_9
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 283
    return v2

    .line 259
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 263
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 264
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .local v1, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_a

    .line 267
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :cond_a
    nop

    .line 269
    .restart local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :goto_a
    invoke-virtual {p0, v3, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 270
    return v2

    .line 246
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 249
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .local v1, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_b

    .line 252
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :cond_b
    nop

    .line 254
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :goto_b
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 255
    return v2

    .line 233
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 236
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_c

    .line 239
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :cond_c
    nop

    .line 241
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :goto_c
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 242
    return v2

    .line 220
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 223
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .local v1, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_d

    .line 226
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :cond_d
    nop

    .line 228
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :goto_d
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 229
    return v2

    .line 207
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 210
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_e

    .line 213
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :cond_e
    nop

    .line 215
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :goto_e
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 216
    return v2

    .line 199
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 202
    .local v1, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 203
    return v2

    .line 184
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 188
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 189
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .local v1, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_f

    .line 192
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :cond_f
    nop

    .line 194
    .restart local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :goto_f
    invoke-virtual {p0, v3, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 195
    return v2

    .line 171
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 174
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .local v1, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_10

    .line 177
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :cond_10
    nop

    .line 179
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :goto_10
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 180
    return v2

    .line 158
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 161
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_11

    .line 164
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :cond_11
    nop

    .line 166
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :goto_11
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 167
    return v2

    .line 145
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 148
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .local v1, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_12

    .line 151
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :cond_12
    nop

    .line 153
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :goto_12
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 154
    return v2

    .line 132
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 135
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_13

    .line 138
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :cond_13
    nop

    .line 140
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :goto_13
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 141
    return v2

    .line 119
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 122
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_14

    .line 125
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :cond_14
    nop

    .line 127
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :goto_14
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 128
    return v2

    .line 106
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 109
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .local v1, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_15

    .line 112
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :cond_15
    nop

    .line 114
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :goto_15
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    .line 115
    return v2

    .line 93
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    .line 96
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_16

    .line 99
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :cond_16
    nop

    .line 101
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :goto_16
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 102
    return v2

    .line 80
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    .line 83
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_17

    .line 86
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :cond_17
    nop

    .line 88
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :goto_17
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 89
    return v2

    .line 67
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    .line 70
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .local v1, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_18

    .line 73
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :cond_18
    nop

    .line 75
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :goto_18
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 76
    return v2

    .line 54
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    .line 57
    sget-object v1, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    .local v1, "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    goto :goto_19

    .line 60
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_19
    nop

    .line 62
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :goto_19
    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 63
    return v2

    .line 49
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_20
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

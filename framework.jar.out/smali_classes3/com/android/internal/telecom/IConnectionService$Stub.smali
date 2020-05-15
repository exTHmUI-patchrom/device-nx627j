.class public abstract Lcom/android/internal/telecom/IConnectionService$Stub;
.super Landroid/os/Binder;
.source "IConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionService"

.field static final TRANSACTION_abort:I = 0x6

.field static final TRANSACTION_addConnectionServiceAdapter:I = 0x1

.field static final TRANSACTION_addParticipantWithConference:I = 0x1e

.field static final TRANSACTION_answer:I = 0x8

.field static final TRANSACTION_answerVideo:I = 0x7

.field static final TRANSACTION_conference:I = 0x13

.field static final TRANSACTION_connectionServiceFocusGained:I = 0x20

.field static final TRANSACTION_connectionServiceFocusLost:I = 0x1f

.field static final TRANSACTION_createConnection:I = 0x3

.field static final TRANSACTION_createConnectionComplete:I = 0x4

.field static final TRANSACTION_createConnectionFailed:I = 0x5

.field static final TRANSACTION_deflect:I = 0x9

.field static final TRANSACTION_disconnect:I = 0xc

.field static final TRANSACTION_handoverComplete:I = 0x22

.field static final TRANSACTION_handoverFailed:I = 0x21

.field static final TRANSACTION_hold:I = 0xe

.field static final TRANSACTION_mergeConference:I = 0x15

.field static final TRANSACTION_onCallAudioStateChanged:I = 0x10

.field static final TRANSACTION_onExtrasChanged:I = 0x1a

.field static final TRANSACTION_onPostDialContinue:I = 0x17

.field static final TRANSACTION_playDtmfTone:I = 0x11

.field static final TRANSACTION_pullExternalCall:I = 0x18

.field static final TRANSACTION_reject:I = 0xa

.field static final TRANSACTION_rejectWithMessage:I = 0xb

.field static final TRANSACTION_removeConnectionServiceAdapter:I = 0x2

.field static final TRANSACTION_respondToRttUpgradeRequest:I = 0x1d

.field static final TRANSACTION_sendCallEvent:I = 0x19

.field static final TRANSACTION_silence:I = 0xd

.field static final TRANSACTION_splitFromConference:I = 0x14

.field static final TRANSACTION_startRtt:I = 0x1b

.field static final TRANSACTION_stopDtmfTone:I = 0x12

.field static final TRANSACTION_stopRtt:I = 0x1c

.field static final TRANSACTION_swapConference:I = 0x16

.field static final TRANSACTION_unhold:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionService;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IConnectionService;

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v7, p0

    move v8, p1

    move-object v9, p2

    .line 45
    const-string v10, "com.android.internal.telecom.IConnectionService"

    .line 46
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v8, v0, :cond_32

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v8, :pswitch_data_0

    .line 667
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 652
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_0

    .line 660
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_0
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_0
    move-object v1, v2

    .line 662
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->handoverComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 663
    return v11

    .line 628
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 632
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    sget-object v1, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/ConnectionRequest;

    .local v1, "_arg1":Landroid/telecom/ConnectionRequest;
    goto :goto_1

    .line 636
    .end local v1    # "_arg1":Landroid/telecom/ConnectionRequest;
    :cond_1
    move-object v1, v2

    .line 639
    .restart local v1    # "_arg1":Landroid/telecom/ConnectionRequest;
    :goto_1
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 641
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 642
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_2

    .line 645
    .end local v2    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :cond_2
    nop

    .line 647
    .restart local v2    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :goto_2
    invoke-virtual {v7, v0, v1, v3, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->handoverFailed(Ljava/lang/String;Landroid/telecom/ConnectionRequest;ILandroid/telecom/Logging/Session$Info;)V

    .line 648
    return v11

    .line 615
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/ConnectionRequest;
    .end local v2    # "_arg3":Landroid/telecom/Logging/Session$Info;
    .end local v3    # "_arg2":I
    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 618
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg0":Landroid/telecom/Logging/Session$Info;
    goto :goto_3

    .line 621
    .end local v2    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :cond_3
    nop

    .restart local v2    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :goto_3
    move-object v0, v2

    .line 623
    .end local v2    # "_arg0":Landroid/telecom/Logging/Session$Info;
    .local v0, "_arg0":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->connectionServiceFocusGained(Landroid/telecom/Logging/Session$Info;)V

    .line 624
    return v11

    .line 602
    .end local v0    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 605
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .restart local v2    # "_arg0":Landroid/telecom/Logging/Session$Info;
    goto :goto_4

    .line 608
    .end local v2    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :cond_4
    nop

    .restart local v2    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :goto_4
    move-object v0, v2

    .line 610
    .end local v2    # "_arg0":Landroid/telecom/Logging/Session$Info;
    .restart local v0    # "_arg0":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->connectionServiceFocusLost(Landroid/telecom/Logging/Session$Info;)V

    .line 611
    return v11

    .line 592
    .end local v0    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :pswitch_4
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->addParticipantWithConference(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return v11

    .line 563
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 568
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_5

    .line 571
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :cond_5
    move-object v1, v2

    .line 574
    .restart local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :goto_5
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 575
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .local v3, "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    .line 578
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :cond_6
    move-object v3, v2

    .line 581
    .restart local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_6
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 582
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_7

    .line 585
    .end local v2    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :cond_7
    nop

    .line 587
    .restart local v2    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :goto_7
    invoke-virtual {v7, v0, v1, v3, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    .line 588
    return v11

    .line 548
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg3":Landroid/telecom/Logging/Session$Info;
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :pswitch_6
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 553
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_8

    .line 556
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_8
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_8
    move-object v1, v2

    .line 558
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopRtt(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 559
    return v11

    .line 519
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_7
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 524
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_9

    .line 527
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :cond_9
    move-object v1, v2

    .line 530
    .restart local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :goto_9
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 531
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .restart local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_a

    .line 534
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :cond_a
    move-object v3, v2

    .line 537
    .restart local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_a
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 538
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_b

    .line 541
    .end local v2    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :cond_b
    nop

    .line 543
    .restart local v2    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :goto_b
    invoke-virtual {v7, v0, v1, v3, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->startRtt(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    .line 544
    return v11

    .line 497
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg3":Landroid/telecom/Logging/Session$Info;
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :pswitch_8
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 501
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 502
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_c

    .line 505
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_c
    move-object v1, v2

    .line 508
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_c
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 509
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_d

    .line 512
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_d
    nop

    .line 514
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_d
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 515
    return v11

    .line 473
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_9
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 477
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 480
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg2":Landroid/os/Bundle;
    goto :goto_e

    .line 483
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :cond_e
    move-object v3, v2

    .line 486
    .restart local v3    # "_arg2":Landroid/os/Bundle;
    :goto_e
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 487
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_f

    .line 490
    .end local v2    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :cond_f
    nop

    .line 492
    .restart local v2    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :goto_f
    invoke-virtual {v7, v0, v1, v3, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 493
    return v11

    .line 458
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg3":Landroid/telecom/Logging/Session$Info;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 463
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_10

    .line 466
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_10
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_10
    move-object v1, v2

    .line 468
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->pullExternalCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 469
    return v11

    .line 441
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_b
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    move v0, v11

    nop

    .line 447
    .local v0, "_arg1":Z
    :cond_11
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 448
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_11

    .line 451
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_12
    nop

    .line 453
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_11
    invoke-virtual {v7, v1, v0, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onPostDialContinue(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 454
    return v11

    .line 426
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 431
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_12

    .line 434
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_13
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_12
    move-object v1, v2

    .line 436
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->swapConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 437
    return v11

    .line 411
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    .line 416
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_13

    .line 419
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_14
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_13
    move-object v1, v2

    .line 421
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->mergeConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 422
    return v11

    .line 396
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_e
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 401
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_14

    .line 404
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_15
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_14
    move-object v1, v2

    .line 406
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->splitFromConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 407
    return v11

    .line 379
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_f
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 383
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    .line 386
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_15

    .line 389
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_16
    nop

    .line 391
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_15
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->conference(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 392
    return v11

    .line 364
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_10
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 368
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    .line 369
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_16

    .line 372
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_17
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_16
    move-object v1, v2

    .line 374
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 375
    return v11

    .line 347
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_11
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    .line 353
    .local v1, "_arg1":C
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    .line 354
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_17

    .line 357
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_18
    nop

    .line 359
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_17
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V

    .line 360
    return v11

    .line 325
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":C
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_12
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    .line 330
    sget-object v1, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallAudioState;

    .local v1, "_arg1":Landroid/telecom/CallAudioState;
    goto :goto_18

    .line 333
    .end local v1    # "_arg1":Landroid/telecom/CallAudioState;
    :cond_19
    move-object v1, v2

    .line 336
    .restart local v1    # "_arg1":Landroid/telecom/CallAudioState;
    :goto_18
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 337
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_19

    .line 340
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_1a
    nop

    .line 342
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_19
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V

    .line 343
    return v11

    .line 310
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/CallAudioState;
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_13
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 315
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_1a

    .line 318
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_1b
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_1a
    move-object v1, v2

    .line 320
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 321
    return v11

    .line 295
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_14
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 300
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_1b

    .line 303
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_1c
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_1b
    move-object v1, v2

    .line 305
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 306
    return v11

    .line 280
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_15
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 285
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_1c

    .line 288
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_1d
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_1c
    move-object v1, v2

    .line 290
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->silence(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 291
    return v11

    .line 265
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_16
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 270
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_1d

    .line 273
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_1e
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_1d
    move-object v1, v2

    .line 275
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 276
    return v11

    .line 248
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_17
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 255
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_1e

    .line 258
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_1f
    nop

    .line 260
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_1e
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->rejectWithMessage(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 261
    return v11

    .line 233
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_18
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    .line 238
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_1f

    .line 241
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_20
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_1f
    move-object v1, v2

    .line 243
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->reject(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 244
    return v11

    .line 211
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_19
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    .line 216
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg1":Landroid/net/Uri;
    goto :goto_20

    .line 219
    .end local v1    # "_arg1":Landroid/net/Uri;
    :cond_21
    move-object v1, v2

    .line 222
    .restart local v1    # "_arg1":Landroid/net/Uri;
    :goto_20
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    .line 223
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_21

    .line 226
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_22
    nop

    .line 228
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_21
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->deflect(Ljava/lang/String;Landroid/net/Uri;Landroid/telecom/Logging/Session$Info;)V

    .line 229
    return v11

    .line 196
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_1a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    .line 201
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_22

    .line 204
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_23
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_22
    move-object v1, v2

    .line 206
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->answer(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 207
    return v11

    .line 179
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1b
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .local v1, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    .line 186
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_23

    .line 189
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_24
    nop

    .line 191
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_23
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->answerVideo(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 192
    return v11

    .line 164
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_1c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25

    .line 169
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_24

    .line 172
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_25
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_24
    move-object v1, v2

    .line 174
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->abort(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 175
    return v11

    .line 133
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    .line 136
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .local v1, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_25

    .line 139
    .end local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_26
    move-object v1, v2

    .line 142
    .restart local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_25
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    .line 145
    sget-object v3, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ConnectionRequest;

    .local v3, "_arg2":Landroid/telecom/ConnectionRequest;
    goto :goto_26

    .line 148
    .end local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    :cond_27
    move-object v3, v2

    .line 151
    .restart local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    :goto_26
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    move v4, v11

    goto :goto_27

    :cond_28
    move v4, v0

    .line 153
    .local v4, "_arg3":Z
    :goto_27
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    .line 154
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session$Info;

    .line 157
    .local v0, "_arg4":Landroid/telecom/Logging/Session$Info;
    move-object v5, v0

    goto :goto_28

    .end local v0    # "_arg4":Landroid/telecom/Logging/Session$Info;
    :cond_29
    move-object v5, v2

    .line 159
    .local v5, "_arg4":Landroid/telecom/Logging/Session$Info;
    :goto_28
    move-object v0, v7

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZLandroid/telecom/Logging/Session$Info;)V

    .line 160
    return v11

    .line 118
    .end local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/telecom/Logging/Session$Info;
    .end local v6    # "_arg1":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 123
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_29

    .line 126
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_2a
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_29
    move-object v1, v2

    .line 128
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnectionComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 129
    return v11

    .line 85
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1f
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 88
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .local v1, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_2a

    .line 91
    .end local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_2b
    move-object v1, v2

    .line 94
    .restart local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_2a
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    .line 97
    sget-object v3, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ConnectionRequest;

    .restart local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    goto :goto_2b

    .line 100
    .end local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    :cond_2c
    move-object v3, v2

    .line 103
    .restart local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    :goto_2b
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    move v4, v11

    goto :goto_2c

    :cond_2d
    move v4, v0

    .line 105
    .restart local v4    # "_arg3":Z
    :goto_2c
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    move v5, v11

    goto :goto_2d

    :cond_2e
    move v5, v0

    .line 107
    .local v5, "_arg4":Z
    :goto_2d
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 108
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session$Info;

    .line 111
    .local v0, "_arg5":Landroid/telecom/Logging/Session$Info;
    move-object v6, v0

    goto :goto_2e

    .end local v0    # "_arg5":Landroid/telecom/Logging/Session$Info;
    :cond_2f
    move-object v6, v2

    .line 113
    .local v6, "_arg5":Landroid/telecom/Logging/Session$Info;
    :goto_2e
    move-object v0, v7

    move-object v2, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    .line 114
    return v11

    .line 70
    .end local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/telecom/Logging/Session$Info;
    .end local v12    # "_arg1":Ljava/lang/String;
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    .line 74
    .local v0, "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    .line 75
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_2f

    .line 78
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_30
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_2f
    move-object v1, v2

    .line 80
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    .line 81
    return v11

    .line 55
    .end local v0    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_21
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    .line 59
    .restart local v0    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    .line 60
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_30

    .line 63
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_31
    nop

    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_30
    move-object v1, v2

    .line 65
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    .line 66
    return v11

    .line 50
    .end local v0    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

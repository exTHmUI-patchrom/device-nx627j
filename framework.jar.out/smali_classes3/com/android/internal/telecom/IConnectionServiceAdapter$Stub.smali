.class public abstract Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "IConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionServiceAdapter"

.field static final TRANSACTION_addConferenceCall:I = 0xd

.field static final TRANSACTION_addExistingConnection:I = 0x19

.field static final TRANSACTION_handleCreateConnectionComplete:I = 0x1

.field static final TRANSACTION_onConnectionEvent:I = 0x1d

.field static final TRANSACTION_onConnectionServiceFocusReleased:I = 0x23

.field static final TRANSACTION_onPhoneAccountChanged:I = 0x22

.field static final TRANSACTION_onPostDialChar:I = 0x10

.field static final TRANSACTION_onPostDialWait:I = 0xf

.field static final TRANSACTION_onRemoteRttRequest:I = 0x21

.field static final TRANSACTION_onRttInitiationFailure:I = 0x1f

.field static final TRANSACTION_onRttInitiationSuccess:I = 0x1e

.field static final TRANSACTION_onRttSessionRemotelyTerminated:I = 0x20

.field static final TRANSACTION_putExtras:I = 0x1a

.field static final TRANSACTION_queryRemoteConnectionServices:I = 0x11

.field static final TRANSACTION_removeCall:I = 0xe

.field static final TRANSACTION_removeExtras:I = 0x1b

.field static final TRANSACTION_resetCdmaConnectionTime:I = 0x24

.field static final TRANSACTION_setActive:I = 0x2

.field static final TRANSACTION_setAddress:I = 0x16

.field static final TRANSACTION_setAudioRoute:I = 0x1c

.field static final TRANSACTION_setCallerDisplayName:I = 0x17

.field static final TRANSACTION_setConferenceMergeFailed:I = 0xc

.field static final TRANSACTION_setConferenceableConnections:I = 0x18

.field static final TRANSACTION_setConnectionCapabilities:I = 0x9

.field static final TRANSACTION_setConnectionProperties:I = 0xa

.field static final TRANSACTION_setDialing:I = 0x4

.field static final TRANSACTION_setDisconnected:I = 0x6

.field static final TRANSACTION_setIsConferenced:I = 0xb

.field static final TRANSACTION_setIsVoipAudioMode:I = 0x14

.field static final TRANSACTION_setOnHold:I = 0x7

.field static final TRANSACTION_setPulling:I = 0x5

.field static final TRANSACTION_setRingbackRequested:I = 0x8

.field static final TRANSACTION_setRinging:I = 0x3

.field static final TRANSACTION_setStatusHints:I = 0x15

.field static final TRANSACTION_setVideoProvider:I = 0x12

.field static final TRANSACTION_setVideoState:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    .line 46
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_30

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 699
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 684
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 689
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_0

    .line 692
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_0
    nop

    .line 694
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->resetCdmaConnectionTime(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 695
    return v2

    .line 671
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg0":Landroid/telecom/Logging/Session$Info;
    goto :goto_1

    .line 677
    .end local v3    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :cond_1
    nop

    .restart local v3    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :goto_1
    move-object v1, v3

    .line 679
    .end local v3    # "_arg0":Landroid/telecom/Logging/Session$Info;
    .local v1, "_arg0":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V

    .line 680
    return v2

    .line 649
    .end local v1    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 654
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .local v4, "_arg1":Landroid/telecom/PhoneAccountHandle;
    goto :goto_2

    .line 657
    .end local v4    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    :cond_2
    move-object v4, v3

    .line 660
    .restart local v4    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 661
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_3

    .line 664
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_3
    nop

    .line 666
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_3
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V

    .line 667
    return v2

    .line 634
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 638
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 639
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_4

    .line 642
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_4
    nop

    .line 644
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_4
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 645
    return v2

    .line 619
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 623
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 624
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_5

    .line 627
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_5
    nop

    .line 629
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_5
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 630
    return v2

    .line 602
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 606
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 608
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 609
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_6

    .line 612
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_6
    nop

    .line 614
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_6
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 615
    return v2

    .line 587
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 591
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 592
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_7

    .line 595
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_7
    nop

    .line 597
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_7
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 598
    return v2

    .line 563
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 567
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 569
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 570
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, "_arg2":Landroid/os/Bundle;
    goto :goto_8

    .line 573
    .end local v5    # "_arg2":Landroid/os/Bundle;
    :cond_8
    move-object v5, v3

    .line 576
    .restart local v5    # "_arg2":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 577
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_9

    .line 580
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :cond_9
    nop

    .line 582
    .restart local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :goto_9
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 583
    return v2

    .line 544
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/os/Bundle;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 548
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 550
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 552
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 553
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_a

    .line 556
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :cond_a
    nop

    .line 558
    .restart local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :goto_a
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 559
    return v2

    .line 527
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 531
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 533
    .local v4, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 534
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_b

    .line 537
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_b
    nop

    .line 539
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_b
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 540
    return v2

    .line 505
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 509
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 510
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .local v4, "_arg1":Landroid/os/Bundle;
    goto :goto_c

    .line 513
    .end local v4    # "_arg1":Landroid/os/Bundle;
    :cond_c
    move-object v4, v3

    .line 516
    .restart local v4    # "_arg1":Landroid/os/Bundle;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 517
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_d

    .line 520
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_d
    nop

    .line 522
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_d
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 523
    return v2

    .line 483
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Landroid/os/Bundle;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 487
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 488
    sget-object v4, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/ParcelableConnection;

    .local v4, "_arg1":Landroid/telecom/ParcelableConnection;
    goto :goto_e

    .line 491
    .end local v4    # "_arg1":Landroid/telecom/ParcelableConnection;
    :cond_e
    move-object v4, v3

    .line 494
    .restart local v4    # "_arg1":Landroid/telecom/ParcelableConnection;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    .line 495
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_f

    .line 498
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_f
    nop

    .line 500
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_f
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V

    .line 501
    return v2

    .line 466
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Landroid/telecom/ParcelableConnection;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 470
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 472
    .local v4, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 473
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_10

    .line 476
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_10
    nop

    .line 478
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_10
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 479
    return v2

    .line 447
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 451
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 455
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 456
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_11

    .line 459
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :cond_11
    nop

    .line 461
    .restart local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :goto_11
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 462
    return v2

    .line 423
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 427
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 428
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .local v4, "_arg1":Landroid/net/Uri;
    goto :goto_12

    .line 431
    .end local v4    # "_arg1":Landroid/net/Uri;
    :cond_12
    move-object v4, v3

    .line 434
    .restart local v4    # "_arg1":Landroid/net/Uri;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 436
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    .line 437
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_13

    .line 440
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :cond_13
    nop

    .line 442
    .restart local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :goto_13
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V

    .line 443
    return v2

    .line 401
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Landroid/net/Uri;
    .end local v5    # "_arg2":I
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 405
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 406
    sget-object v4, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/StatusHints;

    .local v4, "_arg1":Landroid/telecom/StatusHints;
    goto :goto_14

    .line 409
    .end local v4    # "_arg1":Landroid/telecom/StatusHints;
    :cond_14
    move-object v4, v3

    .line 412
    .restart local v4    # "_arg1":Landroid/telecom/StatusHints;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    .line 413
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_15

    .line 416
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_15
    nop

    .line 418
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_15
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V

    .line 419
    return v2

    .line 384
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Landroid/telecom/StatusHints;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    move v1, v2

    nop

    .line 390
    .local v1, "_arg1":Z
    :cond_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    .line 391
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_16

    .line 394
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_17
    nop

    .line 396
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_16
    invoke-virtual {p0, v4, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 397
    return v2

    .line 367
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg0":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 373
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18

    .line 374
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_17

    .line 377
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_18
    nop

    .line 379
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_17
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 380
    return v2

    .line 350
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":I
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 354
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v4

    .line 356
    .local v4, "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    .line 357
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_18

    .line 360
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_19
    nop

    .line 362
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_18
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V

    .line 363
    return v2

    .line 335
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/RemoteServiceCallback;

    move-result-object v1

    .line 339
    .local v1, "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 340
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_19

    .line 343
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_1a
    nop

    .line 345
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_19
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Landroid/telecom/Logging/Session$Info;)V

    .line 346
    return v2

    .line 318
    .end local v1    # "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v4, v4

    .line 324
    .local v4, "_arg1":C
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 325
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_1a

    .line 328
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_1b
    nop

    .line 330
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_1a
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V

    .line 331
    return v2

    .line 301
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":C
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 308
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_1b

    .line 311
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_1c
    nop

    .line 313
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_1b
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 314
    return v2

    .line 286
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 291
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_1c

    .line 294
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_1d
    nop

    .line 296
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_1c
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 297
    return v2

    .line 264
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 269
    sget-object v4, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/ParcelableConference;

    .local v4, "_arg1":Landroid/telecom/ParcelableConference;
    goto :goto_1d

    .line 272
    .end local v4    # "_arg1":Landroid/telecom/ParcelableConference;
    :cond_1e
    move-object v4, v3

    .line 275
    .restart local v4    # "_arg1":Landroid/telecom/ParcelableConference;
    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    .line 276
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_1e

    .line 279
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_1f
    nop

    .line 281
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_1e
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V

    .line 282
    return v2

    .line 249
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Landroid/telecom/ParcelableConference;
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 254
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_1f

    .line 257
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_20
    nop

    .line 259
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_1f
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 260
    return v2

    .line 232
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    .line 239
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_20

    .line 242
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_21
    nop

    .line 244
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_20
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 245
    return v2

    .line 215
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 221
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    .line 222
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_21

    .line 225
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_22
    nop

    .line 227
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_21
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 228
    return v2

    .line 198
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":I
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 204
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    .line 205
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_22

    .line 208
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_23
    nop

    .line 210
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_22
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 211
    return v2

    .line 181
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":I
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    move v1, v2

    nop

    .line 187
    .local v1, "_arg1":Z
    :cond_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    .line 188
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_23

    .line 191
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_25
    nop

    .line 193
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_23
    invoke-virtual {p0, v4, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 194
    return v2

    .line 166
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg0":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    .line 171
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_24

    .line 174
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_26
    nop

    .line 176
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_24
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 177
    return v2

    .line 144
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    .line 149
    sget-object v4, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/DisconnectCause;

    .local v4, "_arg1":Landroid/telecom/DisconnectCause;
    goto :goto_25

    .line 152
    .end local v4    # "_arg1":Landroid/telecom/DisconnectCause;
    :cond_27
    move-object v4, v3

    .line 155
    .restart local v4    # "_arg1":Landroid/telecom/DisconnectCause;
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    .line 156
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_26

    .line 159
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :cond_28
    nop

    .line 161
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :goto_26
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V

    .line 162
    return v2

    .line 129
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Landroid/telecom/DisconnectCause;
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    .line 134
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_27

    .line 137
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_29
    nop

    .line 139
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_27
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 140
    return v2

    .line 114
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    .line 119
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_28

    .line 122
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_2a
    nop

    .line 124
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_28
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 125
    return v2

    .line 99
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 104
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_29

    .line 107
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_2b
    nop

    .line 109
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_29
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 110
    return v2

    .line 84
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 89
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_2a

    .line 92
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :cond_2c
    nop

    .line 94
    .restart local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_2a
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 95
    return v2

    .line 55
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    .line 60
    sget-object v4, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/ConnectionRequest;

    .local v4, "_arg1":Landroid/telecom/ConnectionRequest;
    goto :goto_2b

    .line 63
    .end local v4    # "_arg1":Landroid/telecom/ConnectionRequest;
    :cond_2d
    move-object v4, v3

    .line 66
    .restart local v4    # "_arg1":Landroid/telecom/ConnectionRequest;
    :goto_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    .line 67
    sget-object v5, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/ParcelableConnection;

    .local v5, "_arg2":Landroid/telecom/ParcelableConnection;
    goto :goto_2c

    .line 70
    .end local v5    # "_arg2":Landroid/telecom/ParcelableConnection;
    :cond_2e
    move-object v5, v3

    .line 73
    .restart local v5    # "_arg2":Landroid/telecom/ParcelableConnection;
    :goto_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    .line 74
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .local v3, "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_2d

    .line 77
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :cond_2f
    nop

    .line 79
    .restart local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :goto_2d
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V

    .line 80
    return v2

    .line 50
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    .end local v4    # "_arg1":Landroid/telecom/ConnectionRequest;
    .end local v5    # "_arg2":Landroid/telecom/ParcelableConnection;
    :cond_30
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
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

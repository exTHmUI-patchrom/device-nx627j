.class public abstract Landroid/os/IUserManager$Stub;
.super Landroid/os/Binder;
.source "IUserManager.java"

# interfaces
.implements Landroid/os/IUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUserManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IUserManager"

.field static final TRANSACTION_canAddMoreManagedProfiles:I = 0x12

.field static final TRANSACTION_canHaveRestrictedProfile:I = 0x1a

.field static final TRANSACTION_clearSeedAccountData:I = 0x2f

.field static final TRANSACTION_createProfileForUser:I = 0x4

.field static final TRANSACTION_createProfileForUserEvenWhenDisallowed:I = 0x33

.field static final TRANSACTION_createRestrictedProfile:I = 0x5

.field static final TRANSACTION_createUser:I = 0x3

.field static final TRANSACTION_evictCredentialEncryptionKey:I = 0x8

.field static final TRANSACTION_getApplicationRestrictions:I = 0x25

.field static final TRANSACTION_getApplicationRestrictionsForUser:I = 0x26

.field static final TRANSACTION_getCredentialOwnerProfile:I = 0x1

.field static final TRANSACTION_getDefaultGuestRestrictions:I = 0x28

.field static final TRANSACTION_getManagedProfileBadge:I = 0x35

.field static final TRANSACTION_getPrimaryUser:I = 0xe

.field static final TRANSACTION_getProfileIds:I = 0x11

.field static final TRANSACTION_getProfileParent:I = 0x13

.field static final TRANSACTION_getProfileParentId:I = 0x2

.field static final TRANSACTION_getProfiles:I = 0x10

.field static final TRANSACTION_getSeedAccountName:I = 0x2c

.field static final TRANSACTION_getSeedAccountOptions:I = 0x2e

.field static final TRANSACTION_getSeedAccountType:I = 0x2d

.field static final TRANSACTION_getUserAccount:I = 0x16

.field static final TRANSACTION_getUserCreationTime:I = 0x18

.field static final TRANSACTION_getUserHandle:I = 0x1c

.field static final TRANSACTION_getUserIcon:I = 0xd

.field static final TRANSACTION_getUserInfo:I = 0x15

.field static final TRANSACTION_getUserRestrictionSource:I = 0x1d

.field static final TRANSACTION_getUserRestrictionSources:I = 0x1e

.field static final TRANSACTION_getUserRestrictions:I = 0x1f

.field static final TRANSACTION_getUserSerialNumber:I = 0x1b

.field static final TRANSACTION_getUserStartRealtime:I = 0x3b

.field static final TRANSACTION_getUserUnlockRealtime:I = 0x3c

.field static final TRANSACTION_getUsers:I = 0xf

.field static final TRANSACTION_hasBaseUserRestriction:I = 0x20

.field static final TRANSACTION_hasRestrictedProfiles:I = 0x39

.field static final TRANSACTION_hasUserRestriction:I = 0x21

.field static final TRANSACTION_hasUserRestrictionOnAnyUser:I = 0x22

.field static final TRANSACTION_isDemoUser:I = 0x32

.field static final TRANSACTION_isManagedProfile:I = 0x31

.field static final TRANSACTION_isQuietModeEnabled:I = 0x2a

.field static final TRANSACTION_isRestricted:I = 0x19

.field static final TRANSACTION_isSameProfileGroup:I = 0x14

.field static final TRANSACTION_isUserNameSet:I = 0x38

.field static final TRANSACTION_isUserRunning:I = 0x37

.field static final TRANSACTION_isUserUnlocked:I = 0x36

.field static final TRANSACTION_isUserUnlockingOrUnlocked:I = 0x34

.field static final TRANSACTION_markGuestForDeletion:I = 0x29

.field static final TRANSACTION_removeUser:I = 0x9

.field static final TRANSACTION_removeUserEvenWhenDisallowed:I = 0xa

.field static final TRANSACTION_requestQuietModeEnabled:I = 0x3a

.field static final TRANSACTION_setApplicationRestrictions:I = 0x24

.field static final TRANSACTION_setDefaultGuestRestrictions:I = 0x27

.field static final TRANSACTION_setSeedAccountData:I = 0x2b

.field static final TRANSACTION_setUserAccount:I = 0x17

.field static final TRANSACTION_setUserAdmin:I = 0x7

.field static final TRANSACTION_setUserEnabled:I = 0x6

.field static final TRANSACTION_setUserIcon:I = 0xc

.field static final TRANSACTION_setUserName:I = 0xb

.field static final TRANSACTION_setUserRestriction:I = 0x23

.field static final TRANSACTION_someUserHasSeedAccount:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.IUserManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IUserManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.os.IUserManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IUserManager;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/os/IUserManager;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/os/IUserManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IUserManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 41
    const-string v10, "android.os.IUserManager"

    .line 42
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_19

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    .line 787
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 779
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v6}, Landroid/os/IUserManager$Stub;->getUserUnlockRealtime()J

    move-result-wide v0

    .line 781
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 783
    return v11

    .line 771
    .end local v0    # "_result":J
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v6}, Landroid/os/IUserManager$Stub;->getUserStartRealtime()J

    move-result-wide v0

    .line 773
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 775
    return v11

    .line 750
    .end local v0    # "_result":J
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v11

    nop

    .line 756
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 758
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 759
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .local v0, "_arg3":Landroid/content/IntentSender;
    goto :goto_0

    .line 762
    .end local v0    # "_arg3":Landroid/content/IntentSender;
    :cond_1
    nop

    .line 764
    .restart local v0    # "_arg3":Landroid/content/IntentSender;
    :goto_0
    invoke-virtual {v6, v2, v1, v3, v0}, Landroid/os/IUserManager$Stub;->requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;)Z

    move-result v4

    .line 765
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    return v11

    .line 742
    .end local v0    # "_arg3":Landroid/content/IntentSender;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v6}, Landroid/os/IUserManager$Stub;->hasRestrictedProfiles()Z

    move-result v0

    .line 744
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    return v11

    .line 732
    .end local v0    # "_result":Z
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 735
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->isUserNameSet(I)Z

    move-result v1

    .line 736
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    return v11

    .line 722
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 725
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->isUserRunning(I)Z

    move-result v1

    .line 726
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    return v11

    .line 712
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 715
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->isUserUnlocked(I)Z

    move-result v1

    .line 716
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    return v11

    .line 702
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 705
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->getManagedProfileBadge(I)I

    move-result v1

    .line 706
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    return v11

    .line 692
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 695
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    .line 696
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    return v11

    .line 670
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 676
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 678
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 679
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {v6, v0, v2, v3, v4}, Landroid/os/IUserManager$Stub;->createProfileForUserEvenWhenDisallowed(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 680
    .local v5, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    if-eqz v5, :cond_2

    .line 682
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    invoke-virtual {v5, v9, v11}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 686
    :cond_2
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    :goto_1
    return v11

    .line 660
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 663
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->isDemoUser(I)Z

    move-result v1

    .line 664
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    return v11

    .line 650
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 653
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->isManagedProfile(I)Z

    move-result v1

    .line 654
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    return v11

    .line 638
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/os/IUserManager$Stub;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 644
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    return v11

    .line 631
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v6}, Landroid/os/IUserManager$Stub;->clearSeedAccountData()V

    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    return v11

    .line 617
    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v6}, Landroid/os/IUserManager$Stub;->getSeedAccountOptions()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 619
    .local v0, "_result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    if-eqz v0, :cond_3

    .line 621
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    invoke-virtual {v0, v9, v11}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 625
    :cond_3
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    :goto_2
    return v11

    .line 609
    .end local v0    # "_result":Landroid/os/PersistableBundle;
    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v6}, Landroid/os/IUserManager$Stub;->getSeedAccountType()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    return v11

    .line 601
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v6}, Landroid/os/IUserManager$Stub;->getSeedAccountName()Ljava/lang/String;

    move-result-object v0

    .line 603
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 605
    return v11

    .line 579
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 583
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 585
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 587
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 588
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 591
    .local v4, "_arg3":Landroid/os/PersistableBundle;
    :goto_3
    move-object v4, v0

    goto :goto_4

    .end local v4    # "_arg3":Landroid/os/PersistableBundle;
    :cond_4
    goto :goto_3

    .line 594
    .restart local v4    # "_arg3":Landroid/os/PersistableBundle;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v5, v11

    goto :goto_5

    :cond_5
    move v5, v1

    .line 595
    .local v5, "_arg4":Z
    :goto_5
    move-object v0, v6

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    invoke-virtual/range {v0 .. v5}, Landroid/os/IUserManager$Stub;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    .line 596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    return v11

    .line 569
    .end local v4    # "_arg3":Landroid/os/PersistableBundle;
    .end local v5    # "_arg4":Z
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 572
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->isQuietModeEnabled(I)Z

    move-result v1

    .line 573
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    return v11

    .line 559
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 562
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->markGuestForDeletion(I)Z

    move-result v1

    .line 563
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    return v11

    .line 545
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v6}, Landroid/os/IUserManager$Stub;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 547
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v0, :cond_6

    .line 549
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 553
    :cond_6
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    :goto_6
    return v11

    .line 531
    .end local v0    # "_result":Landroid/os/Bundle;
    :pswitch_15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 534
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_7

    .line 537
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_7
    nop

    .line 539
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    return v11

    .line 513
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 518
    .local v2, "_arg1":I
    invoke-virtual {v6, v0, v2}, Landroid/os/IUserManager$Stub;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v3

    .line 519
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    if-eqz v3, :cond_8

    .line 521
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 525
    :cond_8
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    :goto_8
    return v11

    .line 497
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_17
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 500
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 501
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v2, :cond_9

    .line 503
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 507
    :cond_9
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    :goto_9
    return v11

    .line 479
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 484
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg1":Landroid/os/Bundle;
    goto :goto_a

    .line 487
    .end local v0    # "_arg1":Landroid/os/Bundle;
    :cond_a
    nop

    .line 490
    .restart local v0    # "_arg1":Landroid/os/Bundle;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 491
    .local v2, "_arg2":I
    invoke-virtual {v6, v1, v0, v2}, Landroid/os/IUserManager$Stub;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    return v11

    .line 466
    .end local v0    # "_arg1":Landroid/os/Bundle;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_19
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    move v1, v11

    nop

    .line 472
    .local v1, "_arg1":Z
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 473
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/IUserManager$Stub;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    return v11

    .line 456
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 459
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z

    move-result v1

    .line 460
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    return v11

    .line 444
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 448
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 449
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/os/IUserManager$Stub;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    .line 450
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    return v11

    .line 432
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 436
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 437
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/os/IUserManager$Stub;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    .line 438
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    return v11

    .line 416
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 419
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 420
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v2, :cond_c

    .line 422
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 426
    :cond_c
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    :goto_b
    return v11

    .line 404
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_1e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 409
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/os/IUserManager$Stub;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 410
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 412
    return v11

    .line 392
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    :pswitch_1f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 396
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 397
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/os/IUserManager$Stub;->getUserRestrictionSource(Ljava/lang/String;I)I

    move-result v2

    .line 398
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    return v11

    .line 382
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_20
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 385
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->getUserHandle(I)I

    move-result v1

    .line 386
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    return v11

    .line 372
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_21
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 375
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->getUserSerialNumber(I)I

    move-result v1

    .line 376
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    return v11

    .line 362
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_22
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 365
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->canHaveRestrictedProfile(I)Z

    move-result v1

    .line 366
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    return v11

    .line 354
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_23
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v6}, Landroid/os/IUserManager$Stub;->isRestricted()Z

    move-result v0

    .line 356
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    return v11

    .line 344
    .end local v0    # "_result":Z
    :pswitch_24
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 347
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->getUserCreationTime(I)J

    move-result-wide v1

    .line 348
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 350
    return v11

    .line 333
    .end local v0    # "_arg0":I
    .end local v1    # "_result":J
    :pswitch_25
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 337
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/os/IUserManager$Stub;->setUserAccount(ILjava/lang/String;)V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    return v11

    .line 323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_26
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 326
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->getUserAccount(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    return v11

    .line 307
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_27
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 310
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 311
    .local v2, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    if-eqz v2, :cond_d

    .line 313
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    invoke-virtual {v2, v9, v11}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 317
    :cond_d
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    :goto_c
    return v11

    .line 295
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_28
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 299
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/os/IUserManager$Stub;->isSameProfileGroup(II)Z

    move-result v2

    .line 301
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    return v11

    .line 279
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 282
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 283
    .local v2, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v2, :cond_e

    .line 285
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    invoke-virtual {v2, v9, v11}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 289
    :cond_e
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    :goto_d
    return v11

    .line 267
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_2a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 271
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    move v1, v11

    nop

    .line 272
    .local v1, "_arg1":Z
    :cond_f
    invoke-virtual {v6, v0, v1}, Landroid/os/IUserManager$Stub;->canAddMoreManagedProfiles(IZ)Z

    move-result v2

    .line 273
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    return v11

    .line 255
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_2b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    move v1, v11

    nop

    .line 260
    .restart local v1    # "_arg1":Z
    :cond_10
    invoke-virtual {v6, v0, v1}, Landroid/os/IUserManager$Stub;->getProfileIds(IZ)[I

    move-result-object v2

    .line 261
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 263
    return v11

    .line 243
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":[I
    :pswitch_2c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    move v1, v11

    nop

    .line 248
    .restart local v1    # "_arg1":Z
    :cond_11
    invoke-virtual {v6, v0, v1}, Landroid/os/IUserManager$Stub;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    .line 249
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 251
    return v11

    .line 233
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_2d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v1, v11

    nop

    :cond_12
    move v0, v1

    .line 236
    .local v0, "_arg0":Z
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 237
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 239
    return v11

    .line 219
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_2e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v6}, Landroid/os/IUserManager$Stub;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 221
    .local v0, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v0, :cond_13

    .line 223
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    invoke-virtual {v0, v9, v11}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 227
    :cond_13
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    :goto_e
    return v11

    .line 203
    .end local v0    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_2f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 206
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 207
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v2, :cond_14

    .line 209
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {v2, v9, v11}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 213
    :cond_14
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    :goto_f
    return v11

    .line 187
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_30
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 191
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    .line 192
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_10

    .line 195
    .end local v0    # "_arg1":Landroid/graphics/Bitmap;
    :cond_15
    nop

    .line 197
    .restart local v0    # "_arg1":Landroid/graphics/Bitmap;
    :goto_10
    invoke-virtual {v6, v1, v0}, Landroid/os/IUserManager$Stub;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    return v11

    .line 176
    .end local v0    # "_arg1":Landroid/graphics/Bitmap;
    .end local v1    # "_arg0":I
    :pswitch_31
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/os/IUserManager$Stub;->setUserName(ILjava/lang/String;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    return v11

    .line 166
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_32
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->removeUserEvenWhenDisallowed(I)Z

    move-result v1

    .line 170
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    return v11

    .line 156
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_33
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->removeUser(I)Z

    move-result v1

    .line 160
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    return v11

    .line 147
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_34
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->evictCredentialEncryptionKey(I)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    return v11

    .line 138
    .end local v0    # "_arg0":I
    :pswitch_35
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->setUserAdmin(I)V

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    return v11

    .line 129
    .end local v0    # "_arg0":I
    :pswitch_36
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->setUserEnabled(I)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    return v11

    .line 111
    .end local v0    # "_arg0":I
    :pswitch_37
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .local v2, "_arg1":I
    invoke-virtual {v6, v0, v2}, Landroid/os/IUserManager$Stub;->createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 117
    .local v3, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v3, :cond_16

    .line 119
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {v3, v9, v11}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    .line 123
    :cond_16
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    :goto_11
    return v11

    .line 89
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_38
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 97
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {v6, v0, v2, v3, v4}, Landroid/os/IUserManager$Stub;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 99
    .local v5, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v5, :cond_17

    .line 101
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {v5, v9, v11}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 105
    :cond_17
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    :goto_12
    return v11

    .line 71
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_39
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .restart local v2    # "_arg1":I
    invoke-virtual {v6, v0, v2}, Landroid/os/IUserManager$Stub;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 77
    .local v3, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v3, :cond_18

    .line 79
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v3, v9, v11}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    .line 83
    :cond_18
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    :goto_13
    return v11

    .line 61
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_3a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->getProfileParentId(I)I

    move-result v1

    .line 65
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return v11

    .line 51
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IUserManager$Stub;->getCredentialOwnerProfile(I)I

    move-result v1

    .line 55
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v11

    .line 46
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :cond_19
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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

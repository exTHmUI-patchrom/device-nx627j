.class public abstract Landroid/security/IKeystoreService$Stub;
.super Landroid/os/Binder;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.IKeystoreService"

.field static final TRANSACTION_abort:I = 0x1e

.field static final TRANSACTION_addAuthToken:I = 0x20

.field static final TRANSACTION_addRngEntropy:I = 0x16

.field static final TRANSACTION_attestDeviceIds:I = 0x24

.field static final TRANSACTION_attestKey:I = 0x23

.field static final TRANSACTION_begin:I = 0x1b

.field static final TRANSACTION_cancelConfirmationPrompt:I = 0x28

.field static final TRANSACTION_clear_uid:I = 0x15

.field static final TRANSACTION_del:I = 0x4

.field static final TRANSACTION_exist:I = 0x5

.field static final TRANSACTION_exportKey:I = 0x1a

.field static final TRANSACTION_finish:I = 0x1d

.field static final TRANSACTION_generate:I = 0xc

.field static final TRANSACTION_generateKey:I = 0x17

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_getKeyCharacteristics:I = 0x18

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_get_pubkey:I = 0x10

.field static final TRANSACTION_getmtime:I = 0x13

.field static final TRANSACTION_grant:I = 0x11

.field static final TRANSACTION_importKey:I = 0x19

.field static final TRANSACTION_importWrappedKey:I = 0x26

.field static final TRANSACTION_import_key:I = 0xd

.field static final TRANSACTION_insert:I = 0x3

.field static final TRANSACTION_isConfirmationPromptSupported:I = 0x29

.field static final TRANSACTION_isEmpty:I = 0xb

.field static final TRANSACTION_isOperationAuthorized:I = 0x1f

.field static final TRANSACTION_is_hardware_backed:I = 0x14

.field static final TRANSACTION_list:I = 0x6

.field static final TRANSACTION_lock:I = 0x9

.field static final TRANSACTION_onDeviceOffBody:I = 0x25

.field static final TRANSACTION_onKeyguardVisibilityChanged:I = 0x2a

.field static final TRANSACTION_onUserAdded:I = 0x21

.field static final TRANSACTION_onUserPasswordChanged:I = 0x8

.field static final TRANSACTION_onUserRemoved:I = 0x22

.field static final TRANSACTION_presentConfirmationPrompt:I = 0x27

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_sign:I = 0xe

.field static final TRANSACTION_ungrant:I = 0x12

.field static final TRANSACTION_unlock:I = 0xa

.field static final TRANSACTION_update:I = 0x1c

.field static final TRANSACTION_verify:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p0, p0, v0}, Landroid/security/IKeystoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    const-string v0, "android.security.IKeystoreService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/IKeystoreService;

    if-eqz v1, :cond_1

    .line 34
    move-object v1, v0

    check-cast v1, Landroid/security/IKeystoreService;

    return-object v1

    .line 36
    :cond_1
    new-instance v1, Landroid/security/IKeystoreService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/IKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 40
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

    .line 44
    const-string v15, "android.security.IKeystoreService"

    .line 45
    .local v15, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v12, v0, :cond_13

    const/4 v8, 0x0

    const/4 v0, 0x0

    packed-switch v12, :pswitch_data_0

    .line 739
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 727
    :pswitch_0
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v8, v10

    nop

    :cond_0
    move v0, v8

    .line 731
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 732
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->onKeyguardVisibilityChanged(ZI)I

    move-result v2

    .line 733
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    return v10

    .line 719
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_1
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeystoreService$Stub;->isConfirmationPromptSupported()Z

    move-result v0

    .line 721
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    return v10

    .line 709
    .end local v0    # "_result":Z
    :pswitch_2
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 712
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v11, v0}, Landroid/security/IKeystoreService$Stub;->cancelConfirmationPrompt(Landroid/os/IBinder;)I

    move-result v1

    .line 713
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    return v10

    .line 691
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 695
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 697
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 699
    .local v8, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 701
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 702
    .local v16, "_arg4":I
    move-object v0, v11

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/security/IKeystoreService$Stub;->presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I

    move-result v0

    .line 703
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    return v10

    .line 655
    .end local v0    # "_result":I
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":[B
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_4
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 659
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 661
    .local v17, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 663
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 665
    .local v19, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 666
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    .line 669
    .local v5, "_arg4":Landroid/security/keymaster/KeymasterArguments;
    :goto_0
    move-object v5, v0

    goto :goto_1

    .end local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    :cond_1
    goto :goto_0

    .line 672
    .restart local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 674
    .local v20, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 676
    .local v22, "_arg6":J
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object v8, v0

    .line 677
    .local v8, "_arg7":Landroid/security/keymaster/KeyCharacteristics;
    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-wide/from16 v6, v20

    move-object/from16 v24, v8

    move-wide/from16 v8, v22

    .end local v8    # "_arg7":Landroid/security/keymaster/KeyCharacteristics;
    .local v24, "_arg7":Landroid/security/keymaster/KeyCharacteristics;
    move v12, v10

    move-object/from16 v10, v24

    invoke-virtual/range {v0 .. v10}, Landroid/security/IKeystoreService$Stub;->importWrappedKey(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJLandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    .line 678
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    nop

    .line 681
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    move-object/from16 v1, v24

    invoke-virtual {v1, v14, v12}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 687
    .end local v24    # "_arg7":Landroid/security/keymaster/KeyCharacteristics;
    .local v1, "_arg7":Landroid/security/keymaster/KeyCharacteristics;
    return v12

    .line 647
    .end local v0    # "_result":I
    .end local v1    # "_arg7":Landroid/security/keymaster/KeyCharacteristics;
    .end local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":[B
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":[B
    .end local v20    # "_arg5":J
    .end local v22    # "_arg6":J
    :pswitch_5
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeystoreService$Stub;->onDeviceOffBody()I

    move-result v0

    .line 649
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    return v12

    .line 623
    .end local v0    # "_result":I
    :pswitch_6
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    .local v0, "_arg0":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_2

    .line 629
    .end local v0    # "_arg0":Landroid/security/keymaster/KeymasterArguments;
    :cond_2
    nop

    .line 632
    .restart local v0    # "_arg0":Landroid/security/keymaster/KeymasterArguments;
    :goto_2
    new-instance v1, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v1}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 633
    .local v1, "_arg1":Landroid/security/keymaster/KeymasterCertificateChain;
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v2

    .line 634
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    nop

    .line 637
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    invoke-virtual {v1, v14, v12}, Landroid/security/keymaster/KeymasterCertificateChain;->writeToParcel(Landroid/os/Parcel;I)V

    .line 643
    return v12

    .line 597
    .end local v0    # "_arg0":Landroid/security/keymaster/KeymasterArguments;
    .end local v1    # "_arg1":Landroid/security/keymaster/KeymasterCertificateChain;
    .end local v2    # "_result":I
    :pswitch_7
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 602
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    .local v0, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_3

    .line 605
    .end local v0    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :cond_3
    nop

    .line 608
    .restart local v0    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_3
    new-instance v2, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v2}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 609
    .local v2, "_arg2":Landroid/security/keymaster/KeymasterCertificateChain;
    invoke-virtual {v11, v1, v0, v2}, Landroid/security/IKeystoreService$Stub;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v3

    .line 610
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    nop

    .line 613
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    invoke-virtual {v2, v14, v12}, Landroid/security/keymaster/KeymasterCertificateChain;->writeToParcel(Landroid/os/Parcel;I)V

    .line 619
    return v12

    .line 587
    .end local v0    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/security/keymaster/KeymasterCertificateChain;
    .end local v3    # "_result":I
    :pswitch_8
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 590
    .local v0, "_arg0":I
    invoke-virtual {v11, v0}, Landroid/security/IKeystoreService$Stub;->onUserRemoved(I)I

    move-result v1

    .line 591
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    return v12

    .line 575
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_9
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 579
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 580
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->onUserAdded(II)I

    move-result v2

    .line 581
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    return v12

    .line 565
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_a
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 568
    .local v0, "_arg0":[B
    invoke-virtual {v11, v0}, Landroid/security/IKeystoreService$Stub;->addAuthToken([B)I

    move-result v1

    .line 569
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    return v12

    .line 555
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":I
    :pswitch_b
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 558
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v11, v0}, Landroid/security/IKeystoreService$Stub;->isOperationAuthorized(Landroid/os/IBinder;)Z

    move-result v1

    .line 559
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    return v12

    .line 545
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_c
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 548
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v11, v0}, Landroid/security/IKeystoreService$Stub;->abort(Landroid/os/IBinder;)I

    move-result v1

    .line 549
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    return v12

    .line 518
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_d
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 522
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 523
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    .local v0, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_4

    .line 526
    .end local v0    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :cond_4
    nop

    .line 529
    .restart local v0    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 531
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 532
    .local v3, "_arg3":[B
    invoke-virtual {v11, v1, v0, v2, v3}, Landroid/security/IKeystoreService$Stub;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v4

    .line 533
    .local v4, "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v4, :cond_5

    .line 535
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    invoke-virtual {v4, v14, v12}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 539
    :cond_5
    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    :goto_5
    return v12

    .line 493
    .end local v0    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":Landroid/security/keymaster/OperationResult;
    :pswitch_e
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 497
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 498
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    .restart local v0    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_6

    .line 501
    .end local v0    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :cond_6
    nop

    .line 504
    .restart local v0    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 505
    .restart local v2    # "_arg2":[B
    invoke-virtual {v11, v1, v0, v2}, Landroid/security/IKeystoreService$Stub;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v3

    .line 506
    .local v3, "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v3, :cond_7

    .line 508
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    invoke-virtual {v3, v14, v12}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 512
    :cond_7
    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    :goto_7
    return v12

    .line 460
    .end local v0    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":Landroid/security/keymaster/OperationResult;
    :pswitch_f
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 464
    .local v9, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 466
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 468
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v4, v12

    goto :goto_8

    :cond_8
    move v4, v8

    .line 470
    .local v4, "_arg3":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 471
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    .line 474
    .restart local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    :goto_9
    move-object v5, v0

    goto :goto_a

    .end local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    :cond_9
    goto :goto_9

    .line 477
    .restart local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 479
    .local v17, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 480
    .local v18, "_arg6":I
    move-object v0, v11

    move-object v1, v9

    move-object v2, v10

    move/from16 v3, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/security/IKeystoreService$Stub;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object v0

    .line 481
    .local v0, "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    if-eqz v0, :cond_a

    .line 483
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    invoke-virtual {v0, v14, v12}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 487
    :cond_a
    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    :goto_b
    return v12

    .line 426
    .end local v0    # "_result":Landroid/security/keymaster/OperationResult;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg5":[B
    .end local v18    # "_arg6":I
    :pswitch_10
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 430
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 432
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 433
    sget-object v1, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/keymaster/KeymasterBlob;

    .line 436
    .local v1, "_arg2":Landroid/security/keymaster/KeymasterBlob;
    move-object v3, v1

    goto :goto_c

    .end local v1    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :cond_b
    move-object v3, v0

    .line 439
    .local v3, "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 440
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterBlob;

    .line 443
    .local v4, "_arg3":Landroid/security/keymaster/KeymasterBlob;
    :goto_d
    move-object v4, v0

    goto :goto_e

    .end local v4    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    :cond_c
    goto :goto_d

    .line 446
    .restart local v4    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 447
    .local v9, "_arg4":I
    move-object v0, v11

    move-object v1, v6

    move v2, v7

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/security/IKeystoreService$Stub;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object v0

    .line 448
    .local v0, "_result":Landroid/security/keymaster/ExportResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    if-eqz v0, :cond_d

    .line 450
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    invoke-virtual {v0, v14, v12}, Landroid/security/keymaster/ExportResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 454
    :cond_d
    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    :goto_f
    return v12

    .line 392
    .end local v0    # "_result":Landroid/security/keymaster/ExportResult;
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v4    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v9    # "_arg4":I
    :pswitch_11
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 396
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 397
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    .line 400
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_10
    move-object v2, v0

    goto :goto_11

    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :cond_e
    goto :goto_10

    .line 403
    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 405
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 407
    .local v10, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 409
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 411
    .local v17, "_arg5":I
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object v7, v0

    .line 412
    .local v7, "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    move-object v0, v11

    move-object v1, v8

    move v3, v9

    move-object v4, v10

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v25, v7

    .end local v7    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .local v25, "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual/range {v0 .. v7}, Landroid/security/IKeystoreService$Stub;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    .line 413
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    nop

    .line 416
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    move-object/from16 v1, v25

    invoke-virtual {v1, v14, v12}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 422
    .end local v25    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .local v1, "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    return v12

    .line 357
    .end local v0    # "_result":I
    .end local v1    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":[B
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":I
    :pswitch_12
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 361
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 362
    sget-object v1, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/keymaster/KeymasterBlob;

    .line 365
    .local v1, "_arg1":Landroid/security/keymaster/KeymasterBlob;
    move-object v2, v1

    goto :goto_12

    .end local v1    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    :cond_f
    move-object v2, v0

    .line 368
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterBlob;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 369
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterBlob;

    .line 372
    .restart local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :goto_13
    move-object v3, v0

    goto :goto_14

    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :cond_10
    goto :goto_13

    .line 375
    .restart local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 377
    .local v7, "_arg3":I
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object v8, v0

    .line 378
    .local v8, "_arg4":Landroid/security/keymaster/KeyCharacteristics;
    move-object v0, v11

    move-object v1, v6

    move v4, v7

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/security/IKeystoreService$Stub;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    .line 379
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    nop

    .line 382
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    invoke-virtual {v8, v14, v12}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 388
    return v12

    .line 325
    .end local v0    # "_result":I
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/security/keymaster/KeyCharacteristics;
    :pswitch_13
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 329
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 330
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    .line 333
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_15
    move-object v2, v0

    goto :goto_16

    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :cond_11
    goto :goto_15

    .line 336
    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 338
    .local v8, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 340
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 342
    .local v10, "_arg4":I
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object v6, v0

    .line 343
    .local v6, "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    move-object v0, v11

    move-object v1, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    move-object/from16 v26, v6

    .end local v6    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .local v26, "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual/range {v0 .. v6}, Landroid/security/IKeystoreService$Stub;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    .line 344
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    nop

    .line 347
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    move-object/from16 v1, v26

    invoke-virtual {v1, v14, v12}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 353
    .end local v26    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .local v1, "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    return v12

    .line 313
    .end local v0    # "_result":I
    .end local v1    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg2":[B
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    :pswitch_14
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 317
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 318
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->addRngEntropy([BI)I

    move-result v2

    .line 319
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    return v12

    .line 303
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_15
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 306
    .local v0, "_arg0":J
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->clear_uid(J)I

    move-result v2

    .line 307
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    return v12

    .line 293
    .end local v0    # "_arg0":J
    .end local v2    # "_result":I
    :pswitch_16
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/security/IKeystoreService$Stub;->is_hardware_backed(Ljava/lang/String;)I

    move-result v1

    .line 297
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    return v12

    .line 281
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_17
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->getmtime(Ljava/lang/String;I)J

    move-result-wide v2

    .line 287
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {v14, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    return v12

    .line 269
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_18
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 274
    .restart local v1    # "_arg1":I
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->ungrant(Ljava/lang/String;I)I

    move-result v2

    .line 275
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    return v12

    .line 257
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_19
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 262
    .restart local v1    # "_arg1":I
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->grant(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    return v12

    .line 247
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1a
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/security/IKeystoreService$Stub;->get_pubkey(Ljava/lang/String;)[B

    move-result-object v1

    .line 251
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 253
    return v12

    .line 233
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[B
    :pswitch_1b
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 239
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 240
    .local v2, "_arg2":[B
    invoke-virtual {v11, v0, v1, v2}, Landroid/security/IKeystoreService$Stub;->verify(Ljava/lang/String;[B[B)I

    move-result v3

    .line 241
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    return v12

    .line 221
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":I
    :pswitch_1c
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 226
    .restart local v1    # "_arg1":[B
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->sign(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 227
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 229
    return v12

    .line 205
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":[B
    :pswitch_1d
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 211
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 214
    .local v3, "_arg3":I
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/security/IKeystoreService$Stub;->import_key(Ljava/lang/String;[BII)I

    move-result v4

    .line 215
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    return v12

    .line 180
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_1e
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 184
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 186
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 188
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 190
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 192
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 193
    sget-object v0, Landroid/security/KeystoreArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/KeystoreArguments;

    .line 196
    .local v6, "_arg5":Landroid/security/KeystoreArguments;
    :goto_17
    move-object v6, v0

    goto :goto_18

    .end local v6    # "_arg5":Landroid/security/KeystoreArguments;
    :cond_12
    goto :goto_17

    .line 198
    .restart local v6    # "_arg5":Landroid/security/KeystoreArguments;
    :goto_18
    move-object v0, v11

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Landroid/security/IKeystoreService$Stub;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    move-result v0

    .line 199
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return v12

    .line 170
    .end local v0    # "_result":I
    .end local v6    # "_arg5":Landroid/security/KeystoreArguments;
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_1f
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .local v0, "_arg0":I
    invoke-virtual {v11, v0}, Landroid/security/IKeystoreService$Stub;->isEmpty(I)I

    move-result v1

    .line 174
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    return v12

    .line 158
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_20
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->unlock(ILjava/lang/String;)I

    move-result v2

    .line 164
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return v12

    .line 148
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_21
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual {v11, v0}, Landroid/security/IKeystoreService$Stub;->lock(I)I

    move-result v1

    .line 152
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return v12

    .line 136
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_22
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->onUserPasswordChanged(ILjava/lang/String;)I

    move-result v2

    .line 142
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return v12

    .line 128
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_23
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeystoreService$Stub;->reset()I

    move-result v0

    .line 130
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return v12

    .line 116
    .end local v0    # "_result":I
    :pswitch_24
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 124
    return v12

    .line 104
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_25
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    .restart local v1    # "_arg1":I
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->exist(Ljava/lang/String;I)I

    move-result v2

    .line 110
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v12

    .line 92
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_26
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .restart local v1    # "_arg1":I
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->del(Ljava/lang/String;I)I

    move-result v2

    .line 98
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v12

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_27
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 82
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 85
    .restart local v3    # "_arg3":I
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/security/IKeystoreService$Stub;->insert(Ljava/lang/String;[BII)I

    move-result v4

    .line 86
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v12

    .line 64
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_28
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Landroid/security/IKeystoreService$Stub;->get(Ljava/lang/String;I)[B

    move-result-object v2

    .line 70
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 72
    return v12

    .line 54
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[B
    :pswitch_29
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, "_arg0":I
    invoke-virtual {v11, v0}, Landroid/security/IKeystoreService$Stub;->getState(I)I

    move-result v1

    .line 58
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v12

    .line 49
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :cond_13
    move v12, v10

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

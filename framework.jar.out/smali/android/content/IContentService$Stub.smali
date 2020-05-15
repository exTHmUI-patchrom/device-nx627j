.class public abstract Landroid/content/IContentService$Stub;
.super Landroid/os/Binder;
.source "IContentService.java"

# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final TRANSACTION_addPeriodicSync:I = 0xf

.field static final TRANSACTION_addStatusChangeListener:I = 0x22

.field static final TRANSACTION_cancelRequest:I = 0x9

.field static final TRANSACTION_cancelSync:I = 0x7

.field static final TRANSACTION_cancelSyncAsUser:I = 0x8

.field static final TRANSACTION_getCache:I = 0x25

.field static final TRANSACTION_getCurrentSyncs:I = 0x18

.field static final TRANSACTION_getCurrentSyncsAsUser:I = 0x19

.field static final TRANSACTION_getIsSyncable:I = 0x11

.field static final TRANSACTION_getIsSyncableAsUser:I = 0x12

.field static final TRANSACTION_getMasterSyncAutomatically:I = 0x16

.field static final TRANSACTION_getMasterSyncAutomaticallyAsUser:I = 0x17

.field static final TRANSACTION_getPeriodicSyncs:I = 0xe

.field static final TRANSACTION_getSyncAdapterPackagesForAuthorityAsUser:I = 0x1c

.field static final TRANSACTION_getSyncAdapterTypes:I = 0x1a

.field static final TRANSACTION_getSyncAdapterTypesAsUser:I = 0x1b

.field static final TRANSACTION_getSyncAutomatically:I = 0xa

.field static final TRANSACTION_getSyncAutomaticallyAsUser:I = 0xb

.field static final TRANSACTION_getSyncStatus:I = 0x1e

.field static final TRANSACTION_getSyncStatusAsUser:I = 0x1f

.field static final TRANSACTION_isSyncActive:I = 0x1d

.field static final TRANSACTION_isSyncPending:I = 0x20

.field static final TRANSACTION_isSyncPendingAsUser:I = 0x21

.field static final TRANSACTION_notifyChange:I = 0x3

.field static final TRANSACTION_putCache:I = 0x24

.field static final TRANSACTION_registerContentObserver:I = 0x2

.field static final TRANSACTION_removePeriodicSync:I = 0x10

.field static final TRANSACTION_removeStatusChangeListener:I = 0x23

.field static final TRANSACTION_requestSync:I = 0x4

.field static final TRANSACTION_resetTodayStats:I = 0x26

.field static final TRANSACTION_setIsSyncable:I = 0x13

.field static final TRANSACTION_setMasterSyncAutomatically:I = 0x14

.field static final TRANSACTION_setMasterSyncAutomaticallyAsUser:I = 0x15

.field static final TRANSACTION_setSyncAutomatically:I = 0xc

.field static final TRANSACTION_setSyncAutomaticallyAsUser:I = 0xd

.field static final TRANSACTION_sync:I = 0x5

.field static final TRANSACTION_syncAsUser:I = 0x6

.field static final TRANSACTION_unregisterContentObserver:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.IContentService"

    invoke-virtual {p0, p0, v0}, Landroid/content/IContentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.content.IContentService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IContentService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/content/IContentService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/content/IContentService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/IContentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
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

    .line 41
    const-string v11, "android.content.IContentService"

    .line 42
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_2e

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v8, :pswitch_data_0

    .line 720
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 713
    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->resetTodayStats()V

    .line 715
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    return v12

    .line 688
    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .local v2, "_arg1":Landroid/net/Uri;
    goto :goto_0

    .line 696
    .end local v2    # "_arg1":Landroid/net/Uri;
    :cond_0
    nop

    .line 699
    .restart local v2    # "_arg1":Landroid/net/Uri;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 700
    .local v3, "_arg2":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/content/IContentService$Stub;->getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    move-result-object v4

    .line 701
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    if-eqz v4, :cond_1

    .line 703
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    invoke-virtual {v4, v10, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 707
    :cond_1
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    :goto_1
    return v12

    .line 663
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 668
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg1":Landroid/net/Uri;
    goto :goto_2

    .line 671
    .end local v1    # "_arg1":Landroid/net/Uri;
    :cond_2
    move-object v1, v2

    .line 674
    .restart local v1    # "_arg1":Landroid/net/Uri;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 675
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg2":Landroid/os/Bundle;
    goto :goto_3

    .line 678
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_3
    nop

    .line 681
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 682
    .local v3, "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/content/IContentService$Stub;->putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    return v12

    .line 654
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":I
    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v0

    .line 657
    .local v0, "_arg0":Landroid/content/ISyncStatusObserver;
    invoke-virtual {v7, v0}, Landroid/content/IContentService$Stub;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    return v12

    .line 643
    .end local v0    # "_arg0":Landroid/content/ISyncStatusObserver;
    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 647
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v1

    .line 648
    .local v1, "_arg1":Landroid/content/ISyncStatusObserver;
    invoke-virtual {v7, v0, v1}, Landroid/content/IContentService$Stub;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    return v12

    .line 617
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ISyncStatusObserver;
    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 620
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .local v0, "_arg0":Landroid/accounts/Account;
    goto :goto_4

    .line 623
    .end local v0    # "_arg0":Landroid/accounts/Account;
    :cond_4
    move-object v0, v2

    .line 626
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 629
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .local v2, "_arg2":Landroid/content/ComponentName;
    goto :goto_5

    .line 632
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    :cond_5
    nop

    .line 635
    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 636
    .restart local v3    # "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/content/IContentService$Stub;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v4

    .line 637
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    return v12

    .line 593
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 596
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .restart local v0    # "_arg0":Landroid/accounts/Account;
    goto :goto_6

    .line 599
    .end local v0    # "_arg0":Landroid/accounts/Account;
    :cond_6
    move-object v0, v2

    .line 602
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 604
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 605
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    goto :goto_7

    .line 608
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    :cond_7
    nop

    .line 610
    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/IContentService$Stub;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v3

    .line 611
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    return v12

    .line 561
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 564
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .local v1, "_arg0":Landroid/accounts/Account;
    goto :goto_8

    .line 567
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :cond_8
    move-object v1, v2

    .line 570
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 573
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    goto :goto_9

    .line 576
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    :cond_9
    nop

    .line 579
    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 580
    .local v4, "_arg3":I
    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/content/IContentService$Stub;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v5

    .line 581
    .local v5, "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    if-eqz v5, :cond_a

    .line 583
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    invoke-virtual {v5, v10, v12}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 587
    :cond_a
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    :goto_a
    return v12

    .line 531
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/content/SyncStatusInfo;
    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 534
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_b

    .line 537
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :cond_b
    move-object v1, v2

    .line 540
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 542
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 543
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    goto :goto_c

    .line 546
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    :cond_c
    nop

    .line 548
    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    :goto_c
    invoke-virtual {v7, v1, v3, v2}, Landroid/content/IContentService$Stub;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;

    move-result-object v4

    .line 549
    .local v4, "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    if-eqz v4, :cond_d

    .line 551
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    invoke-virtual {v4, v10, v12}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 555
    :cond_d
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    :goto_d
    return v12

    .line 507
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/SyncStatusInfo;
    :pswitch_9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 510
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .restart local v0    # "_arg0":Landroid/accounts/Account;
    goto :goto_e

    .line 513
    .end local v0    # "_arg0":Landroid/accounts/Account;
    :cond_e
    move-object v0, v2

    .line 516
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 519
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    goto :goto_f

    .line 522
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    :cond_f
    nop

    .line 524
    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/IContentService$Stub;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v3

    .line 525
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    return v12

    .line 495
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 500
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/content/IContentService$Stub;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 503
    return v12

    .line 485
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 488
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v1

    .line 489
    .local v1, "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 491
    return v12

    .line 477
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/content/SyncAdapterType;
    :pswitch_c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 479
    .local v0, "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 481
    return v12

    .line 467
    .end local v0    # "_result":[Landroid/content/SyncAdapterType;
    :pswitch_d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 470
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Landroid/content/IContentService$Stub;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v1

    .line 471
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 473
    return v12

    .line 459
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :pswitch_e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    .line 461
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 463
    return v12

    .line 449
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :pswitch_f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 452
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    .line 453
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    return v12

    .line 441
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomatically()Z

    move-result v0

    .line 443
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    return v12

    .line 430
    .end local v0    # "_result":Z
    :pswitch_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    move v0, v12

    nop

    .line 434
    .local v0, "_arg0":Z
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 435
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/content/IContentService$Stub;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    return v12

    .line 421
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_12
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    move v0, v12

    nop

    .line 424
    .restart local v0    # "_arg0":Z
    :cond_11
    invoke-virtual {v7, v0}, Landroid/content/IContentService$Stub;->setMasterSyncAutomatically(Z)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    return v12

    .line 403
    .end local v0    # "_arg0":Z
    :pswitch_13
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 406
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/accounts/Account;

    .local v2, "_arg0":Landroid/accounts/Account;
    goto :goto_10

    .line 409
    .end local v2    # "_arg0":Landroid/accounts/Account;
    :cond_12
    nop

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_10
    move-object v0, v2

    .line 412
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 415
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/IContentService$Stub;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    return v12

    .line 384
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_14
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 387
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/accounts/Account;

    .local v2, "_arg0":Landroid/accounts/Account;
    goto :goto_11

    .line 390
    .end local v2    # "_arg0":Landroid/accounts/Account;
    :cond_13
    nop

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_11
    move-object v0, v2

    .line 393
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 395
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 396
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/IContentService$Stub;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v3

    .line 397
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    return v12

    .line 367
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_15
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 370
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/accounts/Account;

    .local v2, "_arg0":Landroid/accounts/Account;
    goto :goto_12

    .line 373
    .end local v2    # "_arg0":Landroid/accounts/Account;
    :cond_14
    nop

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_12
    move-object v0, v2

    .line 376
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/content/IContentService$Stub;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    .line 378
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    return v12

    .line 344
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_16
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 347
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .restart local v0    # "_arg0":Landroid/accounts/Account;
    goto :goto_13

    .line 350
    .end local v0    # "_arg0":Landroid/accounts/Account;
    :cond_15
    move-object v0, v2

    .line 353
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 355
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    .line 356
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg2":Landroid/os/Bundle;
    goto :goto_14

    .line 359
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_16
    nop

    .line 361
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_14
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/IContentService$Stub;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    return v12

    .line 319
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_17
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 322
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 325
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    move-object v1, v0

    goto :goto_15

    .end local v0    # "_arg0":Landroid/accounts/Account;
    :cond_17
    move-object v1, v2

    .line 328
    .local v1, "_arg0":Landroid/accounts/Account;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 331
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 334
    .local v0, "_arg2":Landroid/os/Bundle;
    move-object v3, v0

    goto :goto_16

    .end local v0    # "_arg2":Landroid/os/Bundle;
    :cond_18
    move-object v3, v2

    .line 337
    .local v3, "_arg2":Landroid/os/Bundle;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 338
    .local v13, "_arg3":J
    move-object v0, v7

    move-object v2, v6

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Landroid/content/IContentService$Stub;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    return v12

    .line 295
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg3":J
    :pswitch_18
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 298
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .local v0, "_arg0":Landroid/accounts/Account;
    goto :goto_17

    .line 301
    .end local v0    # "_arg0":Landroid/accounts/Account;
    :cond_19
    move-object v0, v2

    .line 304
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 307
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .local v2, "_arg2":Landroid/content/ComponentName;
    goto :goto_18

    .line 310
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    :cond_1a
    nop

    .line 312
    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    :goto_18
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/IContentService$Stub;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 313
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 315
    return v12

    .line 275
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :pswitch_19
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 278
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/accounts/Account;

    .local v2, "_arg0":Landroid/accounts/Account;
    goto :goto_19

    .line 281
    .end local v2    # "_arg0":Landroid/accounts/Account;
    :cond_1b
    nop

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_19
    move-object v1, v2

    .line 284
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    move v0, v12

    nop

    .line 288
    .local v0, "_arg2":Z
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 289
    .local v3, "_arg3":I
    invoke-virtual {v7, v1, v2, v0, v3}, Landroid/content/IContentService$Stub;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    return v12

    .line 257
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_1a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 260
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/accounts/Account;

    .local v2, "_arg0":Landroid/accounts/Account;
    goto :goto_1a

    .line 263
    .end local v2    # "_arg0":Landroid/accounts/Account;
    :cond_1d
    nop

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_1a
    move-object v1, v2

    .line 266
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    move v0, v12

    nop

    .line 269
    .restart local v0    # "_arg2":Z
    :cond_1e
    invoke-virtual {v7, v1, v2, v0}, Landroid/content/IContentService$Stub;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    return v12

    .line 238
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 241
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/accounts/Account;

    .local v2, "_arg0":Landroid/accounts/Account;
    goto :goto_1b

    .line 244
    .end local v2    # "_arg0":Landroid/accounts/Account;
    :cond_1f
    nop

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_1b
    move-object v0, v2

    .line 247
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .local v0, "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/IContentService$Stub;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    .line 251
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    return v12

    .line 221
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_1c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 224
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/accounts/Account;

    .local v2, "_arg0":Landroid/accounts/Account;
    goto :goto_1c

    .line 227
    .end local v2    # "_arg0":Landroid/accounts/Account;
    :cond_20
    nop

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_1c
    move-object v0, v2

    .line 230
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/content/IContentService$Stub;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    .line 232
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    return v12

    .line 207
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    .line 210
    sget-object v0, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/SyncRequest;

    .local v2, "_arg0":Landroid/content/SyncRequest;
    goto :goto_1d

    .line 213
    .end local v2    # "_arg0":Landroid/content/SyncRequest;
    :cond_21
    nop

    .restart local v2    # "_arg0":Landroid/content/SyncRequest;
    :goto_1d
    move-object v0, v2

    .line 215
    .end local v2    # "_arg0":Landroid/content/SyncRequest;
    .local v0, "_arg0":Landroid/content/SyncRequest;
    invoke-virtual {v7, v0}, Landroid/content/IContentService$Stub;->cancelRequest(Landroid/content/SyncRequest;)V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    return v12

    .line 182
    .end local v0    # "_arg0":Landroid/content/SyncRequest;
    :pswitch_1e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    .line 185
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .local v0, "_arg0":Landroid/accounts/Account;
    goto :goto_1e

    .line 188
    .end local v0    # "_arg0":Landroid/accounts/Account;
    :cond_22
    move-object v0, v2

    .line 191
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    .line 194
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .local v2, "_arg2":Landroid/content/ComponentName;
    goto :goto_1f

    .line 197
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    :cond_23
    nop

    .line 200
    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 201
    .local v3, "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/content/IContentService$Stub;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    return v12

    .line 159
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_arg3":I
    :pswitch_1f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    .line 162
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .restart local v0    # "_arg0":Landroid/accounts/Account;
    goto :goto_20

    .line 165
    .end local v0    # "_arg0":Landroid/accounts/Account;
    :cond_24
    move-object v0, v2

    .line 168
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 171
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    goto :goto_21

    .line 174
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    :cond_25
    nop

    .line 176
    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    :goto_21
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/IContentService$Stub;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    return v12

    .line 143
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    :pswitch_20
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    .line 146
    sget-object v0, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/SyncRequest;

    .local v2, "_arg0":Landroid/content/SyncRequest;
    goto :goto_22

    .line 149
    .end local v2    # "_arg0":Landroid/content/SyncRequest;
    :cond_26
    nop

    .restart local v2    # "_arg0":Landroid/content/SyncRequest;
    :goto_22
    move-object v0, v2

    .line 152
    .end local v2    # "_arg0":Landroid/content/SyncRequest;
    .local v0, "_arg0":Landroid/content/SyncRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroid/content/IContentService$Stub;->syncAsUser(Landroid/content/SyncRequest;I)V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    return v12

    .line 129
    .end local v0    # "_arg0":Landroid/content/SyncRequest;
    .end local v1    # "_arg1":I
    :pswitch_21
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    .line 132
    sget-object v0, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/SyncRequest;

    .restart local v2    # "_arg0":Landroid/content/SyncRequest;
    goto :goto_23

    .line 135
    .end local v2    # "_arg0":Landroid/content/SyncRequest;
    :cond_27
    nop

    .restart local v2    # "_arg0":Landroid/content/SyncRequest;
    :goto_23
    move-object v0, v2

    .line 137
    .end local v2    # "_arg0":Landroid/content/SyncRequest;
    .restart local v0    # "_arg0":Landroid/content/SyncRequest;
    invoke-virtual {v7, v0}, Landroid/content/IContentService$Stub;->sync(Landroid/content/SyncRequest;)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    return v12

    .line 106
    .end local v0    # "_arg0":Landroid/content/SyncRequest;
    :pswitch_22
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    .line 109
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .local v0, "_arg0":Landroid/accounts/Account;
    goto :goto_24

    .line 112
    .end local v0    # "_arg0":Landroid/accounts/Account;
    :cond_28
    move-object v0, v2

    .line 115
    .restart local v0    # "_arg0":Landroid/accounts/Account;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    .line 118
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg2":Landroid/os/Bundle;
    goto :goto_25

    .line 121
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_29
    nop

    .line 123
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_25
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/IContentService$Stub;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    return v12

    .line 82
    .end local v0    # "_arg0":Landroid/accounts/Account;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_23
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 85
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg0":Landroid/net/Uri;
    goto :goto_26

    .line 88
    .end local v1    # "_arg0":Landroid/net/Uri;
    :cond_2a
    move-object v1, v2

    .line 91
    .restart local v1    # "_arg0":Landroid/net/Uri;
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v13

    .line 93
    .local v13, "_arg1":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b

    move v3, v12

    goto :goto_27

    :cond_2b
    move v3, v0

    .line 95
    .local v3, "_arg2":Z
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 97
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 99
    .local v15, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 100
    .local v16, "_arg5":I
    move-object v0, v7

    move-object v2, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/content/IContentService$Stub;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZIII)V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v12

    .line 60
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg2":Z
    .end local v13    # "_arg1":Landroid/database/IContentObserver;
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    .end local v16    # "_arg5":I
    :pswitch_24
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    .line 63
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .restart local v1    # "_arg0":Landroid/net/Uri;
    goto :goto_28

    .line 66
    .end local v1    # "_arg0":Landroid/net/Uri;
    :cond_2c
    move-object v1, v2

    .line 69
    .restart local v1    # "_arg0":Landroid/net/Uri;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v12

    goto :goto_29

    :cond_2d
    move v2, v0

    .line 71
    .local v2, "_arg1":Z
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v6

    .line 73
    .local v6, "_arg2":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 75
    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 76
    .local v14, "_arg4":I
    move-object v0, v7

    move-object v3, v6

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/content/IContentService$Stub;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v12

    .line 51
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Z
    .end local v6    # "_arg2":Landroid/database/IContentObserver;
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    :pswitch_25
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/database/IContentObserver;
    invoke-virtual {v7, v0}, Landroid/content/IContentService$Stub;->unregisterContentObserver(Landroid/database/IContentObserver;)V

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    return v12

    .line 46
    .end local v0    # "_arg0":Landroid/database/IContentObserver;
    :cond_2e
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v12

    :pswitch_data_0
    .packed-switch 0x1
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

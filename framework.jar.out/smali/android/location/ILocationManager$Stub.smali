.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addGnssBatchingCallback:I = 0x13

.field static final TRANSACTION_addGnssMeasurementsListener:I = 0xc

.field static final TRANSACTION_addGnssNavigationMessageListener:I = 0xe

.field static final TRANSACTION_addTestProvider:I = 0x23

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x28

.field static final TRANSACTION_clearTestProviderLocation:I = 0x26

.field static final TRANSACTION_clearTestProviderStatus:I = 0x2a

.field static final TRANSACTION_flushGnssBatch:I = 0x16

.field static final TRANSACTION_geocoderIsPresent:I = 0x8

.field static final TRANSACTION_getAllProviders:I = 0x19

.field static final TRANSACTION_getBackgroundThrottlingWhitelist:I = 0x2f

.field static final TRANSACTION_getBestProvider:I = 0x1b

.field static final TRANSACTION_getCurrentGpsReceivers:I = 0x30

.field static final TRANSACTION_getFromLocation:I = 0x9

.field static final TRANSACTION_getFromLocationName:I = 0xa

.field static final TRANSACTION_getGnssBatchSize:I = 0x12

.field static final TRANSACTION_getGnssHardwareModelName:I = 0x11

.field static final TRANSACTION_getGnssYearOfHardware:I = 0x10

.field static final TRANSACTION_getLastLocation:I = 0x5

.field static final TRANSACTION_getNetworkProviderPackage:I = 0x1e

.field static final TRANSACTION_getProviderProperties:I = 0x1d

.field static final TRANSACTION_getProviders:I = 0x1a

.field static final TRANSACTION_injectLocation:I = 0x18

.field static final TRANSACTION_isLocationEnabledForUser:I = 0x21

.field static final TRANSACTION_isProviderEnabledForUser:I = 0x1f

.field static final TRANSACTION_locationCallbackFinished:I = 0x2e

.field static final TRANSACTION_providerMeetsCriteria:I = 0x1c

.field static final TRANSACTION_registerGnssStatusCallback:I = 0x6

.field static final TRANSACTION_removeGeofence:I = 0x4

.field static final TRANSACTION_removeGnssBatchingCallback:I = 0x14

.field static final TRANSACTION_removeGnssMeasurementsListener:I = 0xd

.field static final TRANSACTION_removeGnssNavigationMessageListener:I = 0xf

.field static final TRANSACTION_removeTestProvider:I = 0x24

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_reportLocation:I = 0x2c

.field static final TRANSACTION_reportLocationBatch:I = 0x2d

.field static final TRANSACTION_requestGeofence:I = 0x3

.field static final TRANSACTION_requestLocationUpdates:I = 0x1

.field static final TRANSACTION_sendExtraCommand:I = 0x2b

.field static final TRANSACTION_sendNiResponse:I = 0xb

.field static final TRANSACTION_setLocationEnabledForUser:I = 0x22

.field static final TRANSACTION_setProviderEnabledForUser:I = 0x20

.field static final TRANSACTION_setTestProviderEnabled:I = 0x27

.field static final TRANSACTION_setTestProviderLocation:I = 0x25

.field static final TRANSACTION_setTestProviderStatus:I = 0x29

.field static final TRANSACTION_startGnssBatch:I = 0x15

.field static final TRANSACTION_stopGnssBatch:I = 0x17

.field static final TRANSACTION_unregisterGnssStatusCallback:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.location.ILocationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/location/ILocationManager;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    .line 43
    const-string v10, "android.location.ILocationManager"

    .line 44
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v8, 0x1

    if-eq v14, v0, :cond_1e

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v14, :pswitch_data_0

    .line 721
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 713
    :pswitch_0
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getCurrentGpsReceivers()[Landroid/os/Bundle;

    move-result-object v0

    .line 715
    .local v0, "_result":[Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    invoke-virtual {v12, v0, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 717
    return v8

    .line 705
    .end local v0    # "_result":[Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getBackgroundThrottlingWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 709
    return v8

    .line 696
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v0

    .line 699
    .local v0, "_arg0":Landroid/location/ILocationListener;
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    return v8

    .line 687
    .end local v0    # "_arg0":Landroid/location/ILocationListener;
    :pswitch_3
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 690
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->reportLocationBatch(Ljava/util/List;)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    return v8

    .line 671
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    :pswitch_4
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .local v1, "_arg0":Landroid/location/Location;
    goto :goto_0

    .line 677
    .end local v1    # "_arg0":Landroid/location/Location;
    :cond_0
    nop

    .line 680
    .restart local v1    # "_arg0":Landroid/location/Location;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v8

    nop

    .line 681
    .local v0, "_arg1":Z
    :cond_1
    invoke-virtual {v13, v1, v0}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;Z)V

    .line 682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    return v8

    .line 645
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/location/Location;
    :pswitch_5
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 651
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 652
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg2":Landroid/os/Bundle;
    goto :goto_1

    .line 655
    .end local v1    # "_arg2":Landroid/os/Bundle;
    :cond_2
    nop

    .line 657
    .restart local v1    # "_arg2":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v13, v2, v3, v1}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    .line 658
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    if-eqz v1, :cond_3

    .line 661
    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    invoke-virtual {v1, v12, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 665
    :cond_3
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    :goto_2
    return v8

    .line 634
    .end local v1    # "_arg2":Landroid/os/Bundle;
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_6
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    return v8

    .line 612
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 616
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 618
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 619
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 622
    .local v0, "_arg2":Landroid/os/Bundle;
    move-object v3, v0

    goto :goto_3

    .end local v0    # "_arg2":Landroid/os/Bundle;
    :cond_4
    move-object v3, v1

    .line 625
    .local v3, "_arg2":Landroid/os/Bundle;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 627
    .local v16, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 628
    .local v11, "_arg4":Ljava/lang/String;
    move-object v0, v13

    move-object v1, v7

    move v2, v9

    move-wide/from16 v4, v16

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    return v8

    .line 601
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v16    # "_arg3":J
    :pswitch_8
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 606
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    return v8

    .line 588
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v8

    nop

    .line 594
    .local v0, "_arg1":Z
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v13, v1, v0, v2}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    .line 596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    return v8

    .line 577
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    return v8

    .line 559
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 564
    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .local v1, "_arg1":Landroid/location/Location;
    goto :goto_4

    .line 567
    .end local v1    # "_arg1":Landroid/location/Location;
    :cond_6
    nop

    .line 570
    .restart local v1    # "_arg1":Landroid/location/Location;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 571
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    return v8

    .line 548
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/location/Location;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    return v8

    .line 530
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 534
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 535
    sget-object v1, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/location/ProviderProperties;

    .local v1, "_arg1":Lcom/android/internal/location/ProviderProperties;
    goto :goto_5

    .line 538
    .end local v1    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    :cond_7
    nop

    .line 541
    .restart local v1    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 542
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    return v8

    .line 519
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v0, v8

    nop

    .line 523
    .local v0, "_arg0":Z
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 524
    .local v1, "_arg1":I
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->setLocationEnabledForUser(ZI)V

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    return v8

    .line 509
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 512
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->isLocationEnabledForUser(I)Z

    move-result v1

    .line 513
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    return v8

    .line 495
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v0, v8

    nop

    .line 501
    .local v0, "_arg1":Z
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 502
    .local v2, "_arg2":I
    invoke-virtual {v13, v1, v0, v2}, Landroid/location/ILocationManager$Stub;->setProviderEnabledForUser(Ljava/lang/String;ZI)Z

    move-result v3

    .line 503
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    return v8

    .line 483
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_11
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 488
    .local v1, "_arg1":I
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v2

    .line 489
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    return v8

    .line 475
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_12
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getNetworkProviderPackage()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    return v8

    .line 459
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v1}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    .line 463
    .local v2, "_result":Lcom/android/internal/location/ProviderProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v2, :cond_a

    .line 465
    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    invoke-virtual {v2, v12, v8}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 469
    :cond_a
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    :goto_6
    return v8

    .line 442
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Lcom/android/internal/location/ProviderProperties;
    :pswitch_14
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 447
    sget-object v1, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    .local v1, "_arg1":Landroid/location/Criteria;
    goto :goto_7

    .line 450
    .end local v1    # "_arg1":Landroid/location/Criteria;
    :cond_b
    nop

    .line 452
    .restart local v1    # "_arg1":Landroid/location/Criteria;
    :goto_7
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z

    move-result v2

    .line 453
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    return v8

    .line 425
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/location/Criteria;
    .end local v2    # "_result":Z
    :pswitch_15
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 428
    sget-object v1, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    .local v1, "_arg0":Landroid/location/Criteria;
    goto :goto_8

    .line 431
    .end local v1    # "_arg0":Landroid/location/Criteria;
    :cond_c
    nop

    .line 434
    .restart local v1    # "_arg0":Landroid/location/Criteria;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    move v0, v8

    nop

    .line 435
    .local v0, "_arg1":Z
    :cond_d
    invoke-virtual {v13, v1, v0}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    return v8

    .line 408
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/location/Criteria;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 411
    sget-object v1, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    .restart local v1    # "_arg0":Landroid/location/Criteria;
    goto :goto_9

    .line 414
    .end local v1    # "_arg0":Landroid/location/Criteria;
    :cond_e
    nop

    .line 417
    .restart local v1    # "_arg0":Landroid/location/Criteria;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    move v0, v8

    nop

    .line 418
    .restart local v0    # "_arg1":Z
    :cond_f
    invoke-virtual {v13, v1, v0}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 419
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 421
    return v8

    .line 400
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/location/Criteria;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_17
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 402
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 404
    return v8

    .line 385
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_18
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 388
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/Location;

    .local v1, "_arg0":Landroid/location/Location;
    goto :goto_a

    .line 391
    .end local v1    # "_arg0":Landroid/location/Location;
    :cond_10
    nop

    .restart local v1    # "_arg0":Landroid/location/Location;
    :goto_a
    move-object v0, v1

    .line 393
    .end local v1    # "_arg0":Landroid/location/Location;
    .local v0, "_arg0":Landroid/location/Location;
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->injectLocation(Landroid/location/Location;)Z

    move-result v1

    .line 394
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    return v8

    .line 377
    .end local v0    # "_arg0":Landroid/location/Location;
    .end local v1    # "_result":Z
    :pswitch_19
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->stopGnssBatch()Z

    move-result v0

    .line 379
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    return v8

    .line 368
    .end local v0    # "_result":Z
    :pswitch_1a
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->flushGnssBatch(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    return v8

    .line 354
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 358
    .local v1, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    move v0, v8

    nop

    .line 360
    .local v0, "_arg1":Z
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v0, v3}, Landroid/location/ILocationManager$Stub;->startGnssBatch(JZLjava/lang/String;)Z

    move-result v4

    .line 362
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    return v8

    .line 347
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":J
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1c
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->removeGnssBatchingCallback()V

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    return v8

    .line 335
    :pswitch_1d
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IBatchedLocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IBatchedLocationCallback;

    move-result-object v0

    .line 339
    .local v0, "_arg0":Landroid/location/IBatchedLocationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;)Z

    move-result v2

    .line 341
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    return v8

    .line 325
    .end local v0    # "_arg0":Landroid/location/IBatchedLocationCallback;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1e
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->getGnssBatchSize(Ljava/lang/String;)I

    move-result v1

    .line 329
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    return v8

    .line 317
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_1f
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    return v8

    .line 309
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_20
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssYearOfHardware()I

    move-result v0

    .line 311
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    return v8

    .line 300
    .end local v0    # "_result":I
    :pswitch_21
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v0

    .line 303
    .local v0, "_arg0":Landroid/location/IGnssNavigationMessageListener;
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    return v8

    .line 288
    .end local v0    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    :pswitch_22
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v0

    .line 292
    .restart local v0    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z

    move-result v2

    .line 294
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    return v8

    .line 279
    .end local v0    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_23
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v0

    .line 282
    .local v0, "_arg0":Landroid/location/IGnssMeasurementsListener;
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    return v8

    .line 267
    .end local v0    # "_arg0":Landroid/location/IGnssMeasurementsListener;
    :pswitch_24
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v0

    .line 271
    .restart local v0    # "_arg0":Landroid/location/IGnssMeasurementsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 272
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z

    move-result v2

    .line 273
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    return v8

    .line 255
    .end local v0    # "_arg0":Landroid/location/IGnssMeasurementsListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_25
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 260
    .local v1, "_arg1":I
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->sendNiResponse(II)Z

    move-result v2

    .line 261
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    return v8

    .line 225
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_26
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 229
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 231
    .local v17, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .line 233
    .local v19, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    .line 235
    .local v21, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v23

    .line 237
    .local v23, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 239
    .local v25, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 240
    sget-object v0, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GeocoderParams;

    .line 243
    .local v0, "_arg6":Landroid/location/GeocoderParams;
    move-object v11, v0

    goto :goto_b

    .end local v0    # "_arg6":Landroid/location/GeocoderParams;
    :cond_12
    move-object v11, v1

    .line 246
    .local v11, "_arg6":Landroid/location/GeocoderParams;
    :goto_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 247
    .local v9, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object v0, v13

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move v14, v8

    move-object/from16 v26, v9

    move-wide/from16 v8, v23

    .end local v9    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .local v26, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v27, v10

    move/from16 v10, v25

    .end local v10    # "descriptor":Ljava/lang/String;
    .local v27, "descriptor":Ljava/lang/String;
    move-object/from16 v12, v26

    invoke-virtual/range {v0 .. v12}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    move-object/from16 v1, v26

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 251
    .end local v26    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .local v1, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    return v14

    .line 201
    .end local v0    # "_result":Ljava/lang/String;
    .end local v1    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v11    # "_arg6":Landroid/location/GeocoderParams;
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":D
    .end local v19    # "_arg2":D
    .end local v21    # "_arg3":D
    .end local v23    # "_arg4":D
    .end local v25    # "_arg5":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move v14, v8

    move-object/from16 v27, v10

    move-object v8, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    move-object/from16 v9, v27

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v9, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .line 205
    .local v10, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .line 207
    .local v16, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 209
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 210
    sget-object v0, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GeocoderParams;

    .line 213
    .local v0, "_arg3":Landroid/location/GeocoderParams;
    move-object v6, v0

    goto :goto_c

    .end local v0    # "_arg3":Landroid/location/GeocoderParams;
    :cond_13
    move-object v6, v1

    .line 216
    .local v6, "_arg3":Landroid/location/GeocoderParams;
    :goto_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 217
    .local v7, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object v0, v13

    move-wide v1, v10

    move-wide/from16 v3, v16

    move v5, v12

    move-object/from16 v28, v7

    .end local v7    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .local v28, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-virtual/range {v0 .. v7}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    move-object/from16 v1, v28

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 221
    .end local v28    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .local v1, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    return v14

    .line 193
    .end local v0    # "_result":Ljava/lang/String;
    .end local v1    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v6    # "_arg3":Landroid/location/GeocoderParams;
    .end local v9    # "descriptor":Ljava/lang/String;
    .end local v12    # "_arg2":I
    .end local v16    # "_arg1":D
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_28
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    move-result v0

    .line 195
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    return v14

    .line 184
    .end local v0    # "_result":Z
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v0

    .line 187
    .local v0, "_arg0":Landroid/location/IGnssStatusListener;
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    return v14

    .line 172
    .end local v0    # "_arg0":Landroid/location/IGnssStatusListener;
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v0

    .line 176
    .restart local v0    # "_arg0":Landroid/location/IGnssStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v2

    .line 178
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return v14

    .line 149
    .end local v0    # "_arg0":Landroid/location/IGnssStatusListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2b
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 152
    sget-object v1, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationRequest;

    .local v1, "_arg0":Landroid/location/LocationRequest;
    goto :goto_d

    .line 155
    .end local v1    # "_arg0":Landroid/location/LocationRequest;
    :cond_14
    nop

    .line 158
    .restart local v1    # "_arg0":Landroid/location/LocationRequest;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Landroid/location/ILocationManager$Stub;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 160
    .local v3, "_result":Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v3, :cond_15

    .line 162
    invoke-virtual {v8, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {v3, v8, v14}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 166
    :cond_15
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    :goto_e
    return v14

    .line 126
    .end local v1    # "_arg0":Landroid/location/LocationRequest;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/location/Location;
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 129
    sget-object v0, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Geofence;

    .local v0, "_arg0":Landroid/location/Geofence;
    goto :goto_f

    .line 132
    .end local v0    # "_arg0":Landroid/location/Geofence;
    :cond_16
    move-object v0, v1

    .line 135
    .restart local v0    # "_arg0":Landroid/location/Geofence;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    .line 136
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .local v1, "_arg1":Landroid/app/PendingIntent;
    goto :goto_10

    .line 139
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    :cond_17
    nop

    .line 142
    .restart local v1    # "_arg1":Landroid/app/PendingIntent;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    return v14

    .line 96
    .end local v0    # "_arg0":Landroid/location/Geofence;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2d
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 99
    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationRequest;

    .local v0, "_arg0":Landroid/location/LocationRequest;
    goto :goto_11

    .line 102
    .end local v0    # "_arg0":Landroid/location/LocationRequest;
    :cond_18
    move-object v0, v1

    .line 105
    .restart local v0    # "_arg0":Landroid/location/LocationRequest;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    .line 106
    sget-object v2, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Geofence;

    .local v2, "_arg1":Landroid/location/Geofence;
    goto :goto_12

    .line 109
    .end local v2    # "_arg1":Landroid/location/Geofence;
    :cond_19
    move-object v2, v1

    .line 112
    .restart local v2    # "_arg1":Landroid/location/Geofence;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 113
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .local v1, "_arg2":Landroid/app/PendingIntent;
    goto :goto_13

    .line 116
    .end local v1    # "_arg2":Landroid/app/PendingIntent;
    :cond_1a
    nop

    .line 119
    .restart local v1    # "_arg2":Landroid/app/PendingIntent;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v1, v3}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    return v14

    .line 78
    .end local v0    # "_arg0":Landroid/location/LocationRequest;
    .end local v1    # "_arg2":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/location/Geofence;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2e
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v0

    .line 82
    .local v0, "_arg0":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 83
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .local v1, "_arg1":Landroid/app/PendingIntent;
    goto :goto_14

    .line 86
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    :cond_1b
    nop

    .line 89
    .restart local v1    # "_arg1":Landroid/app/PendingIntent;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    return v14

    .line 53
    .end local v0    # "_arg0":Landroid/location/ILocationListener;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2f
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 56
    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationRequest;

    .local v0, "_arg0":Landroid/location/LocationRequest;
    goto :goto_15

    .line 59
    .end local v0    # "_arg0":Landroid/location/LocationRequest;
    :cond_1c
    move-object v0, v1

    .line 62
    .restart local v0    # "_arg0":Landroid/location/LocationRequest;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v2

    .line 64
    .local v2, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 65
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .local v1, "_arg2":Landroid/app/PendingIntent;
    goto :goto_16

    .line 68
    .end local v1    # "_arg2":Landroid/app/PendingIntent;
    :cond_1d
    nop

    .line 71
    .restart local v1    # "_arg2":Landroid/app/PendingIntent;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v1, v3}, Landroid/location/ILocationManager$Stub;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    return v14

    .line 48
    .end local v0    # "_arg0":Landroid/location/LocationRequest;
    .end local v1    # "_arg2":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/location/ILocationListener;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v9    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :cond_1e
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v9    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

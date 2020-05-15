.class public final Landroid/bluetooth/le/ScanFilter$Builder;
.super Ljava/lang/Object;
.source "ScanFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mManufacturerData:[B

.field private mManufacturerDataMask:[B

.field private mManufacturerId:I

.field private mServiceData:[B

.field private mServiceDataMask:[B

.field private mServiceDataUuid:Landroid/os/ParcelUuid;

.field private mServiceSolicitationUuid:Landroid/os/ParcelUuid;

.field private mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

.field private mServiceUuid:Landroid/os/ParcelUuid;

.field private mUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/ScanFilter;
    .locals 15

    .line 724
    new-instance v14, Landroid/bluetooth/le/ScanFilter;

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    iget-object v5, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    iget-object v6, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    iget-object v7, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v8, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    iget-object v9, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    iget v10, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    iget-object v11, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    iget-object v12, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/bluetooth/le/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BLandroid/bluetooth/le/ScanFilter$1;)V

    return-object v14
.end method

.method public setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 555
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid device address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 559
    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 542
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    .line 543
    return-object p0
.end method

.method public setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerData"    # [B

    .line 676
    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_1
    :goto_0
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    .line 680
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    .line 682
    return-object p0
.end method

.method public setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerData"    # [B
    .param p3, "manufacturerDataMask"    # [B

    .line 697
    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    if-eqz v0, :cond_4

    .line 701
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    if-eqz v0, :cond_3

    .line 707
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    array-length v0, v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    array-length v1, v1

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 708
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_4
    :goto_1
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    .line 713
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    .line 714
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    .line 715
    return-object p0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B

    .line 626
    if-eqz p1, :cond_0

    .line 629
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 630
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    .line 632
    return-object p0

    .line 627
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B
    .param p3, "serviceDataMask"    # [B

    .line 647
    if-eqz p1, :cond_3

    .line 650
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    if-eqz v0, :cond_2

    .line 651
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    array-length v0, v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 658
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size mismatch for service data and service data mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serviceData is null while serviceDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_2
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 663
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    .line 664
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    .line 665
    return-object p0

    .line 648
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServiceSolicitationUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 0
    .param p1, "serviceSolicitationUuid"    # Landroid/os/ParcelUuid;

    .line 594
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    .line 595
    return-object p0
.end method

.method public setServiceSolicitationUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceSolicitationUuid"    # Landroid/os/ParcelUuid;
    .param p2, "solicitationUuidMask"    # Landroid/os/ParcelUuid;

    .line 611
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SolicitationUuid is null while SolicitationUuidMask is not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    .line 616
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 617
    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 1
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;

    .line 566
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    .line 568
    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;
    .param p2, "uuidMask"    # Landroid/os/ParcelUuid;

    .line 580
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uuid is null while uuidMask is not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 584
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    .line 585
    return-object p0
.end method

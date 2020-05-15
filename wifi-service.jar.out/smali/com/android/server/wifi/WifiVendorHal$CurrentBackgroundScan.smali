.class Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CurrentBackgroundScan"
.end annotation


# instance fields
.field public cmdId:I

.field public eventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field public latestScanResults:[Landroid/net/wifi/WifiScanner$ScanData;

.field public param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

.field public paused:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiVendorHal;ILcom/android/server/wifi/WifiNative$ScanSettings;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiVendorHal;
    .param p2, "id"    # I
    .param p3, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 702
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->eventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 699
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z

    .line 700
    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->latestScanResults:[Landroid/net/wifi/WifiScanner$ScanData;

    .line 703
    iput p2, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    .line 704
    new-instance v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    .line 705
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    iget v2, p3, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    iput v2, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->basePeriodInMs:I

    .line 706
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    iget v2, p3, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    iput v2, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->maxApPerScan:I

    .line 707
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    iget v2, p3, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    iput v2, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->reportThresholdPercent:I

    .line 708
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    iget v2, p3, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    iput v2, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->reportThresholdNumScans:I

    .line 709
    iget-object v0, p3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 711
    .local v3, "bs":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    iget-object v4, v4, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->buckets:Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lcom/android/server/wifi/WifiVendorHal;->access$600(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$BucketSettings;)Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    .end local v3    # "bs":Lcom/android/server/wifi/WifiNative$BucketSettings;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 714
    :cond_0
    return-void
.end method

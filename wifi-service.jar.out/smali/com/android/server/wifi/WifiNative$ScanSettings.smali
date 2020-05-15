.class public Lcom/android/server/wifi/WifiNative$ScanSettings;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanSettings"
.end annotation


# instance fields
.field public base_period_ms:I

.field public buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

.field public hiddenNetworks:[Lcom/android/server/wifi/WifiNative$HiddenNetwork;

.field public max_ap_per_scan:I

.field public num_buckets:I

.field public report_threshold_num_scans:I

.field public report_threshold_percent:I

.field public scanType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

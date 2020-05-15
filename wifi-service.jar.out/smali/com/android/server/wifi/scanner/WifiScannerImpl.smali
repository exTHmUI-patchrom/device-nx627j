.class public abstract Lcom/android/server/wifi/scanner/WifiScannerImpl;
.super Ljava/lang/Object;
.source "WifiScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;
    }
.end annotation


# static fields
.field public static final DEFAULT_FACTORY:Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;

.field protected static final SCAN_RESULT_SORT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScannerImpl$1;

    invoke-direct {v0}, Lcom/android/server/wifi/scanner/WifiScannerImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/wifi/scanner/WifiScannerImpl;->DEFAULT_FACTORY:Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;

    .line 72
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScannerImpl$2;

    invoke-direct {v0}, Lcom/android/server/wifi/scanner/WifiScannerImpl$2;-><init>()V

    sput-object v0, Lcom/android/server/wifi/scanner/WifiScannerImpl;->SCAN_RESULT_SORT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cleanup()V
.end method

.method protected abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getChannelHelper()Lcom/android/server/wifi/scanner/ChannelHelper;
.end method

.method public abstract getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;
.end method

.method public abstract getLatestSingleScanResults()Landroid/net/wifi/WifiScanner$ScanData;
.end method

.method public abstract getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
.end method

.method public abstract isHwPnoSupported(Z)Z
.end method

.method public abstract pauseBatchedScan()V
.end method

.method public abstract resetHwPnoList()Z
.end method

.method public abstract restartBatchedScan()V
.end method

.method public abstract setHwPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z
.end method

.method public abstract startBatchedScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
.end method

.method public abstract startSingleScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
.end method

.method public abstract stopBatchedScan()V
.end method

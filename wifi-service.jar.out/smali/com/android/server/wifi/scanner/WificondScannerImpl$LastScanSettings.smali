.class Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;
.super Ljava/lang/Object;
.source "WificondScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WificondScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastScanSettings"
.end annotation


# instance fields
.field public reportSingleScanFullResults:Z

.field public singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field public singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

.field public startTime:J


# direct methods
.method constructor <init>(JZLcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "reportSingleScanFullResults"    # Z
    .param p4, "singleScanFreqs"    # Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .param p5, "singleScanEventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-wide p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->startTime:J

    .line 624
    iput-boolean p3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportSingleScanFullResults:Z

    .line 625
    iput-object p4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    .line 626
    iput-object p5, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 627
    return-void
.end method

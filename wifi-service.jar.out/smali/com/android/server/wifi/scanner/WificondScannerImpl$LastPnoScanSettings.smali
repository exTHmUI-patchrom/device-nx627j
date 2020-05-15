.class Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;
.super Ljava/lang/Object;
.source "WificondScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WificondScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastPnoScanSettings"
.end annotation


# instance fields
.field public pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

.field public pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

.field public startTime:J


# direct methods
.method constructor <init>(J[Lcom/android/server/wifi/WifiNative$PnoNetwork;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "pnoNetworkList"    # [Lcom/android/server/wifi/WifiNative$PnoNetwork;
    .param p4, "pnoScanEventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-wide p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->startTime:J

    .line 641
    iput-object p3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    .line 642
    iput-object p4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 643
    return-void
.end method

.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$qPUuRnlo2XMDrsA1gI_KLrbvPAI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiVendorHal;

.field private final synthetic f$1:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

.field private final synthetic f$2:Landroid/util/MutableBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$ScanCapabilities;Landroid/util/MutableBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$qPUuRnlo2XMDrsA1gI_KLrbvPAI;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$qPUuRnlo2XMDrsA1gI_KLrbvPAI;->f$1:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    iput-object p3, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$qPUuRnlo2XMDrsA1gI_KLrbvPAI;->f$2:Landroid/util/MutableBoolean;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$qPUuRnlo2XMDrsA1gI_KLrbvPAI;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$qPUuRnlo2XMDrsA1gI_KLrbvPAI;->f$1:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    iget-object v2, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$qPUuRnlo2XMDrsA1gI_KLrbvPAI;->f$2:Landroid/util/MutableBoolean;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->lambda$getBgScanCapabilities$0(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$ScanCapabilities;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;)V

    return-void
.end method

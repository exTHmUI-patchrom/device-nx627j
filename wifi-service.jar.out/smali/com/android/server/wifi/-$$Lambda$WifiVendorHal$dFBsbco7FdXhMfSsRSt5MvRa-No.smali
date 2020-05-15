.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dFBsbco7FdXhMfSsRSt5MvRa-No;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiVendorHal;

.field private final synthetic f$1:Lcom/android/server/wifi/WifiNative$RoamingCapabilities;

.field private final synthetic f$2:Landroid/util/MutableBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$RoamingCapabilities;Landroid/util/MutableBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dFBsbco7FdXhMfSsRSt5MvRa-No;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dFBsbco7FdXhMfSsRSt5MvRa-No;->f$1:Lcom/android/server/wifi/WifiNative$RoamingCapabilities;

    iput-object p3, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dFBsbco7FdXhMfSsRSt5MvRa-No;->f$2:Landroid/util/MutableBoolean;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dFBsbco7FdXhMfSsRSt5MvRa-No;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dFBsbco7FdXhMfSsRSt5MvRa-No;->f$1:Lcom/android/server/wifi/WifiNative$RoamingCapabilities;

    iget-object v2, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dFBsbco7FdXhMfSsRSt5MvRa-No;->f$2:Landroid/util/MutableBoolean;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->lambda$getRoamingCapabilities$15(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$RoamingCapabilities;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;)V

    return-void
.end method

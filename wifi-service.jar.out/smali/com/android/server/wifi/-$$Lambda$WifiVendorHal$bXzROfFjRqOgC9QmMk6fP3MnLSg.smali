.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$bXzROfFjRqOgC9QmMk6fP3MnLSg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiVendorHal;

.field private final synthetic f$1:Landroid/util/MutableInt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Landroid/util/MutableInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$bXzROfFjRqOgC9QmMk6fP3MnLSg;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$bXzROfFjRqOgC9QmMk6fP3MnLSg;->f$1:Landroid/util/MutableInt;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$bXzROfFjRqOgC9QmMk6fP3MnLSg;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$bXzROfFjRqOgC9QmMk6fP3MnLSg;->f$1:Landroid/util/MutableInt;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->lambda$getSupportedFeatureSet$2(Lcom/android/server/wifi/WifiVendorHal;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V

    return-void
.end method

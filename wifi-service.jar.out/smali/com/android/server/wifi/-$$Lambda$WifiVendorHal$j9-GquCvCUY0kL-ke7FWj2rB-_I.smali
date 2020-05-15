.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$j9-GquCvCUY0kL-ke7FWj2rB-_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiVendorHal;

.field private final synthetic f$1:Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$j9-GquCvCUY0kL-ke7FWj2rB-_I;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$j9-GquCvCUY0kL-ke7FWj2rB-_I;->f$1:Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/RttCapabilities;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$j9-GquCvCUY0kL-ke7FWj2rB-_I;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$j9-GquCvCUY0kL-ke7FWj2rB-_I;->f$1:Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->lambda$getRttCapabilities$4(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/RttCapabilities;)V

    return-void
.end method

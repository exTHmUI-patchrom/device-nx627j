.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$78Olu6lZcZThVdxrs2nTDEfDswQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$78Olu6lZcZThVdxrs2nTDEfDswQ;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$78Olu6lZcZThVdxrs2nTDEfDswQ;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->lambda$requestChipDebugInfo$8(Lcom/android/server/wifi/WifiVendorHal;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;)V

    return-void
.end method

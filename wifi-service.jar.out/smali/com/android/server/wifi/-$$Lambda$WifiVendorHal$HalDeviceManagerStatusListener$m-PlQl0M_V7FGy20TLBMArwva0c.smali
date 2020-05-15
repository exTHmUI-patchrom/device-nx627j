.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$HalDeviceManagerStatusListener$m-PlQl0M_V7FGy20TLBMArwva0c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$HalDeviceManagerStatusListener$m-PlQl0M_V7FGy20TLBMArwva0c;->f$0:Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$HalDeviceManagerStatusListener$m-PlQl0M_V7FGy20TLBMArwva0c;->f$0:Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->lambda$onStatusChanged$0(Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;)V

    return-void
.end method

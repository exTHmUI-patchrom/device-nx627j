.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$AqzJie2OoFIziDRxaXrZoSkKfNw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

.field private final synthetic f$1:Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;

.field private final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$AqzJie2OoFIziDRxaXrZoSkKfNw;->f$0:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$AqzJie2OoFIziDRxaXrZoSkKfNw;->f$1:Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;

    iput-object p3, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$AqzJie2OoFIziDRxaXrZoSkKfNw;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$AqzJie2OoFIziDRxaXrZoSkKfNw;->f$0:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$AqzJie2OoFIziDRxaXrZoSkKfNw;->f$1:Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;

    iget-object v2, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$AqzJie2OoFIziDRxaXrZoSkKfNw;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->lambda$onDebugRingBufferDataAvailable$0(Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;Ljava/util/ArrayList;)V

    return-void
.end method

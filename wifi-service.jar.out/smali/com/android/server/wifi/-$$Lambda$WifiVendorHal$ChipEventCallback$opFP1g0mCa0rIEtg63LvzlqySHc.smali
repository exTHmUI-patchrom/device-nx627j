.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$opFP1g0mCa0rIEtg63LvzlqySHc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$opFP1g0mCa0rIEtg63LvzlqySHc;->f$0:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$opFP1g0mCa0rIEtg63LvzlqySHc;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$opFP1g0mCa0rIEtg63LvzlqySHc;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$opFP1g0mCa0rIEtg63LvzlqySHc;->f$0:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$opFP1g0mCa0rIEtg63LvzlqySHc;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallback$opFP1g0mCa0rIEtg63LvzlqySHc;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->lambda$onDebugErrorAlert$1(Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;Ljava/util/ArrayList;I)V

    return-void
.end method

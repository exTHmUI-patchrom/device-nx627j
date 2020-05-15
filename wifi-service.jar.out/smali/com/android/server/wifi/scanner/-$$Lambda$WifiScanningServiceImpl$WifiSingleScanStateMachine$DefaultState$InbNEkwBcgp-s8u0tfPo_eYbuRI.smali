.class public final synthetic Lcom/android/server/wifi/scanner/-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$InbNEkwBcgp-s8u0tfPo_eYbuRI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/wifi/scanner/-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$InbNEkwBcgp-s8u0tfPo_eYbuRI;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/scanner/-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$InbNEkwBcgp-s8u0tfPo_eYbuRI;->f$0:J

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {v0, v1, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->lambda$filterCachedScanResultsByAge$0(JLandroid/net/wifi/ScanResult;)Z

    move-result p1

    return p1
.end method

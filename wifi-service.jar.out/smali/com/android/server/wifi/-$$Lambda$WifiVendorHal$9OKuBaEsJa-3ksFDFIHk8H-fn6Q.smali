.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$9OKuBaEsJa-3ksFDFIHk8H-fn6Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiVendorHal;

.field private final synthetic f$1:Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$9OKuBaEsJa-3ksFDFIHk8H-fn6Q;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$9OKuBaEsJa-3ksFDFIHk8H-fn6Q;->f$1:Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$9OKuBaEsJa-3ksFDFIHk8H-fn6Q;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$9OKuBaEsJa-3ksFDFIHk8H-fn6Q;->f$1:Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->lambda$getWlanWakeReasonCount$14(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;)V

    return-void
.end method

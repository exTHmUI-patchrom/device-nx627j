.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$tzHRLpLug6A0mb6rrMUdhsh-NDU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiVendorHal;

.field private final synthetic f$1:Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$tzHRLpLug6A0mb6rrMUdhsh-NDU;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$tzHRLpLug6A0mb6rrMUdhsh-NDU;->f$1:Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$tzHRLpLug6A0mb6rrMUdhsh-NDU;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$tzHRLpLug6A0mb6rrMUdhsh-NDU;->f$1:Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->lambda$getDriverStateDump$11(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void
.end method

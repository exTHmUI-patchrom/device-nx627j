.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ZD_VoFx-B8racz66daaqFreli3E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiVendorHal;

.field private final synthetic f$1:Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ZD_VoFx-B8racz66daaqFreli3E;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ZD_VoFx-B8racz66daaqFreli3E;->f$1:Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ZD_VoFx-B8racz66daaqFreli3E;->f$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ZD_VoFx-B8racz66daaqFreli3E;->f$1:Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->lambda$readPacketFilter$7(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.class Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiVendorHal;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/android/server/wifi/WifiLinkLayerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnswerBox"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;

.field public value:Landroid/hardware/wifi/V1_0/StaLinkLayerStats;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 930
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;->value:Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    return-void
.end method

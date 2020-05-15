.class Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiVendorHal;->getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnswerBox"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;

.field public value:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 2459
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;->value:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    return-void
.end method

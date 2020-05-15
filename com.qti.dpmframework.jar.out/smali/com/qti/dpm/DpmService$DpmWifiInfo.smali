.class Lcom/qti/dpm/DpmService$DpmWifiInfo;
.super Lcom/qti/dpm/DpmService$DpmRatInfo;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DpmWifiInfo"
.end annotation


# instance fields
.field bssid:Ljava/lang/String;

.field rssi:I

.field softApState:I

.field ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method public constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/qti/dpm/DpmService$DpmWifiInfo;->this$0:Lcom/qti/dpm/DpmService;

    .line 260
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService$DpmRatInfo;-><init>(Lcom/qti/dpm/DpmService;)V

    .line 261
    const/16 p1, 0xb

    iput p1, p0, Lcom/qti/dpm/DpmService$DpmWifiInfo;->softApState:I

    .line 262
    const/4 p1, 0x0

    iput p1, p0, Lcom/qti/dpm/DpmService$DpmWifiInfo;->rssi:I

    .line 263
    const-string p1, ""

    iput-object p1, p0, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ssid:Ljava/lang/String;

    .line 264
    const-string p1, "00:00:00:00:00:00"

    iput-object p1, p0, Lcom/qti/dpm/DpmService$DpmWifiInfo;->bssid:Ljava/lang/String;

    .line 265
    const/4 p1, 0x1

    iput p1, p0, Lcom/qti/dpm/DpmService$DpmWifiInfo;->networkType:I

    .line 266
    return-void
.end method

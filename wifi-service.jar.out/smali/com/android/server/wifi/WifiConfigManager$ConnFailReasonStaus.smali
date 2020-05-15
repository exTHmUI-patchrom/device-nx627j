.class public Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnFailReasonStaus"
.end annotation


# instance fields
.field mCounterAssocReject:I

.field mCounterAuthFail:I

.field mCounterDhcpFail:I

.field mCounterDisconnectEvent:I

.field mCounterLowRssiBypass:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiConfigManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigManager;

    .line 3314
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method isByPassDueToExceedThreshold()Z
    .locals 2

    .line 3321
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterAuthFail:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterAssocReject:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterDhcpFail:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterLowRssiBypass:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager$ConnFailReasonStaus;->mCounterDisconnectEvent:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

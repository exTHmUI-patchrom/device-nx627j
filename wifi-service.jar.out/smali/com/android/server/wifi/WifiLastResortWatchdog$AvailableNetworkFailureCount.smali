.class public Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
.super Ljava/lang/Object;
.source "WifiLastResortWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiLastResortWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvailableNetworkFailureCount"
.end annotation


# instance fields
.field public age:I

.field public associationRejection:I

.field public authenticationFailure:I

.field public config:Landroid/net/wifi/WifiConfiguration;

.field public dhcpFailure:I

.field public ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "configParam"    # Landroid/net/wifi/WifiConfiguration;

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    .line 550
    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    .line 554
    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    .line 558
    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    .line 561
    iput-object p1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    .line 562
    return-void
.end method


# virtual methods
.method public incrementFailureCount(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 568
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 576
    :pswitch_0
    iget v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    .line 577
    goto :goto_0

    .line 573
    :pswitch_1
    iget v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    .line 574
    goto :goto_0

    .line 570
    :pswitch_2
    iget v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    .line 571
    nop

    .line 580
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method resetCounts()V
    .locals 1

    .line 586
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    .line 587
    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    .line 588
    iput v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    .line 589
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HasEverConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null_config"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Failures: {Assoc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Auth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Dhcp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    return-object v0
.end method

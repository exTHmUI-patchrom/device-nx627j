.class Lcom/android/server/wifi/WifiConfigManager$1;
.super Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;
.source "WifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compareNetworksWithSameStatus(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .line 243
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eq v0, v1, :cond_0

    .line 244
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    int-to-long v0, v0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    .line 246
    :cond_0
    nop

    .line 247
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result v0

    .line 249
    .local v0, "isConfigALastSeen":Z
    nop

    .line 250
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result v1

    .line 252
    .local v1, "isConfigBLastSeen":Z
    invoke-static {v1, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v2

    return v2
.end method

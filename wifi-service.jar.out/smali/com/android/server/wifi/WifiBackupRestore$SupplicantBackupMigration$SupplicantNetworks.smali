.class Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;
.super Ljava/lang/Object;
.source "WifiBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SupplicantNetworks"
.end annotation


# instance fields
.field final mNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;->mNetworks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readNetworksFromStream(Ljava/io/BufferedReader;)V
    .locals 5
    .param p1, "in"    # Ljava/io/BufferedReader;

    .line 704
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 705
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 707
    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    invoke-static {p1}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->readNetworkFromStream(Ljava/io/BufferedReader;)Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;

    move-result-object v1

    .line 711
    .local v1, "net":Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
    if-nez v1, :cond_1

    .line 712
    const-string v2, "WifiBackupRestore"

    const-string v3, "Error while parsing the network."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    goto :goto_0

    .line 721
    :cond_1
    iget-boolean v2, v1, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->isEap:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->certUsed:Z

    if-eqz v2, :cond_2

    goto :goto_1

    .line 726
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;->mNetworks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    .end local v1    # "net":Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
    goto :goto_0

    .line 722
    .restart local v1    # "net":Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
    :cond_3
    :goto_1
    const-string v2, "WifiBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping enterprise network for restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-static {v1}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->access$000(Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->access$100(Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 722
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    goto :goto_0

    .line 732
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "net":Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
    :cond_4
    goto :goto_2

    .line 730
    :catch_0
    move-exception v0

    .line 733
    :goto_2
    return-void
.end method

.method public retrieveWifiConfigurations()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v0, "wifiConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;->mNetworks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;

    .line 742
    .local v2, "net":Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->createWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 743
    .local v3, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_0

    .line 744
    const-string v4, "WifiBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsed Configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    .end local v3    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    nop

    .line 753
    .end local v2    # "net":Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
    goto :goto_0

    .line 747
    .restart local v2    # "net":Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
    :catch_0
    move-exception v1

    .line 750
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "WifiBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing wifi configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v3, 0x0

    return-object v3

    .line 754
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "net":Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
    :cond_1
    return-object v0
.end method

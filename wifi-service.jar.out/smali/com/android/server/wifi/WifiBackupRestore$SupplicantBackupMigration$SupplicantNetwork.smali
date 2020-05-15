.class Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
.super Ljava/lang/Object;
.source "WifiBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SupplicantNetwork"
.end annotation


# instance fields
.field public certUsed:Z

.field public isEap:Z

.field private mParsedHiddenLine:Ljava/lang/String;

.field private mParsedIdStrLine:Ljava/lang/String;

.field private mParsedKeyMgmtLine:Ljava/lang/String;

.field private mParsedPskLine:Ljava/lang/String;

.field private mParsedSSIDLine:Ljava/lang/String;

.field private mParsedWepKeyLines:[Ljava/lang/String;

.field private mParsedWepTxKeyIdxLine:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->certUsed:Z

    .line 511
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->isEap:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;

    .line 502
    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedSSIDLine:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;

    .line 502
    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedKeyMgmtLine:Ljava/lang/String;

    return-object v0
.end method

.method public static readNetworkFromStream(Ljava/io/BufferedReader;)Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
    .locals 3
    .param p0, "in"    # Ljava/io/BufferedReader;

    .line 517
    new-instance v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;-><init>()V

    .line 520
    .local v0, "n":Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->ready()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    goto :goto_1

    .line 525
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->parseLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    :goto_1
    nop

    .line 530
    return-object v0

    .line 527
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public createWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 12

    .line 581
    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedSSIDLine:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 583
    return-object v1

    .line 585
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 586
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedSSIDLine:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedSSIDLine:Ljava/lang/String;

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 588
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedHiddenLine:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 590
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedHiddenLine:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedHiddenLine:Ljava/lang/String;

    .line 592
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v5

    .line 591
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 594
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedKeyMgmtLine:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-nez v2, :cond_3

    .line 597
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 598
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    .line 601
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedKeyMgmtLine:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedKeyMgmtLine:Ljava/lang/String;

    .line 602
    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, "bareKeyMgmt":Ljava/lang/String;
    const-string v8, "\\s+"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 608
    .local v8, "typeStrings":[Ljava/lang/String;
    move v9, v3

    .local v9, "i":I
    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_8

    .line 609
    aget-object v10, v8, v9

    .line 610
    .local v10, "ktype":Ljava/lang/String;
    const-string v11, "NONE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 611
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 613
    :cond_4
    const-string v11, "WPA-PSK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 614
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 616
    :cond_5
    const-string v11, "WPA-EAP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 617
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 619
    :cond_6
    const-string v11, "IEEE8021X"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 620
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v6}, Ljava/util/BitSet;->set(I)V

    .line 608
    .end local v10    # "ktype":Ljava/lang/String;
    :cond_7
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 625
    .end local v2    # "bareKeyMgmt":Ljava/lang/String;
    .end local v8    # "typeStrings":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedPskLine:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 626
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedPskLine:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedPskLine:Ljava/lang/String;

    .line 627
    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 629
    :cond_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-eqz v2, :cond_a

    .line 630
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aget-object v9, v9, v3

    .line 631
    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    .line 633
    :cond_a
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aget-object v2, v2, v5

    if-eqz v2, :cond_b

    .line 634
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget-object v8, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aget-object v8, v8, v5

    .line 635
    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 637
    :cond_b
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aget-object v2, v2, v7

    if-eqz v2, :cond_c

    .line 638
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aget-object v3, v3, v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aget-object v8, v8, v7

    .line 639
    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 641
    :cond_c
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aget-object v2, v2, v6

    if-eqz v2, :cond_d

    .line 642
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aget-object v3, v3, v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aget-object v7, v7, v6

    .line 643
    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 645
    :cond_d
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepTxKeyIdxLine:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 646
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepTxKeyIdxLine:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepTxKeyIdxLine:Ljava/lang/String;

    .line 648
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v5

    .line 647
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 650
    :cond_e
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedIdStrLine:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 651
    iget-object v2, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedIdStrLine:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedIdStrLine:Ljava/lang/String;

    .line 652
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "idString":Ljava/lang/String;
    if-eqz v2, :cond_12

    .line 654
    nop

    .line 656
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 655
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->parseNetworkExtra(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 657
    .local v3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_f

    .line 658
    const-string v4, "WifiBackupRestore"

    const-string v5, "Error parsing network extras, ignoring network."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-object v1

    .line 661
    :cond_f
    const-string v4, "configKey"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 665
    .local v4, "configKey":Ljava/lang/String;
    if-nez v4, :cond_10

    .line 666
    const-string v5, "WifiBackupRestore"

    const-string v6, "Configuration key was not passed, ignoring network."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-object v1

    .line 669
    :cond_10
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 672
    const-string v5, "WifiBackupRestore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuration key does not match. Retrieved: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Calculated: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 672
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_11
    const-string v5, "creatorUid"

    .line 678
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 680
    .local v5, "creatorUid":I
    const/16 v6, 0x2710

    if-lt v5, v6, :cond_12

    .line 681
    const-string v6, "WifiBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring network from non-system app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 681
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-object v1

    .line 687
    .end local v2    # "idString":Ljava/lang/String;
    .end local v3    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "configKey":Ljava/lang/String;
    .end local v5    # "creatorUid":I
    :cond_12
    return-object v0
.end method

.method parseLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .line 538
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 543
    :cond_0
    const-string v0, "ssid="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedSSIDLine:Ljava/lang/String;

    goto/16 :goto_0

    .line 545
    :cond_1
    const-string v0, "scan_ssid="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedHiddenLine:Ljava/lang/String;

    goto/16 :goto_0

    .line 547
    :cond_2
    const-string v0, "key_mgmt="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 548
    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedKeyMgmtLine:Ljava/lang/String;

    .line 549
    const-string v0, "EAP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 550
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->isEap:Z

    goto/16 :goto_0

    .line 552
    :cond_3
    const-string v0, "client_cert="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 553
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->certUsed:Z

    goto/16 :goto_0

    .line 554
    :cond_4
    const-string v0, "ca_cert="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 555
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->certUsed:Z

    goto/16 :goto_0

    .line 556
    :cond_5
    const-string v0, "ca_path="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 557
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->certUsed:Z

    goto/16 :goto_0

    .line 558
    :cond_6
    const-string v0, "eap="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 559
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->isEap:Z

    goto/16 :goto_0

    .line 560
    :cond_7
    const-string v0, "psk="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 561
    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedPskLine:Ljava/lang/String;

    goto/16 :goto_0

    .line 562
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 563
    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto/16 :goto_0

    .line 564
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 565
    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    aput-object p1, v0, v1

    goto :goto_0

    .line 566
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 567
    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    goto :goto_0

    .line 568
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 569
    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepKeyLines:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    goto :goto_0

    .line 570
    :cond_c
    const-string v0, "wep_tx_keyidx="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 571
    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedWepTxKeyIdxLine:Ljava/lang/String;

    goto :goto_0

    .line 572
    :cond_d
    const-string v0, "id_str="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 573
    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;->mParsedIdStrLine:Ljava/lang/String;

    .line 575
    :cond_e
    :goto_0
    return-void
.end method

.class public Lcom/android/server/wifi/WifiNetworkHistory;
.super Ljava/lang/Object;
.source "WifiNetworkHistory.java"


# static fields
.field private static final AUTH_KEY:Ljava/lang/String; = "AUTH"

.field private static final BSSID_KEY:Ljava/lang/String; = "BSSID"

.field private static final BSSID_KEY_END:Ljava/lang/String; = "/BSSID"

.field private static final BSSID_STATUS_KEY:Ljava/lang/String; = "BSSID_STATUS"

.field private static final CHOICE_KEY:Ljava/lang/String; = "CHOICE"

.field private static final CHOICE_TIME_KEY:Ljava/lang/String; = "CHOICE_TIME"

.field private static final CONFIG_BSSID_KEY:Ljava/lang/String; = "CONFIG_BSSID"

.field static final CONFIG_KEY:Ljava/lang/String; = "CONFIG"

.field private static final CONNECT_UID_KEY:Ljava/lang/String; = "CONNECT_UID_KEY"

.field private static final CREATION_TIME_KEY:Ljava/lang/String; = "CREATION_TIME"

.field private static final CREATOR_NAME_KEY:Ljava/lang/String; = "CREATOR_NAME"

.field static final CREATOR_UID_KEY:Ljava/lang/String; = "CREATOR_UID_KEY"

.field private static final DATE_KEY:Ljava/lang/String; = "DATE"

.field private static final DBG:Z = true

.field private static final DEFAULT_GW_KEY:Ljava/lang/String; = "DEFAULT_GW"

.field private static final DELETED_EPHEMERAL_KEY:Ljava/lang/String; = "DELETED_EPHEMERAL"

.field private static final DID_SELF_ADD_KEY:Ljava/lang/String; = "DID_SELF_ADD"

.field private static final EPHEMERAL_KEY:Ljava/lang/String; = "EPHEMERAL"

.field private static final FQDN_KEY:Ljava/lang/String; = "FQDN"

.field private static final FREQ_KEY:Ljava/lang/String; = "FREQ"

.field private static final HAS_EVER_CONNECTED_KEY:Ljava/lang/String; = "HAS_EVER_CONNECTED"

.field private static final LINK_KEY:Ljava/lang/String; = "LINK"

.field private static final METERED_HINT_KEY:Ljava/lang/String; = "METERED_HINT"

.field private static final METERED_OVERRIDE_KEY:Ljava/lang/String; = "METERED_OVERRIDE"

.field private static final MILLI_KEY:Ljava/lang/String; = "MILLI"

.field static final NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

.field private static final NETWORK_ID_KEY:Ljava/lang/String; = "ID"

.field private static final NETWORK_SELECTION_DISABLE_REASON_KEY:Ljava/lang/String; = "NETWORK_SELECTION_DISABLE_REASON"

.field private static final NETWORK_SELECTION_STATUS_KEY:Ljava/lang/String; = "NETWORK_SELECTION_STATUS"

.field private static final NL:Ljava/lang/String; = "\n"

.field private static final NO_INTERNET_ACCESS_EXPECTED_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_EXPECTED"

.field private static final NO_INTERNET_ACCESS_REPORTS_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_REPORTS"

.field private static final NUM_ASSOCIATION_KEY:Ljava/lang/String; = "NUM_ASSOCIATION"

.field private static final PEER_CONFIGURATION_KEY:Ljava/lang/String; = "PEER_CONFIGURATION"

.field private static final PRIORITY_KEY:Ljava/lang/String; = "PRIORITY"

.field private static final RSSI_KEY:Ljava/lang/String; = "RSSI"

.field private static final SCORER_OVERRIDE_AND_SWITCH_KEY:Ljava/lang/String; = "SCORER_OVERRIDE_AND_SWITCH"

.field private static final SCORER_OVERRIDE_KEY:Ljava/lang/String; = "SCORER_OVERRIDE"

.field private static final SELF_ADDED_KEY:Ljava/lang/String; = "SELF_ADDED"

.field private static final SEPARATOR:Ljava/lang/String; = ":  "

.field static final SHARED_KEY:Ljava/lang/String; = "SHARED"

.field private static final SSID_KEY:Ljava/lang/String; = "SSID"

.field public static final TAG:Ljava/lang/String; = "WifiNetworkHistory"

.field private static final UPDATE_NAME_KEY:Ljava/lang/String; = "UPDATE_NAME"

.field private static final UPDATE_TIME_KEY:Ljava/lang/String; = "UPDATE_TIME"

.field private static final UPDATE_UID_KEY:Ljava/lang/String; = "UPDATE_UID"

.field private static final USER_APPROVED_KEY:Ljava/lang/String; = "USER_APPROVED"

.field private static final USE_EXTERNAL_SCORES_KEY:Ljava/lang/String; = "USE_EXTERNAL_SCORES"

.field private static final VALIDATED_INTERNET_ACCESS_KEY:Ljava/lang/String; = "VALIDATED_INTERNET_ACCESS"

.field private static final VDBG:Z = true


# instance fields
.field mContext:Landroid/content/Context;

.field mLostConfigsDbg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/wifi/networkHistory.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/net/DelayedDiskWrite;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "writer"    # Lcom/android/server/net/DelayedDiskWrite;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLostConfigsDbg:Ljava/util/HashSet;

    .line 116
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    .line 118
    return-void
.end method

.method static synthetic access$000(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/BitSet;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 51
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiNetworkHistory;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiNetworkHistory;Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNetworkHistory;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "x2"    # Ljava/util/Map;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v0

    return-object v0
.end method

.method private getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;)",
            "Lcom/android/server/wifi/ScanDetailCache;"
        }
    .end annotation

    .line 630
    .local p2, "scanDetailCaches":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/wifi/ScanDetailCache;>;"
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    .line 632
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v0, :cond_1

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 633
    new-instance v1, Lcom/android/server/wifi/ScanDetailCache;

    const/16 v2, 0xc0

    const/16 v3, 0x80

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;II)V

    move-object v0, v1

    .line 637
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_1
    return-object v0

    .line 630
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    .line 586
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 587
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 591
    .local v1, "nextSetBit":I
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 593
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 594
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 599
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 602
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public isValid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 567
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 568
    return v1

    .line 570
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 571
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v3, 0x4

    if-le v0, v3, :cond_1

    .line 572
    return v1

    .line 574
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 575
    return v1

    .line 577
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 578
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 579
    return v1

    .line 582
    :cond_3
    return v2
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 612
    const-string v0, "WifiNetworkHistory"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 609
    const-string v0, "WifiNetworkHistory"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiNetworkHistory;->loge(Ljava/lang/String;Z)V

    .line 616
    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stack"    # Z

    .line 618
    if-eqz p2, :cond_0

    .line 619
    const-string v0, "WifiNetworkHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    :cond_0
    const-string v0, "WifiNetworkHistory"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_0
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 606
    const-string v0, "WifiNetworkHistory"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void
.end method

.method public readNetworkHistory(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "scanDetailCaches":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/wifi/ScanDetailCache;>;"
    .local p3, "deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 333
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    sget-object v5, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    move-object v3, v0

    .line 337
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v0, 0x0

    .line 338
    .local v0, "bssid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 340
    .local v4, "ssid":Ljava/lang/String;
    const/4 v5, 0x0

    .line 341
    .local v5, "freq":I
    const/4 v6, 0x0

    .line 342
    .local v6, "status":I
    const-wide/16 v7, 0x0

    .line 343
    .local v7, "seen":J
    :try_start_1
    sget v10, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 344
    .local v10, "rssi":I
    const/4 v11, 0x0

    .line 346
    .local v11, "caps":Ljava/lang/String;
    move-wide/from16 v21, v7

    move/from16 v20, v10

    move v7, v5

    move v8, v6

    move-object v6, v11

    move-object v5, v4

    move-object v4, v0

    const/4 v0, 0x0

    .line 348
    .end local v10    # "rssi":I
    .end local v11    # "caps":Ljava/lang/String;
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    .local v4, "bssid":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .local v6, "caps":Ljava/lang/String;
    .local v7, "freq":I
    .local v8, "status":I
    .local v20, "rssi":I
    .local v21, "seen":J
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v15, v10

    .line 349
    .local v15, "line":Ljava/lang/String;
    if-nez v15, :cond_0

    .line 350
    nop

    .line 550
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "ssid":Ljava/lang/String;
    .end local v6    # "caps":Ljava/lang/String;
    .end local v7    # "freq":I
    .end local v8    # "status":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v20    # "rssi":I
    .end local v21    # "seen":J
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 558
    .end local v3    # "in":Ljava/io/DataInputStream;
    nop

    .line 559
    move-object/from16 v9, p3

    goto/16 :goto_14

    .line 352
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v5    # "ssid":Ljava/lang/String;
    .restart local v6    # "caps":Ljava/lang/String;
    .restart local v7    # "freq":I
    .restart local v8    # "status":I
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v20    # "rssi":I
    .restart local v21    # "seen":J
    :cond_0
    const/16 v10, 0x3a

    :try_start_3
    invoke-virtual {v15, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    move v14, v10

    .line 353
    .local v14, "colon":I
    if-gez v14, :cond_1

    .line 354
    goto :goto_0

    .line 357
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v15, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    .line 358
    .local v13, "key":Ljava/lang/String;
    add-int/lit8 v11, v14, 0x1

    invoke-virtual {v15, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    .line 360
    .local v12, "value":Ljava/lang/String;
    const-string v11, "CONFIG"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 361
    move-object/from16 v11, p1

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    move-object v0, v10

    .line 365
    if-nez v0, :cond_2

    .line 366
    const-string v10, "WifiNetworkHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v8

    const-string v8, "readNetworkHistory didnt find netid for hash="

    .end local v8    # "status":I
    .local v23, "status":I
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " key: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 366
    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v8, v1, Lcom/android/server/wifi/WifiNetworkHistory;->mLostConfigsDbg:Ljava/util/HashSet;

    invoke-virtual {v8, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 370
    nop

    .line 346
    move/from16 v8, v23

    goto :goto_0

    .line 373
    .end local v23    # "status":I
    .restart local v8    # "status":I
    :cond_2
    move/from16 v23, v8

    .end local v8    # "status":I
    .restart local v23    # "status":I
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 374
    :cond_3
    iget-object v8, v1, Lcom/android/server/wifi/WifiNetworkHistory;->mContext:Landroid/content/Context;

    .line 375
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 376
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 379
    const-string v8, "WifiNetworkHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upgrading network "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    :cond_4
    move-object/from16 v9, p3

    .end local v23    # "status":I
    .restart local v8    # "status":I
    :goto_1
    move/from16 v8, v23

    goto/16 :goto_b

    .line 384
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :cond_5
    move-object/from16 v11, p1

    move/from16 v23, v8

    .end local v8    # "status":I
    .restart local v23    # "status":I
    if-eqz v0, :cond_e

    .line 385
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v8

    .line 386
    .local v8, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x1

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v9, "USE_EXTERNAL_SCORES"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xe

    goto/16 :goto_3

    :sswitch_1
    const-string v9, "CHOICE"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x18

    goto/16 :goto_3

    :sswitch_2
    const-string v9, "CREATOR_UID_KEY"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xf

    goto/16 :goto_3

    :sswitch_3
    const-string v9, "NUM_ASSOCIATION"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x12

    goto/16 :goto_3

    :sswitch_4
    const-string v9, "CHOICE_TIME"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x19

    goto/16 :goto_3

    :sswitch_5
    const-string v9, "UPDATE_TIME"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xa

    goto/16 :goto_3

    :sswitch_6
    const-string v9, "UPDATE_NAME"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x22

    goto/16 :goto_3

    :sswitch_7
    const-string v9, "SCORER_OVERRIDE_AND_SWITCH"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x11

    goto/16 :goto_3

    :sswitch_8
    const-string v9, "/BSSID"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1f

    goto/16 :goto_3

    :sswitch_9
    const-string v9, "NETWORK_SELECTION_DISABLE_REASON"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x17

    goto/16 :goto_3

    :sswitch_a
    const-string v9, "METERED_OVERRIDE"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xd

    goto/16 :goto_3

    :sswitch_b
    const-string v9, "DEFAULT_GW"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x3

    goto/16 :goto_3

    :sswitch_c
    const-string v9, "CREATION_TIME"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x9

    goto/16 :goto_3

    :sswitch_d
    const-string v9, "HAS_EVER_CONNECTED"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x25

    goto/16 :goto_3

    :sswitch_e
    const-string v9, "CREATOR_NAME"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x21

    goto/16 :goto_3

    :sswitch_f
    const-string v9, "SELF_ADDED"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x4

    goto/16 :goto_3

    :sswitch_10
    const-string v9, "DELETED_EPHEMERAL"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x20

    goto/16 :goto_3

    :sswitch_11
    const-string v9, "UPDATE_UID"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x14

    goto/16 :goto_3

    :sswitch_12
    const-string v9, "SCORER_OVERRIDE"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x10

    goto/16 :goto_3

    :sswitch_13
    const-string v9, "BSSID"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1b

    goto/16 :goto_3

    :sswitch_14
    const-string v9, "SSID"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto/16 :goto_3

    :sswitch_15
    const-string v9, "RSSI"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1c

    goto/16 :goto_3

    :sswitch_16
    const-string v9, "LINK"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1a

    goto/16 :goto_3

    :sswitch_17
    const-string v9, "FREQ"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1d

    goto/16 :goto_3

    :sswitch_18
    const-string v9, "FQDN"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x2

    goto/16 :goto_3

    :sswitch_19
    const-string v9, "DATE"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1e

    goto/16 :goto_3

    :sswitch_1a
    const-string v9, "NETWORK_SELECTION_STATUS"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x16

    goto/16 :goto_3

    :sswitch_1b
    const-string v9, "CONFIG_BSSID"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v10

    goto/16 :goto_3

    :sswitch_1c
    const-string v9, "DID_SELF_ADD"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x5

    goto/16 :goto_3

    :sswitch_1d
    const-string v9, "EPHEMERAL"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xb

    goto :goto_3

    :sswitch_1e
    const-string v9, "NO_INTERNET_ACCESS_EXPECTED"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x8

    goto :goto_3

    :sswitch_1f
    const-string v9, "PEER_CONFIGURATION"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x15

    goto :goto_3

    :sswitch_20
    const-string v9, "NO_INTERNET_ACCESS_REPORTS"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x6

    goto :goto_3

    :sswitch_21
    const-string v9, "METERED_HINT"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xc

    goto :goto_3

    :sswitch_22
    const-string v9, "SHARED"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x24

    goto :goto_3

    :sswitch_23
    const-string v9, "VALIDATED_INTERNET_ACCESS"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x7

    goto :goto_3

    :sswitch_24
    const-string v9, "CONNECT_UID_KEY"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x13

    goto :goto_3

    :sswitch_25
    const-string v9, "USER_APPROVED"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x23

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v9, -0x1

    :goto_3
    packed-switch v9, :pswitch_data_0

    .end local v8    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    goto/16 :goto_9

    .line 545
    .restart local v8    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_0
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .end local v8    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    goto :goto_4

    .line 542
    .restart local v8    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_1
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 543
    goto :goto_4

    .line 539
    :pswitch_2
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 540
    goto :goto_4

    .line 536
    :pswitch_3
    iput-object v12, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 537
    goto :goto_4

    .line 533
    :pswitch_4
    iput-object v12, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 534
    goto :goto_4

    .line 528
    :pswitch_5
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v9, :cond_7

    .line 529
    move-object/from16 v9, p3

    :try_start_4
    invoke-interface {v9, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 549
    .end local v5    # "ssid":Ljava/lang/String;
    .end local v8    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v25, "ssid":Ljava/lang/String;
    :cond_7
    :goto_4
    move-object/from16 v9, p3

    :goto_5
    move-object/from16 v25, v5

    goto/16 :goto_a

    .line 518
    .end local v25    # "ssid":Ljava/lang/String;
    .restart local v5    # "ssid":Ljava/lang/String;
    .restart local v8    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v9, p3

    if-eqz v4, :cond_f

    if-eqz v5, :cond_f

    .line 519
    invoke-direct {v1, v0, v2}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 520
    invoke-static {v5}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v10

    move-object v11, v10

    .line 521
    .local v11, "wssid":Landroid/net/wifi/WifiSsid;
    new-instance v24, Lcom/android/server/wifi/ScanDetail;

    const-wide/16 v16, 0x0

    move-object/from16 v10, v24

    move-object/from16 v25, v5

    move-object v5, v12

    move-object v12, v4

    .end local v12    # "value":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    move-object/from16 v26, v13

    move-object v13, v6

    .end local v13    # "key":Ljava/lang/String;
    .local v26, "key":Ljava/lang/String;
    move/from16 v27, v14

    move/from16 v14, v20

    .end local v14    # "colon":I
    .local v27, "colon":I
    move-object/from16 v28, v15

    move v15, v7

    .end local v15    # "line":Ljava/lang/String;
    .local v28, "line":Ljava/lang/String;
    move-wide/from16 v18, v21

    invoke-direct/range {v10 .. v19}, Lcom/android/server/wifi/ScanDetail;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    move-object/from16 v10, v24

    .line 523
    .local v10, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-direct {v1, v0, v2}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    .line 524
    .end local v10    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v11    # "wssid":Landroid/net/wifi/WifiSsid;
    goto/16 :goto_a

    .line 516
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    goto/16 :goto_a

    .line 503
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v7, v10

    .line 504
    goto/16 :goto_a

    .line 500
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 501
    .end local v20    # "rssi":I
    .local v10, "rssi":I
    nop

    .line 549
    move/from16 v20, v10

    goto/16 :goto_a

    .line 491
    .end local v10    # "rssi":I
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v20    # "rssi":I
    :pswitch_a
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    const/4 v10, 0x0

    .line 492
    .end local v23    # "status":I
    .local v10, "status":I
    const/4 v11, 0x0

    .line 493
    .end local v25    # "ssid":Ljava/lang/String;
    .local v11, "ssid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 494
    const/4 v7, 0x0

    .line 495
    const-wide/16 v12, 0x0

    .line 496
    .end local v21    # "seen":J
    .local v12, "seen":J
    sget v14, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 497
    .end local v20    # "rssi":I
    .local v14, "rssi":I
    const-string v15, ""

    move-object v6, v15

    .line 498
    nop

    .line 549
    move v8, v10

    move-object v5, v11

    move-wide/from16 v21, v12

    move/from16 v20, v14

    goto/16 :goto_b

    .line 484
    .end local v10    # "status":I
    .end local v11    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .local v12, "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .local v14, "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v20    # "rssi":I
    .restart local v21    # "seen":J
    .restart local v23    # "status":I
    :pswitch_b
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v10, :cond_8

    .line 485
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    goto/16 :goto_a

    .line 487
    :cond_8
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    goto/16 :goto_a

    .line 481
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_c
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 482
    goto/16 :goto_a

    .line 478
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_d
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-virtual {v8, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 479
    goto/16 :goto_a

    .line 475
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_e
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 476
    goto/16 :goto_a

    .line 465
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_f
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 467
    .local v11, "networkStatusValue":I
    if-ne v11, v10, :cond_9

    .line 469
    const/4 v11, 0x0

    .line 472
    :cond_9
    invoke-virtual {v8, v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 473
    goto/16 :goto_a

    .line 462
    .end local v11    # "networkStatusValue":I
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_10
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 463
    goto/16 :goto_a

    .line 459
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_11
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 460
    goto/16 :goto_a

    .line 456
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_12
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 457
    goto/16 :goto_a

    .line 453
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_13
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 454
    goto/16 :goto_a

    .line 450
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_14
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    .line 451
    goto/16 :goto_a

    .line 447
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_15
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    .line 448
    goto/16 :goto_a

    .line 444
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_16
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 445
    goto/16 :goto_a

    .line 441
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_17
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 442
    goto/16 :goto_a

    .line 438
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_18
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 439
    goto/16 :goto_a

    .line 435
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_19
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 436
    goto/16 :goto_a

    .line 432
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_1a
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 433
    goto/16 :goto_a

    .line 429
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_1b
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    .line 430
    goto/16 :goto_a

    .line 426
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_1c
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    .line 427
    goto/16 :goto_a

    .line 423
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_1d
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 424
    goto/16 :goto_a

    .line 420
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_1e
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 421
    goto/16 :goto_a

    .line 417
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_1f
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 418
    goto/16 :goto_a

    .line 414
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_20
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 415
    goto/16 :goto_a

    .line 411
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_21
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 412
    goto/16 :goto_a

    .line 408
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_22
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 409
    goto/16 :goto_a

    .line 405
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_23
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    const-string v10, "null"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    goto :goto_6

    :cond_a
    move-object v10, v5

    :goto_6
    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 406
    goto :goto_a

    .line 401
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_24
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    const-string v10, "null"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x0

    goto :goto_7

    :cond_b
    move-object v10, v5

    :goto_7
    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 402
    goto :goto_a

    .line 388
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "colon":I
    .restart local v15    # "line":Ljava/lang/String;
    :pswitch_25
    move-object/from16 v9, p3

    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "colon":I
    .end local v15    # "line":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v27    # "colon":I
    .restart local v28    # "line":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 389
    goto :goto_a

    .line 391
    :cond_c
    move-object v10, v5

    .line 392
    .end local v25    # "ssid":Ljava/lang/String;
    .local v10, "ssid":Ljava/lang/String;
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_d

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 393
    const-string v11, "Error parsing network history file, mismatched SSIDs"

    invoke-virtual {v1, v11}, Lcom/android/server/wifi/WifiNetworkHistory;->loge(Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x0

    .line 395
    const/4 v10, 0x0

    goto :goto_8

    .line 397
    :cond_d
    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 399
    nop

    .line 549
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v23    # "status":I
    .end local v26    # "key":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "line":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    .local v8, "status":I
    :goto_8
    move-object v5, v10

    goto/16 :goto_1

    .line 550
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "ssid":Ljava/lang/String;
    .end local v6    # "caps":Ljava/lang/String;
    .end local v7    # "freq":I
    .end local v8    # "status":I
    .end local v20    # "rssi":I
    .end local v21    # "seen":J
    :catchall_0
    move-exception v0

    goto :goto_c

    .line 333
    :catch_0
    move-exception v0

    goto :goto_d

    .line 549
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v5    # "ssid":Ljava/lang/String;
    .restart local v6    # "caps":Ljava/lang/String;
    .restart local v7    # "freq":I
    .restart local v20    # "rssi":I
    .restart local v21    # "seen":J
    .restart local v23    # "status":I
    :cond_e
    :goto_9
    move-object/from16 v9, p3

    :cond_f
    move-object/from16 v25, v5

    .end local v23    # "status":I
    .restart local v8    # "status":I
    :goto_a
    move/from16 v8, v23

    move-object/from16 v5, v25

    :goto_b
    goto/16 :goto_0

    .line 550
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "ssid":Ljava/lang/String;
    .end local v6    # "caps":Ljava/lang/String;
    .end local v7    # "freq":I
    .end local v8    # "status":I
    .end local v20    # "rssi":I
    .end local v21    # "seen":J
    :catchall_1
    move-exception v0

    move-object/from16 v9, p3

    :goto_c
    move-object v4, v0

    const/4 v5, 0x0

    goto :goto_e

    .line 333
    :catch_1
    move-exception v0

    move-object/from16 v9, p3

    :goto_d
    move-object v4, v0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 550
    :catchall_2
    move-exception v0

    move-object v5, v4

    move-object v4, v0

    :goto_e
    if-eqz v5, :cond_10

    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_f

    .line 556
    .end local v3    # "in":Ljava/io/DataInputStream;
    :catch_2
    move-exception v0

    goto :goto_10

    .line 554
    :catch_3
    move-exception v0

    goto :goto_11

    .line 552
    :catch_4
    move-exception v0

    goto :goto_12

    .line 550
    :catch_5
    move-exception v0

    goto :goto_13

    .restart local v3    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v0

    move-object v6, v0

    :try_start_7
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_10
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    :goto_f
    throw v4
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 556
    .end local v3    # "in":Ljava/io/DataInputStream;
    :catch_7
    move-exception v0

    move-object/from16 v9, p3

    .line 557
    .local v0, "e":Ljava/io/IOException;
    :goto_10
    const-string v3, "WifiNetworkHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readNetworkHistory: failed to read, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_14

    .line 554
    :catch_8
    move-exception v0

    move-object/from16 v9, p3

    .line 555
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_11
    const-string v3, "WifiNetworkHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readNetworkHistory: failed to parse, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_13

    .line 552
    :catch_9
    move-exception v0

    move-object/from16 v9, p3

    .line 553
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_12
    const-string v3, "WifiNetworkHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readNetworkHistory: no config file, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_13

    .line 550
    :catch_a
    move-exception v0

    move-object/from16 v9, p3

    .line 558
    :goto_13
    nop

    .line 559
    :goto_14
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x740b4755 -> :sswitch_25
        -0x6f46bcc5 -> :sswitch_24
        -0x6f2cb82f -> :sswitch_23
        -0x6e485f9b -> :sswitch_22
        -0x6dcd9962 -> :sswitch_21
        -0x622b2dfc -> :sswitch_20
        -0x41c84b47 -> :sswitch_1f
        -0x3d27310d -> :sswitch_1e
        -0x38535683 -> :sswitch_1d
        -0x20eb6f12 -> :sswitch_1c
        -0x1fe21480 -> :sswitch_1b
        -0x166457ca -> :sswitch_1a
        0x1fe7ae -> :sswitch_19
        0x210a95 -> :sswitch_18
        0x210e78 -> :sswitch_17
        0x23a7fa -> :sswitch_16
        0x268857 -> :sswitch_15
        0x26fb7b -> :sswitch_14
        0x3c90abd -> :sswitch_13
        0x551d90b -> :sswitch_12
        0xb5a17ba -> :sswitch_11
        0x18e77cb7 -> :sswitch_10
        0x1ddf6a2d -> :sswitch_f
        0x2c26c6de -> :sswitch_e
        0x2ea1ad6d -> :sswitch_d
        0x2eae182d -> :sswitch_c
        0x455dcbce -> :sswitch_b
        0x46c9b863 -> :sswitch_a
        0x516e83df -> :sswitch_9
        0x53fccfee -> :sswitch_8
        0x580b1670 -> :sswitch_7
        0x5fe59441 -> :sswitch_6
        0x5fe86c83 -> :sswitch_5
        0x60388eab -> :sswitch_4
        0x72f01508 -> :sswitch_3
        0x7400e87d -> :sswitch_2
        0x767051a1 -> :sswitch_1
        0x78cc583d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeKnownNetworkHistory(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "scanDetailCaches":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/android/server/wifi/ScanDetailCache;>;"
    .local p3, "deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    sget-object v1, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    new-instance v2, Lcom/android/server/wifi/WifiNetworkHistory$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/wifi/WifiNetworkHistory$1;-><init>(Lcom/android/server/wifi/WifiNetworkHistory;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 318
    return-void
.end method

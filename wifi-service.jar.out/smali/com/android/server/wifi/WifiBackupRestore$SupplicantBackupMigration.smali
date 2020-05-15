.class public Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;
.super Ljava/lang/Object;
.source "WifiBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupplicantBackupMigration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;,
        Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetwork;
    }
.end annotation


# static fields
.field private static final PSK_MASK_LINE_MATCH_PATTERN:Ljava/lang/String; = ".*psk.*=.*"

.field private static final PSK_MASK_REPLACE_PATTERN:Ljava/lang/String; = "$1*"

.field private static final PSK_MASK_SEARCH_PATTERN:Ljava/lang/String; = "(.*psk.*=)(.*)"

.field public static final SUPPLICANT_KEY_CA_CERT:Ljava/lang/String; = "ca_cert"

.field public static final SUPPLICANT_KEY_CA_PATH:Ljava/lang/String; = "ca_path"

.field public static final SUPPLICANT_KEY_CLIENT_CERT:Ljava/lang/String; = "client_cert"

.field public static final SUPPLICANT_KEY_EAP:Ljava/lang/String; = "eap"

.field public static final SUPPLICANT_KEY_HIDDEN:Ljava/lang/String; = "scan_ssid"

.field public static final SUPPLICANT_KEY_ID_STR:Ljava/lang/String; = "id_str"

.field public static final SUPPLICANT_KEY_KEY_MGMT:Ljava/lang/String; = "key_mgmt"

.field public static final SUPPLICANT_KEY_PSK:Ljava/lang/String; = "psk"

.field public static final SUPPLICANT_KEY_SSID:Ljava/lang/String; = "ssid"

.field public static final SUPPLICANT_KEY_WEP_KEY0:Ljava/lang/String;

.field public static final SUPPLICANT_KEY_WEP_KEY1:Ljava/lang/String;

.field public static final SUPPLICANT_KEY_WEP_KEY2:Ljava/lang/String;

.field public static final SUPPLICANT_KEY_WEP_KEY3:Ljava/lang/String;

.field public static final SUPPLICANT_KEY_WEP_KEY_IDX:Ljava/lang/String; = "wep_tx_keyidx"

.field private static final WEP_KEYS_MASK_LINE_MATCH_PATTERN:Ljava/lang/String;

.field private static final WEP_KEYS_MASK_REPLACE_PATTERN:Ljava/lang/String; = "$1*"

.field private static final WEP_KEYS_MASK_SEARCH_PATTERN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 443
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY0:Ljava/lang/String;

    .line 444
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY1:Ljava/lang/String;

    .line 445
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY2:Ljava/lang/String;

    .line 446
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY3:Ljava/lang/String;

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY0:Ljava/lang/String;

    const-string v2, "0"

    const-string v3, ""

    .line 461
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".*=.*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->WEP_KEYS_MASK_LINE_MATCH_PATTERN:Ljava/lang/String;

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(.*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->SUPPLICANT_KEY_WEP_KEY0:Ljava/lang/String;

    const-string v2, "0"

    const-string v3, ""

    .line 463
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".*=)(.*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->WEP_KEYS_MASK_SEARCH_PATTERN:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLogFromBackupData([B)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 483
    .local v1, "supplicantConfString":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 484
    .local v5, "line":Ljava/lang/String;
    const-string v6, ".*psk.*=.*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 485
    const-string v6, "(.*psk.*=)(.*)"

    const-string v7, "$1*"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 487
    :cond_0
    sget-object v6, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->WEP_KEYS_MASK_LINE_MATCH_PATTERN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 488
    sget-object v6, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->WEP_KEYS_MASK_SEARCH_PATTERN:Ljava/lang/String;

    const-string v7, "$1*"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 491
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v5    # "line":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 495
    .end local v1    # "supplicantConfString":Ljava/lang/String;
    :cond_2
    nop

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    return-object v2
.end method

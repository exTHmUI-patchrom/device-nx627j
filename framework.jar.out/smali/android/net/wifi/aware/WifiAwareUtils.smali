.class public Landroid/net/wifi/aware/WifiAwareUtils;
.super Ljava/lang/Object;
.source "WifiAwareUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLegacyVersion(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minVersion"    # I

    .line 95
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, p1, :cond_0

    .line 97
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_0
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 104
    :goto_0
    return v0
.end method

.method public static validatePassphrase(Ljava/lang/String;)Z
    .locals 2
    .param p0, "passphrase"    # Ljava/lang/String;

    .line 67
    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static validatePmk([B)Z
    .locals 2
    .param p0, "pmk"    # [B

    .line 83
    if-eqz p0, :cond_1

    array-length v0, p0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static validateServiceName([B)V
    .locals 4
    .param p0, "serviceNameData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 36
    if-eqz p0, :cond_7

    .line 40
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    array-length v0, p0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_6

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "index":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_5

    .line 47
    aget-byte v1, p0, v0

    .line 48
    .local v1, "b":B
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_4

    .line 49
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_4

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_4

    :cond_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_2

    const/16 v2, 0x5a

    if-le v1, v2, :cond_4

    :cond_2
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 51
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid service name - illegal characters, allowed = (0-9, a-z,A-Z, -, .)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 56
    .end local v1    # "b":B
    goto :goto_0

    .line 57
    :cond_5
    return-void

    .line 41
    .end local v0    # "index":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid service name length - must be between 1 and 255 bytes (UTF-8 encoding)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid service name - null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

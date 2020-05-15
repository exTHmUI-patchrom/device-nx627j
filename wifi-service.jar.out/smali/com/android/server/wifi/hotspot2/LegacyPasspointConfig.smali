.class public Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;
.super Ljava/lang/Object;
.source "LegacyPasspointConfig.java"


# instance fields
.field public mFqdn:Ljava/lang/String;

.field public mFriendlyName:Ljava/lang/String;

.field public mImsi:Ljava/lang/String;

.field public mRealm:Ljava/lang/String;

.field public mRoamingConsortiumOis:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 44
    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 47
    return v2

    .line 49
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;

    .line 50
    .local v1, "that":Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFqdn:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFqdn:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFriendlyName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFriendlyName:Ljava/lang/String;

    .line 51
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRoamingConsortiumOis:[J

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRoamingConsortiumOis:[J

    .line 52
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRealm:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRealm:Ljava/lang/String;

    .line 53
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mImsi:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mImsi:Ljava/lang/String;

    .line 54
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 50
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFqdn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFriendlyName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRoamingConsortiumOis:[J

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRealm:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mImsi:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

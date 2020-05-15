.class public Lcom/android/server/wifi/WifiNative$PnoNetwork;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PnoNetwork"
.end annotation


# instance fields
.field public auth_bit_field:B

.field public flags:B

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 2278
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2279
    return v0

    .line 2280
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2283
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/wifi/WifiNative$PnoNetwork;

    .line 2284
    .local v2, "other":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-byte v3, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->flags:B

    iget-byte v4, v2, Lcom/android/server/wifi/WifiNative$PnoNetwork;->flags:B

    if-ne v3, v4, :cond_2

    iget-byte v3, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->auth_bit_field:B

    iget-byte v4, v2, Lcom/android/server/wifi/WifiNative$PnoNetwork;->auth_bit_field:B

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 2281
    .end local v2    # "other":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 2290
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2291
    .local v0, "result":I
    :goto_0
    iget-byte v1, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->flags:B

    mul-int/lit8 v1, v1, 0x1f

    iget-byte v2, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->auth_bit_field:B

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 2292
    return v0
.end method

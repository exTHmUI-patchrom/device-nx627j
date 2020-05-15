.class public Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "HSOsuProvidersElement.java"


# static fields
.field public static final MAXIMUM_OSU_SSID_LENGTH:I = 0x20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mOsuSsid:Landroid/net/wifi/WifiSsid;

.field private final mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/util/List;)V
    .locals 1
    .param p1, "osuSsid"    # Landroid/net/wifi/WifiSsid;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiSsid;",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;>;"
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    .line 56
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 57
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mProviders:Ljava/util/List;

    .line 58
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;
    .locals 6
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 71
    .local v0, "ssidLength":I
    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    .line 74
    new-array v1, v0, [B

    .line 75
    .local v1, "ssidBytes":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 78
    .local v2, "numProviders":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;>;"
    :goto_0
    if-lez v2, :cond_0

    .line 80
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 84
    :cond_0
    new-instance v4, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;

    invoke-static {v1}, Landroid/net/wifi/WifiSsid;->createFromByteArray([B)Landroid/net/wifi/WifiSsid;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;-><init>(Landroid/net/wifi/WifiSsid;Ljava/util/List;)V

    return-object v4

    .line 72
    .end local v1    # "ssidBytes":[B
    .end local v2    # "numProviders":I
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;>;"
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid SSID length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 98
    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 101
    return v2

    .line 103
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;

    .line 104
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiSsid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mProviders:Ljava/util/List;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mProviders:Ljava/util/List;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mProviders:Ljava/util/List;

    iget-object v4, v1, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mProviders:Ljava/util/List;

    .line 106
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    .line 104
    :cond_4
    move v0, v2

    :goto_2
    return v0
.end method

.method public getOsuSsid()Landroid/net/wifi/WifiSsid;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/OsuProviderInfo;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mProviders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mProviders:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSUProviders{mOsuSsid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProviders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->mProviders:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

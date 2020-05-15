.class public Landroid/net/NetworkRequest$Builder;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 149
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 150
    return-void
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "capability"    # I

    .line 177
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 178
    return-object p0
.end method

.method public addTransportType(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "transportType"    # I

    .line 259
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 260
    return-object p0
.end method

.method public addUnwantedCapability(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "capability"    # I

    .line 233
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addUnwantedCapability(I)V

    .line 234
    return-object p0
.end method

.method public build()Landroid/net/NetworkRequest;
    .locals 5

    .line 160
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 161
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    .line 162
    new-instance v1, Landroid/net/NetworkRequest;

    sget-object v2, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    return-object v1
.end method

.method public clearCapabilities()Landroid/net/NetworkRequest$Builder;
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->clearAll()V

    .line 246
    return-object p0
.end method

.method public removeCapability(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "capability"    # I

    .line 188
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 189
    return-object p0
.end method

.method public removeTransportType(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "transportType"    # I

    .line 270
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeTransportType(I)Landroid/net/NetworkCapabilities;

    .line 271
    return-object p0
.end method

.method public setCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 201
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->set(Landroid/net/NetworkCapabilities;)V

    .line 202
    return-object p0
.end method

.method public setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "downKbps"    # I

    .line 285
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 286
    return-object p0
.end method

.method public setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "upKbps"    # I

    .line 278
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 279
    return-object p0
.end method

.method public setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "networkSpecifier"    # Landroid/net/NetworkSpecifier;

    .line 324
    invoke-static {p1}, Landroid/net/MatchAllNetworkSpecifier;->checkNotMatchAllNetworkSpecifier(Landroid/net/NetworkSpecifier;)V

    .line 325
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 326
    return-object p0
.end method

.method public setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "networkSpecifier"    # Ljava/lang/String;

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 310
    :cond_0
    new-instance v0, Landroid/net/StringNetworkSpecifier;

    invoke-direct {v0, p1}, Landroid/net/StringNetworkSpecifier;-><init>(Ljava/lang/String;)V

    .line 309
    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSignalStrength(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "signalStrength"    # I

    .line 343
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)Landroid/net/NetworkCapabilities;

    .line 344
    return-object p0
.end method

.method public setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;)",
            "Landroid/net/NetworkRequest$Builder;"
        }
    .end annotation

    .line 214
    .local p1, "uids":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 215
    return-object p0
.end method

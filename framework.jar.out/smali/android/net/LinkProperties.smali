.class public final Landroid/net/LinkProperties;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkProperties$ProvisioningChange;,
        Landroid/net/LinkProperties$CompareResult;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_MTU:I = 0x2710

.field private static final MIN_MTU:I = 0x44

.field private static final MIN_MTU_V6:I = 0x500


# instance fields
.field private mDnses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDomains:Ljava/lang/String;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIfaceName:Ljava/lang/String;

.field private mLinkAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mMtu:I

.field private mPrivateDnsServerName:Ljava/lang/String;

.field private mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStackedLinks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mTcpBufferSizes:Ljava/lang/String;

.field private mUsePrivateDns:Z

.field private mValidatedPrivateDnses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1323
    new-instance v0, Landroid/net/LinkProperties$1;

    invoke-direct {v0}, Landroid/net/LinkProperties$1;-><init>()V

    sput-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "source"    # Landroid/net/LinkProperties;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    .line 167
    if-eqz p1, :cond_6

    .line 168
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .local v1, "l":Landroid/net/LinkAddress;
    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1    # "l":Landroid/net/LinkAddress;
    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .local v1, "i":Ljava/net/InetAddress;
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1    # "i":Ljava/net/InetAddress;
    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getValidatedPrivateDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 172
    .restart local v1    # "i":Ljava/net/InetAddress;
    iget-object v2, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v1    # "i":Ljava/net/InetAddress;
    goto :goto_2

    .line 174
    :cond_2
    iget-boolean v0, p1, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    iput-boolean v0, p0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    .line 175
    iget-object v0, p1, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .local v1, "r":Landroid/net/RouteInfo;
    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1    # "r":Landroid/net/RouteInfo;
    goto :goto_3

    .line 178
    :cond_3
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_4

    .line 179
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    :goto_4
    iput-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 180
    iget-object v0, p1, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 181
    .local v1, "l":Landroid/net/LinkProperties;
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 182
    .end local v1    # "l":Landroid/net/LinkProperties;
    goto :goto_5

    .line 183
    :cond_5
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 184
    iget-object v0, p1, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    .line 186
    :cond_6
    return-void
.end method

.method public static compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .locals 1
    .param p0, "before"    # Landroid/net/LinkProperties;
    .param p1, "after"    # Landroid/net/LinkProperties;

    .line 122
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIPv4Provisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIPv4Provisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    :cond_1
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0

    .line 147
    :cond_2
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0

    .line 148
    :cond_3
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_4

    .line 149
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0

    .line 150
    :cond_4
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0

    .line 153
    :cond_5
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    return-object v0
.end method

.method private findLinkAddressIndex(Landroid/net/LinkAddress;)I
    .locals 2
    .param p1, "address"    # Landroid/net/LinkAddress;

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 260
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1, p1}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    return v0

    .line 259
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private hasIPv4AddressOnInterface(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 839
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    .line 840
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    .line 841
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 839
    :goto_0
    return v0
.end method

.method public static isValidMtu(IZ)Z
    .locals 3
    .param p0, "mtu"    # I
    .param p1, "ipv6"    # Z

    .line 1379
    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-eqz p1, :cond_0

    .line 1380
    const/16 v2, 0x500

    if-lt p0, v2, :cond_1

    if-gt p0, v1, :cond_1

    return v0

    .line 1382
    :cond_0
    const/16 v2, 0x44

    if-lt p0, v2, :cond_1

    if-gt p0, v1, :cond_1

    return v0

    .line 1384
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private routeWithInterface(Landroid/net/RouteInfo;)Landroid/net/RouteInfo;
    .locals 5
    .param p1, "route"    # Landroid/net/RouteInfo;

    .line 581
    new-instance v0, Landroid/net/RouteInfo;

    .line 582
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    .line 583
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 585
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 581
    return-object v0
.end method


# virtual methods
.method public addDnsServer(Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "dnsServer"    # Ljava/net/InetAddress;

    .line 356
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    const/4 v0, 0x1

    return v0

    .line 360
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addLinkAddress(Landroid/net/LinkAddress;)Z
    .locals 4
    .param p1, "address"    # Landroid/net/LinkAddress;

    .line 275
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 276
    return v0

    .line 278
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/LinkProperties;->findLinkAddressIndex(Landroid/net/LinkAddress;)I

    move-result v1

    .line 279
    .local v1, "i":I
    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 281
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    return v2

    .line 283
    :cond_1
    iget-object v3, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    invoke-virtual {v3, p1}, Landroid/net/LinkAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    return v0

    .line 288
    :cond_2
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 289
    return v2
.end method

.method public addRoute(Landroid/net/RouteInfo;)Z
    .locals 4
    .param p1, "route"    # Landroid/net/RouteInfo;

    .line 600
    if-eqz p1, :cond_2

    .line 601
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "routeIface":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route added with non-matching interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vs. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 607
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/net/LinkProperties;->routeWithInterface(Landroid/net/RouteInfo;)Landroid/net/RouteInfo;

    move-result-object p1

    .line 608
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 609
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    const/4 v1, 0x1

    return v1

    .line 613
    .end local v0    # "routeIface":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public addStackedLink(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "link"    # Landroid/net/LinkProperties;

    .line 697
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const/4 v0, 0x1

    return v0

    .line 701
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addValidatedPrivateDnsServer(Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "dnsServer"    # Ljava/net/InetAddress;

    .line 464
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const/4 v0, 0x1

    return v0

    .line 468
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 3

    .line 742
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 743
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 744
    iget-object v1, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 745
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    .line 746
    iput-object v0, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    .line 747
    iput-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    .line 748
    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 749
    iput-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 750
    iget-object v2, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 751
    iput v1, p0, Landroid/net/LinkProperties;->mMtu:I

    .line 752
    iput-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    .line 753
    return-void
.end method

.method public compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 3
    .param p1, "target"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 1187
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    .line 1188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/net/LinkProperties$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1187
    return-object v0
.end method

.method public compareAllInterfaceNames(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 3
    .param p1, "target"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1256
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v1

    .line 1257
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/net/LinkProperties$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1256
    return-object v0
.end method

.method public compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 3
    .param p1, "target"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 1238
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/net/LinkProperties$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method public compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 3
    .param p1, "target"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 1207
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    iget-object v1, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/net/LinkProperties$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method public compareValidatedPrivateDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 3
    .param p1, "target"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 1219
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    iget-object v1, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    .line 1220
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getValidatedPrivateDnsServers()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/net/LinkProperties$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1219
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method public ensureDirectlyConnectedRoutes()V
    .locals 5

    .line 646
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 647
    .local v1, "addr":Landroid/net/LinkAddress;
    new-instance v2, Landroid/net/RouteInfo;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 648
    .end local v1    # "addr":Landroid/net/LinkAddress;
    goto :goto_0

    .line 649
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1149
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1151
    :cond_0
    instance-of v1, p1, Landroid/net/LinkProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1153
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/LinkProperties;

    .line 1159
    .local v1, "target":Landroid/net/LinkProperties;
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1160
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1161
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1162
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalPrivateDns(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1163
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalValidatedPrivateDnses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1164
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1165
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1166
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalStackedLinks(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1167
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1168
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isIdenticalTcpBufferSizes(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1159
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 238
    .local v2, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v2    # "linkAddress":Landroid/net/LinkAddress;
    goto :goto_0

    .line 240
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAllAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 250
    .local v2, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v2    # "linkAddress":Landroid/net/LinkAddress;
    goto :goto_0

    .line 252
    :cond_0
    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 253
    .local v2, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    .end local v2    # "stacked":Landroid/net/LinkProperties;
    goto :goto_1

    .line 255
    :cond_1
    return-object v0
.end method

.method public getAllInterfaceNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    .local v0, "interfaceNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 220
    .local v2, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    .end local v2    # "stacked":Landroid/net/LinkProperties;
    goto :goto_0

    .line 222
    :cond_1
    return-object v0
.end method

.method public getAllLinkAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 327
    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 328
    .local v2, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    .end local v2    # "stacked":Landroid/net/LinkProperties;
    goto :goto_0

    .line 330
    :cond_0
    return-object v0
.end method

.method public getAllRoutes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 658
    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 659
    .local v2, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 660
    .end local v2    # "stacked":Landroid/net/LinkProperties;
    goto :goto_0

    .line 661
    :cond_0
    return-object v0
.end method

.method public getDnsServers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDomains()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 1

    .line 682
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMtu()I
    .locals 1

    .line 554
    iget v0, p0, Landroid/net/LinkProperties;->mMtu:I

    return v0
.end method

.method public getPrivateDnsServerName()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 637
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStackedLinks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 730
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v0, "stacked":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 732
    .local v2, "link":Landroid/net/LinkProperties;
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    .end local v2    # "link":Landroid/net/LinkProperties;
    goto :goto_0

    .line 734
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getTcpBufferSizes()Ljava/lang/String;
    .locals 1

    .line 577
    iget-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    return-object v0
.end method

.method public getValidatedPrivateDnsServers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasGlobalIPv6Address()Z
    .locals 3

    .line 851
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 852
    .local v1, "address":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 853
    const/4 v0, 0x1

    return v0

    .line 855
    .end local v1    # "address":Landroid/net/LinkAddress;
    :cond_0
    goto :goto_0

    .line 856
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasIPv4Address()Z
    .locals 3

    .line 824
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 825
    .local v1, "address":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 826
    const/4 v0, 0x1

    return v0

    .line 828
    .end local v1    # "address":Landroid/net/LinkAddress;
    :cond_0
    goto :goto_0

    .line 829
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasIPv4DefaultRoute()Z
    .locals 3

    .line 866
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 867
    .local v1, "r":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    const/4 v0, 0x1

    return v0

    .line 870
    .end local v1    # "r":Landroid/net/RouteInfo;
    :cond_0
    goto :goto_0

    .line 871
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasIPv4DnsServer()Z
    .locals 3

    .line 896
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 897
    .local v1, "ia":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 898
    const/4 v0, 0x1

    return v0

    .line 900
    .end local v1    # "ia":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 901
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasIPv6DefaultRoute()Z
    .locals 3

    .line 881
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 882
    .local v1, "r":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    const/4 v0, 0x1

    return v0

    .line 885
    .end local v1    # "r":Landroid/net/RouteInfo;
    :cond_0
    goto :goto_0

    .line 886
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasIPv6DnsServer()Z
    .locals 3

    .line 911
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 912
    .local v1, "ia":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 913
    const/4 v0, 0x1

    return v0

    .line 915
    .end local v1    # "ia":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 916
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1268
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1275
    move v0, v1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 1268
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    .line 1269
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    .line 1270
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    .line 1271
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3d

    add-int/2addr v0, v2

    .line 1272
    iget-object v2, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    .line 1273
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x29

    add-int/2addr v0, v2

    .line 1274
    iget-object v2, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    .line 1275
    invoke-virtual {v2}, Ljava/util/Hashtable;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2f

    add-int/2addr v0, v2

    :goto_2
    iget v2, p0, Landroid/net/LinkProperties;->mMtu:I

    mul-int/lit8 v2, v2, 0x33

    add-int/2addr v0, v2

    .line 1277
    iget-object v2, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    .line 1278
    iget-boolean v2, p0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x39

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    .line 1279
    iget-object v2, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    iget-object v1, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    .line 1268
    return v0
.end method

.method public isIPv4Provisioned()Z
    .locals 1

    .line 927
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 927
    :goto_0
    return v0
.end method

.method public isIPv6Provisioned()Z
    .locals 1

    .line 940
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 940
    :goto_0
    return v0
.end method

.method public isIdenticalAddresses(Landroid/net/LinkProperties;)Z
    .locals 4
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1012
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 1013
    .local v0, "targetAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    .line 1014
    .local v1, "sourceAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1015
    invoke-interface {v1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1014
    :goto_0
    return v2
.end method

.method public isIdenticalDnses(Landroid/net/LinkProperties;)Z
    .locals 5
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1026
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    .line 1027
    .local v0, "targetDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v1

    .line 1028
    .local v1, "targetDomains":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1029
    if-eqz v1, :cond_1

    return v3

    .line 1031
    :cond_0
    iget-object v2, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 1033
    :cond_1
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 1034
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    nop

    .line 1033
    :cond_2
    return v3
.end method

.method public isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1086
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1087
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1086
    :goto_0
    return v0
.end method

.method public isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1001
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isIdenticalMtu(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1119
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getMtu()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdenticalPrivateDns(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1046
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    move-result v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1047
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object v0

    .line 1048
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object v1

    .line 1047
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1046
    :goto_0
    return v0
.end method

.method public isIdenticalRoutes(Landroid/net/LinkProperties;)Z
    .locals 3
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1073
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 1074
    .local v0, "targetRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1075
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1074
    :goto_0
    return v1
.end method

.method public isIdenticalStackedLinks(Landroid/net/LinkProperties;)Z
    .locals 5
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1098
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1099
    return v1

    .line 1101
    :cond_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 1103
    .local v2, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 1104
    .local v3, "iface":Ljava/lang/String;
    iget-object v4, p1, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1105
    return v1

    .line 1107
    .end local v2    # "stacked":Landroid/net/LinkProperties;
    .end local v3    # "iface":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1108
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isIdenticalTcpBufferSizes(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1130
    iget-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isIdenticalValidatedPrivateDnses(Landroid/net/LinkProperties;)Z
    .locals 3
    .param p1, "target"    # Landroid/net/LinkProperties;

    .line 1060
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getValidatedPrivateDnsServers()Ljava/util/List;

    move-result-object v0

    .line 1061
    .local v0, "targetDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1062
    iget-object v1, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1061
    :goto_0
    return v1
.end method

.method public isPrivateDnsActive()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .line 953
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIPv4Provisioned()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReachable(Ljava/net/InetAddress;)Z
    .locals 5
    .param p1, "ip"    # Ljava/net/InetAddress;

    .line 964
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    .line 966
    .local v0, "allRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-static {v0, p1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    .line 967
    .local v1, "bestRoute":Landroid/net/RouteInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 968
    return v2

    .line 973
    :cond_0
    instance-of v3, p1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    .line 975
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/LinkProperties;->hasIPv4AddressOnInterface(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 976
    :cond_1
    instance-of v3, p1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_6

    .line 977
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 981
    move-object v3, p1

    check-cast v3, Ljava/net/Inet6Address;

    invoke-virtual {v3}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    nop

    :cond_2
    return v2

    .line 986
    :cond_3
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    goto :goto_1

    :cond_5
    :goto_0
    move v2, v4

    :goto_1
    return v2

    .line 990
    :cond_6
    return v2
.end method

.method public removeDnsServer(Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "dnsServer"    # Ljava/net/InetAddress;

    .line 371
    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeLinkAddress(Landroid/net/LinkAddress;)Z
    .locals 2
    .param p1, "toRemove"    # Landroid/net/LinkAddress;

    .line 302
    invoke-direct {p0, p1}, Landroid/net/LinkProperties;->findLinkAddressIndex(Landroid/net/LinkAddress;)I

    move-result v0

    .line 303
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 304
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 305
    const/4 v1, 0x1

    return v1

    .line 307
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeRoute(Landroid/net/RouteInfo;)Z
    .locals 2
    .param p1, "route"    # Landroid/net/RouteInfo;

    .line 626
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 627
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    .line 628
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 626
    :goto_0
    return v0
.end method

.method public removeStackedLink(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 715
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 716
    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 717
    .local v1, "removed":Landroid/net/LinkProperties;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 719
    .end local v1    # "removed":Landroid/net/LinkProperties;
    :cond_1
    return v0
.end method

.method public removeValidatedPrivateDnsServer(Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "dnsServer"    # Ljava/net/InetAddress;

    .line 480
    if-eqz p1, :cond_0

    .line 481
    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 483
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDnsServers(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 385
    .local p1, "dnsServers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 386
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 387
    .local v1, "dnsServer":Ljava/net/InetAddress;
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 388
    .end local v1    # "dnsServer":Ljava/net/InetAddress;
    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method

.method public setDomains(Ljava/lang/String;)V
    .locals 0
    .param p1, "domains"    # Ljava/lang/String;

    .line 521
    iput-object p1, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 673
    iput-object p1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 674
    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 196
    iput-object p1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .local v0, "newRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 199
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-direct {p0, v2}, Landroid/net/LinkProperties;->routeWithInterface(Landroid/net/RouteInfo;)Landroid/net/RouteInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v2    # "route":Landroid/net/RouteInfo;
    goto :goto_0

    .line 201
    :cond_0
    iput-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    .line 202
    return-void
.end method

.method public setLinkAddresses(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/LinkAddress;",
            ">;)V"
        }
    .end annotation

    .line 342
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 343
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 344
    .local v1, "address":Landroid/net/LinkAddress;
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 345
    .end local v1    # "address":Landroid/net/LinkAddress;
    goto :goto_0

    .line 346
    :cond_0
    return-void
.end method

.method public setMtu(I)V
    .locals 0
    .param p1, "mtu"    # I

    .line 543
    iput p1, p0, Landroid/net/LinkProperties;->mMtu:I

    .line 544
    return-void
.end method

.method public setPrivateDnsServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "privateDnsServerName"    # Ljava/lang/String;

    .line 433
    iput-object p1, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)V
    .locals 0
    .param p1, "tcpBufferSizes"    # Ljava/lang/String;

    .line 566
    iput-object p1, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    .line 567
    return-void
.end method

.method public setUsePrivateDns(Z)V
    .locals 0
    .param p1, "usePrivateDns"    # Z

    .line 408
    iput-boolean p1, p0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    .line 409
    return-void
.end method

.method public setValidatedPrivateDnsServers(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 495
    .local p1, "dnsServers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 496
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 497
    .local v1, "dnsServer":Ljava/net/InetAddress;
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->addValidatedPrivateDnsServer(Ljava/net/InetAddress;)Z

    .line 498
    .end local v1    # "dnsServer":Ljava/net/InetAddress;
    goto :goto_0

    .line 499
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .line 764
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterfaceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "ifaceName":Ljava/lang/String;
    :goto_0
    const-string v2, "LinkAddresses: ["

    .line 767
    .local v2, "linkAddresses":Ljava/lang/String;
    iget-object v3, v0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .local v4, "addr":Landroid/net/LinkAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v4    # "addr":Landroid/net/LinkAddress;
    goto :goto_1

    .line 768
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 770
    const-string v3, "DnsAddresses: ["

    .line 771
    .local v3, "dns":Ljava/lang/String;
    iget-object v4, v0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .local v5, "addr":Ljava/net/InetAddress;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v5    # "addr":Ljava/net/InetAddress;
    goto :goto_2

    .line 772
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 774
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsePrivateDns: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 776
    .local v4, "usePrivateDns":Ljava/lang/String;
    const-string v5, ""

    .line 777
    .local v5, "privateDnsServerName":Ljava/lang/String;
    nop

    .line 778
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PrivateDnsServerName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 781
    const-string v6, ""

    .line 782
    .local v6, "validatedPrivateDns":Ljava/lang/String;
    iget-object v7, v0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 783
    const-string v6, "ValidatedPrivateDnsAddresses: ["

    .line 784
    iget-object v7, v0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    .line 785
    .local v8, "addr":Ljava/net/InetAddress;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 786
    .end local v8    # "addr":Ljava/net/InetAddress;
    goto :goto_3

    .line 787
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 790
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Domains: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 792
    .local v7, "domainName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " MTU: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/net/LinkProperties;->mMtu:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 794
    .local v8, "mtu":Ljava/lang/String;
    const-string v9, ""

    .line 795
    .local v9, "tcpBuffSizes":Ljava/lang/String;
    iget-object v10, v0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 796
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " TcpBufferSizes: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 799
    :cond_5
    const-string v10, " Routes: ["

    .line 800
    .local v10, "routes":Ljava/lang/String;
    iget-object v11, v0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/RouteInfo;

    .local v12, "route":Landroid/net/RouteInfo;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .end local v12    # "route":Landroid/net/RouteInfo;
    goto :goto_4

    .line 801
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 802
    iget-object v11, v0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    if-nez v11, :cond_7

    const-string v11, ""

    goto :goto_5

    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " HttpProxy: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v12}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 804
    .local v11, "proxy":Ljava/lang/String;
    :goto_5
    const-string v12, ""

    .line 805
    .local v12, "stacked":Ljava/lang/String;
    iget-object v13, v0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v13}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    if-lez v13, :cond_9

    .line 806
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " Stacked: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 807
    iget-object v13, v0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v13}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/LinkProperties;

    .line 808
    .local v14, "link":Landroid/net/LinkProperties;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ],"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 809
    .end local v14    # "link":Landroid/net/LinkProperties;
    nop

    .line 807
    move-object/from16 v0, p0

    goto :goto_6

    .line 810
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 812
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "{"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "}"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1286
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 1289
    .local v1, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1290
    .end local v1    # "linkAddress":Landroid/net/LinkAddress;
    goto :goto_0

    .line 1292
    :cond_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1294
    .local v1, "d":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1295
    .end local v1    # "d":Ljava/net/InetAddress;
    goto :goto_1

    .line 1296
    :cond_1
    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    iget-object v0, p0, Landroid/net/LinkProperties;->mValidatedPrivateDnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1298
    .restart local v1    # "d":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1299
    .end local v1    # "d":Ljava/net/InetAddress;
    goto :goto_2

    .line 1300
    :cond_2
    iget-boolean v0, p0, Landroid/net/LinkProperties;->mUsePrivateDns:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1301
    iget-object v0, p0, Landroid/net/LinkProperties;->mPrivateDnsServerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1303
    iget v0, p0, Landroid/net/LinkProperties;->mMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    iget-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1306
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1307
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1308
    .end local v1    # "route":Landroid/net/RouteInfo;
    goto :goto_3

    .line 1310
    :cond_3
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_4

    .line 1311
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1312
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_4

    .line 1314
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1316
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1317
    .local v0, "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1318
    return-void
.end method

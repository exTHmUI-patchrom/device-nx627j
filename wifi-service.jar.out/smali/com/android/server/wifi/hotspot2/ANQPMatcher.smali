.class public Lcom/android/server/wifi/hotspot2/ANQPMatcher;
.super Ljava/lang/Object;
.source "ANQPMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static matchCellularNetwork(Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z
    .locals 3
    .param p0, "network"    # Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;
    .param p1, "imsiParam"    # Lcom/android/server/wifi/IMSIParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;",
            "Lcom/android/server/wifi/IMSIParameter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 225
    .local p2, "simImsiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;->getPlmns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 226
    .local v1, "plmn":Ljava/lang/String;
    invoke-static {v1, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchMccMnc(Ljava/lang/String;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    const/4 v0, 0x1

    return v0

    .line 229
    .end local v1    # "plmn":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 230
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static matchDomainName(Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;Ljava/lang/String;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z
    .locals 5
    .param p0, "element"    # Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "imsiParam"    # Lcom/android/server/wifi/IMSIParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/IMSIParameter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 52
    .local p3, "simImsiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 53
    return v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;->getDomains()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    .local v2, "domain":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/server/wifi/hotspot2/DomainMatcher;->arg2SubdomainOfArg1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 58
    return v4

    .line 63
    :cond_1
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->getMccMnc(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2, p3}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchMccMnc(Ljava/lang/String;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    return v4

    .line 66
    .end local v2    # "domain":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 67
    :cond_3
    return v0
.end method

.method private static matchEAPMethod(Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;ILcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)I
    .locals 4
    .param p0, "method"    # Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;
    .param p1, "eapMethodID"    # I
    .param p2, "authParam"    # Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

    .line 198
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->getEAPMethodID()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, p1, :cond_0

    .line 199
    return v1

    .line 202
    :cond_0
    if-eqz p2, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;->getAuthParams()Ljava/util/Map;

    move-result-object v0

    .line 204
    .local v0, "authParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;>;>;"
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;->getAuthTypeID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 205
    .local v2, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    const/4 v1, 0x3

    return v1

    .line 206
    :cond_2
    :goto_0
    return v1

    .line 210
    .end local v0    # "authParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;>;>;"
    .end local v2    # "paramSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;>;"
    :cond_3
    const/4 v0, 0x2

    return v0
.end method

.method private static matchMccMnc(Ljava/lang/String;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z
    .locals 4
    .param p0, "mccMnc"    # Ljava/lang/String;
    .param p1, "imsiParam"    # Lcom/android/server/wifi/IMSIParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/IMSIParameter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 244
    .local p2, "simImsiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/server/wifi/IMSIParameter;->matchesMccMnc(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    return v0

    .line 254
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    const/4 v0, 0x1

    return v0

    .line 258
    .end local v2    # "imsi":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 259
    :cond_3
    return v0

    .line 245
    :cond_4
    :goto_1
    return v0
.end method

.method public static matchNAIRealm(Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;Ljava/lang/String;ILcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)I
    .locals 5
    .param p0, "element"    # Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "eapMethodID"    # I
    .param p3, "authParam"    # Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

    .line 107
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;->getRealmDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 111
    :cond_0
    const/4 v0, -0x1

    .line 112
    .local v0, "bestMatch":I
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;->getRealmDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;

    .line 113
    .local v2, "realmData":Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;
    invoke-static {v2, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchNAIRealmData(Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;Ljava/lang/String;ILcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)I

    move-result v3

    .line 114
    .local v3, "match":I
    if-le v3, v0, :cond_1

    .line 115
    move v0, v3

    .line 116
    const/4 v4, 0x7

    if-ne v0, v4, :cond_1

    .line 117
    goto :goto_1

    .line 120
    .end local v2    # "realmData":Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;
    .end local v3    # "match":I
    :cond_1
    goto :goto_0

    .line 121
    :cond_2
    :goto_1
    return v0

    .line 108
    .end local v0    # "bestMatch":I
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private static matchNAIRealmData(Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;Ljava/lang/String;ILcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)I
    .locals 5
    .param p0, "realmData"    # Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "eapMethodID"    # I
    .param p3, "authParam"    # Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

    .line 158
    const/4 v0, -0x1

    .line 159
    .local v0, "realmMatch":I
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->getRealms()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    .local v2, "realmStr":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/server/wifi/hotspot2/DomainMatcher;->arg2SubdomainOfArg1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    const/4 v0, 0x4

    .line 162
    goto :goto_1

    .line 164
    .end local v2    # "realmStr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->getEAPMethods()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    return v0

    .line 171
    :cond_2
    const/4 v1, -0x1

    .line 172
    .local v1, "eapMethodMatch":I
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmData;->getEAPMethods()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;

    .line 173
    .local v3, "eapMethod":Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;
    invoke-static {v3, p2, p3}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchEAPMethod(Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;ILcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)I

    move-result v1

    .line 174
    if-eq v1, v4, :cond_3

    .line 175
    goto :goto_3

    .line 177
    .end local v3    # "eapMethod":Lcom/android/server/wifi/hotspot2/anqp/eap/EAPMethod;
    :cond_3
    goto :goto_2

    .line 179
    :cond_4
    :goto_3
    if-ne v1, v4, :cond_5

    .line 180
    return v4

    .line 183
    :cond_5
    if-ne v0, v4, :cond_6

    .line 184
    return v1

    .line 186
    :cond_6
    or-int v2, v0, v1

    return v2
.end method

.method public static matchRoamingConsortium(Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;[J)Z
    .locals 7
    .param p0, "element"    # Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;
    .param p1, "providerOIs"    # [J

    .line 80
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 81
    return v0

    .line 83
    :cond_0
    if-nez p1, :cond_1

    .line 84
    return v0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;->getOIs()Ljava/util/List;

    move-result-object v1

    .line 87
    .local v1, "rcOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-wide v4, p1, v3

    .line 88
    .local v4, "oi":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 89
    const/4 v0, 0x1

    return v0

    .line 87
    .end local v4    # "oi":J
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_3
    return v0
.end method

.method public static matchThreeGPPNetwork(Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z
    .locals 4
    .param p0, "element"    # Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;
    .param p1, "imsiParam"    # Lcom/android/server/wifi/IMSIParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;",
            "Lcom/android/server/wifi/IMSIParameter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 135
    .local p2, "simImsiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 136
    return v0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;->getNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;

    .line 139
    .local v2, "network":Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;
    invoke-static {v2, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchCellularNetwork(Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    const/4 v0, 0x1

    return v0

    .line 142
    .end local v2    # "network":Lcom/android/server/wifi/hotspot2/anqp/CellularNetwork;
    :cond_1
    goto :goto_0

    .line 143
    :cond_2
    return v0
.end method

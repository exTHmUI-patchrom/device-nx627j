.class public Lcom/android/server/wifi/hotspot2/anqp/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    }
.end annotation


# static fields
.field public static final ANQP_3GPP_NETWORK:I = 0x108

.field public static final ANQP_DOM_NAME:I = 0x10c

.field public static final ANQP_IP_ADDR_AVAILABILITY:I = 0x106

.field public static final ANQP_NAI_REALM:I = 0x107

.field public static final ANQP_QUERY_LIST:I = 0x100

.field public static final ANQP_ROAMING_CONSORTIUM:I = 0x105

.field public static final ANQP_VENDOR_SPEC:I = 0xdddd

.field public static final ANQP_VENUE_NAME:I = 0x102

.field public static final BYTES_IN_EUI48:I = 0x6

.field public static final BYTES_IN_INT:I = 0x4

.field public static final BYTES_IN_SHORT:I = 0x2

.field public static final BYTE_MASK:I = 0xff

.field public static final HS20_FRAME_PREFIX:I = 0x109a6f50

.field public static final HS20_PREFIX:I = 0x119a6f50

.field public static final HS_CONN_CAPABILITY:I = 0x5

.field public static final HS_FRIENDLY_NAME:I = 0x3

.field public static final HS_ICON_FILE:I = 0xb

.field public static final HS_ICON_REQUEST:I = 0xa

.field public static final HS_NAI_HOME_REALM_QUERY:I = 0x6

.field public static final HS_OSU_PROVIDERS:I = 0x8

.field public static final HS_QUERY_LIST:I = 0x1

.field public static final HS_WAN_METRICS:I = 0x4

.field public static final INT_MASK:J = 0xffffffffL

.field public static final LANG_CODE_LENGTH:I = 0x3

.field public static final MILLIS_IN_A_SEC:J = 0x3e8L

.field public static final NIBBLE_MASK:I = 0xf

.field public static final SHORT_MASK:I = 0xffff

.field public static final UTF8_INDICATOR:I = 0x1

.field public static final VENUE_INFO_LENGTH:I = 0x2

.field private static final sAnqpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHs20Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRevAnqpmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRevHs20map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sHs20Map:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sRevAnqpmap:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sRevHs20map:Ljava/util/Map;

    .line 80
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v1, 0x102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v1, 0x105

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v1, 0x106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v1, 0x107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v1, 0x108

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v1, 0x10c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const v1, 0xdddd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;>;"
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sRevAnqpmap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;>;"
    goto :goto_0

    .line 101
    :cond_0
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sHs20Map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;>;"
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sRevHs20map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;>;"
    goto :goto_1

    .line 104
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getANQPElementID(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;
    .locals 1
    .param p0, "elementType"    # Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 115
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sRevAnqpmap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getHS20ElementID(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;
    .locals 1
    .param p0, "elementType"    # Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 119
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sRevHs20map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static hasBaseANQPElements(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;)Z"
        }
    .end annotation

    .line 123
    .local p0, "elements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 124
    return v0

    .line 126
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 127
    .local v2, "element":Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    sget-object v3, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sRevAnqpmap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    const/4 v0, 0x1

    return v0

    .line 130
    .end local v2    # "element":Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    :cond_1
    goto :goto_0

    .line 131
    :cond_2
    return v0
.end method

.method public static hasR2Elements(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;)Z"
        }
    .end annotation

    .line 135
    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;>;"
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static mapANQPElement(I)Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .locals 2
    .param p0, "id"    # I

    .line 107
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    return-object v0
.end method

.method public static mapHS20Element(I)Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .locals 2
    .param p0, "id"    # I

    .line 111
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants;->sHs20Map:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    return-object v0
.end method

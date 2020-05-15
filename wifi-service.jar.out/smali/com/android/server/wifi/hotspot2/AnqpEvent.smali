.class public Lcom/android/server/wifi/hotspot2/AnqpEvent;
.super Ljava/lang/Object;
.source "AnqpEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnqpEvent"

.field private static final sWpsNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBssid:J

.field private final mElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->sWpsNames:Ljava/util/Map;

    .line 33
    sget-object v0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->sWpsNames:Ljava/util/Map;

    const-string v1, "anqp_venue_name"

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->sWpsNames:Ljava/util/Map;

    const-string v1, "anqp_roaming_consortium"

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->sWpsNames:Ljava/util/Map;

    const-string v1, "anqp_ip_addr_type_availability"

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->sWpsNames:Ljava/util/Map;

    const-string v1, "anqp_nai_realm"

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->sWpsNames:Ljava/util/Map;

    const-string v1, "anqp_3gpp"

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->sWpsNames:Ljava/util/Map;

    const-string v1, "anqp_domain_name"

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->sWpsNames:Ljava/util/Map;

    const-string v1, "hs20_operator_friendly_name"

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->sWpsNames:Ljava/util/Map;

    const-string v1, "hs20_wan_metrics"

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->sWpsNames:Ljava/util/Map;

    const-string v1, "hs20_connection_capability"

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->sWpsNames:Ljava/util/Map;

    const-string v1, "hs20_osu_providers_list"

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>(JLjava/util/Map;)V
    .locals 0
    .param p1, "bssid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p3, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->mBssid:J

    .line 58
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->mElements:Ljava/util/Map;

    .line 59
    return-void
.end method


# virtual methods
.method public getBssid()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->mBssid:J

    return-wide v0
.end method

.method public getElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpEvent;->mElements:Ljava/util/Map;

    return-object v0
.end method

.class public Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;
.super Ljava/lang/Object;
.source "PasspointNetworkScore.java"


# static fields
.field public static final HOME_PROVIDER_AWARD:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final INTERNET_ACCESS_AWARD:I = 0x32
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final IPV4_SCORES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IPV6_SCORES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NETWORK_TYPE_SCORES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERSONAL_OR_EMERGENCY_NETWORK_AWARDS:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PUBLIC_OR_PRIVATE_NETWORK_AWARDS:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final RESTRICTED_OR_UNKNOWN_IP_AWARDS:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final RSSI_SCORE:Landroid/net/RssiCurve;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final UNRESTRICTED_IP_AWARDS:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final WAN_PORT_DOWN_OR_CAPPED_PENALTY:I = 0x32
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV6_SCORES:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    .line 88
    new-instance v0, Landroid/net/RssiCurve;

    const/4 v1, 0x6

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/16 v3, 0x14

    const/16 v4, -0x50

    invoke-direct {v0, v4, v3, v2, v3}, Landroid/net/RssiCurve;-><init>(II[BI)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->RSSI_SCORE:Landroid/net/RssiCurve;

    .line 95
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->FreePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->ChargeablePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 96
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->PrivateWithGuest:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 98
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Private:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 100
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Personal:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->EmergencyOnly:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 104
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 103
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Wildcard:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->TestOrExperimental:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 110
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 109
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 111
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 113
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 116
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV6_SCORES:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV6_SCORES:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 123
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 122
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV6_SCORES:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 124
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void

    nop

    :array_0
    .array-data 1
        -0xat
        0x0t
        0xat
        0x14t
        0x1et
        0x28t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateScore(ZLcom/android/server/wifi/ScanDetail;Ljava/util/Map;Z)I
    .locals 8
    .param p0, "isHomeProvider"    # Z
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p3, "isActiveNetwork"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;Z)I"
        }
    .end annotation

    .line 149
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v0

    .line 150
    .local v0, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    const/4 v1, 0x0

    .line 151
    .local v1, "score":I
    if-eqz p0, :cond_0

    .line 152
    add-int/lit8 v1, v1, 0x64

    .line 156
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInternet()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    mul-int/lit8 v2, v2, 0x32

    add-int/2addr v1, v2

    .line 159
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->NETWORK_TYPE_SCORES:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    .line 161
    if-eqz p2, :cond_6

    .line 162
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 163
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;

    .line 164
    .local v2, "wm":Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;
    if-eqz v2, :cond_3

    .line 165
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->getStatus()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->isCapped()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    :cond_2
    add-int/lit8 v1, v1, -0x32

    .line 170
    :cond_3
    sget-object v3, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 171
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;

    .line 173
    .local v3, "ipa":Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;
    if-eqz v3, :cond_6

    .line 174
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV4_SCORES:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->getV4Availability()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 175
    .local v4, "v4Score":Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->IPV6_SCORES:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->getV6Availability()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 176
    .local v5, "v6Score":Ljava/lang/Integer;
    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_4
    move v7, v6

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 177
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    nop

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 178
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 182
    .end local v2    # "wm":Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;
    .end local v3    # "ipa":Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;
    .end local v4    # "v4Score":Ljava/lang/Integer;
    .end local v5    # "v6Score":Ljava/lang/Integer;
    :cond_6
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->RSSI_SCORE:Landroid/net/RssiCurve;

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3, p3}, Landroid/net/RssiCurve;->lookupScore(IZ)B

    move-result v2

    add-int/2addr v1, v2

    .line 183
    return v1
.end method

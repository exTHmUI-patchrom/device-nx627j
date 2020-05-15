.class public Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "IPAddressTypeAvailabilityElement.java"


# static fields
.field public static final EXPECTED_BUFFER_LENGTH:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final IPV4_AVAILABILITY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IPV4_AVAILABILITY_MASK:I = 0x3f

.field public static final IPV4_DOUBLE_NAT:I = 0x4

.field public static final IPV4_NOT_AVAILABLE:I = 0x0

.field public static final IPV4_PORT_RESTRICTED:I = 0x2

.field public static final IPV4_PORT_RESTRICTED_AND_DOUBLE_NAT:I = 0x6

.field public static final IPV4_PORT_RESTRICTED_AND_SINGLE_NAT:I = 0x5

.field public static final IPV4_PUBLIC:I = 0x1

.field public static final IPV4_SINGLE_NAT:I = 0x3

.field public static final IPV4_UNKNOWN:I = 0x7

.field private static final IPV6_AVAILABILITY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IPV6_AVAILABILITY_MASK:I = 0x3

.field public static final IPV6_AVAILABLE:I = 0x1

.field public static final IPV6_NOT_AVAILABLE:I = 0x0

.field public static final IPV6_UNKNOWN:I = 0x2


# instance fields
.field private final mV4Availability:I

.field private final mV6Availability:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    .line 54
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV6_AVAILABILITY:Ljava/util/Set;

    .line 71
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV6_AVAILABILITY:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV6_AVAILABILITY:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV6_AVAILABILITY:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "v4Availability"    # I
    .param p2, "v6Availability"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 84
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    .line 85
    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:I

    .line 86
    iput p2, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:I

    .line 87
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;
    .locals 5
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 102
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 104
    .local v0, "ipField":I
    and-int/lit8 v1, v0, 0x3

    .line 105
    .local v1, "v6Availability":I
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV6_AVAILABILITY:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    const/4 v1, 0x2

    .line 109
    :cond_0
    shr-int/lit8 v2, v0, 0x2

    and-int/lit8 v2, v2, 0x3f

    .line 110
    .local v2, "v4Availability":I
    sget-object v3, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->IPV4_AVAILABILITY:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    const/4 v2, 0x7

    .line 114
    :cond_1
    new-instance v3, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;

    invoke-direct {v3, v2, v1}, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;-><init>(II)V

    return-object v3

    .line 99
    .end local v0    # "ipField":I
    .end local v1    # "v6Availability":I
    .end local v2    # "v4Availability":I
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected buffer length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 128
    return v0

    .line 130
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 131
    return v2

    .line 133
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;

    .line 134
    .local v1, "that":Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;
    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:I

    iget v4, v1, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getV4Availability()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:I

    return v0
.end method

.method public getV6Availability()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 139
    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:I

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:I

    const/4 v2, 0x2

    add-int/2addr v2, v1

    shl-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPAddressTypeAvailability{mV4Availability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mV6Availability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

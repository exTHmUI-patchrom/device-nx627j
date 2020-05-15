.class public Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;
.super Ljava/lang/Object;
.source "ANQPParser.java"


# static fields
.field public static final VENDOR_SPECIFIC_HS20_OI:I = 0x506f9a
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final VENDOR_SPECIFIC_HS20_TYPE:I = 0x11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseElement(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
    .locals 3
    .param p0, "infoID"    # Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_0
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;->parseVendorSpecificElement(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;

    move-result-object v0

    return-object v0

    .line 72
    :pswitch_1
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;

    move-result-object v0

    return-object v0

    .line 70
    :pswitch_2
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;

    move-result-object v0

    return-object v0

    .line 68
    :pswitch_3
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;

    move-result-object v0

    return-object v0

    .line 66
    :pswitch_4
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;

    move-result-object v0

    return-object v0

    .line 64
    :pswitch_5
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;

    move-result-object v0

    return-object v0

    .line 62
    :pswitch_6
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/VenueNameElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/VenueNameElement;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseHS20Element(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
    .locals 3
    .param p0, "infoID"    # Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 101
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :pswitch_0
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/HSOsuProvidersElement;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_1
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;

    move-result-object v0

    return-object v0

    .line 95
    :pswitch_2
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;

    move-result-object v0

    return-object v0

    .line 93
    :pswitch_3
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseVendorSpecificElement(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
    .locals 7
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 120
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 121
    .local v0, "oi":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 123
    .local v1, "type":I
    const v2, 0x506f9a

    if-ne v0, v2, :cond_1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    .line 127
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 128
    .local v2, "subType":I
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/anqp/Constants;->mapHS20Element(I)Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    move-result-object v3

    .line 129
    .local v3, "hs20ID":Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 133
    invoke-static {v3, p0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;->parseHS20Element(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;

    move-result-object v4

    return-object v4

    .line 130
    :cond_0
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported subtype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    .end local v2    # "subType":I
    .end local v3    # "hs20ID":Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    :cond_1
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported vendor specific OI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

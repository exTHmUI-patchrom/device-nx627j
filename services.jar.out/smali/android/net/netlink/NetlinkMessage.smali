.class public Landroid/net/netlink/NetlinkMessage;
.super Ljava/lang/Object;
.source "NetlinkMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetlinkMessage"


# instance fields
.field protected mHeader:Landroid/net/netlink/StructNlMsgHdr;


# direct methods
.method public constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .locals 0
    .param p1, "nlmsghdr"    # Landroid/net/netlink/StructNlMsgHdr;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    .line 87
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;
    .locals 6
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 46
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 47
    .local v0, "startPosition":I
    :goto_0
    invoke-static {p0}, Landroid/net/netlink/StructNlMsgHdr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v1

    .line 48
    .local v1, "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 49
    return-object v2

    .line 52
    :cond_1
    iget v3, v1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v3

    .line 53
    .local v3, "payloadLength":I
    add-int/lit8 v3, v3, -0x10

    .line 54
    if-ltz v3, :cond_4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_1

    .line 60
    :cond_2
    iget-short v4, v1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 73
    iget-short v4, v1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/16 v5, 0xf

    if-gt v4, v5, :cond_3

    .line 76
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    new-instance v2, Landroid/net/netlink/NetlinkMessage;

    invoke-direct {v2, v1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    return-object v2

    .line 79
    :cond_3
    return-object v2

    .line 71
    :pswitch_0
    invoke-static {v1, p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/RtNetlinkNeighborMessage;

    move-result-object v2

    return-object v2

    .line 65
    :pswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    new-instance v2, Landroid/net/netlink/NetlinkMessage;

    invoke-direct {v2, v1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    return-object v2

    .line 63
    :pswitch_2
    invoke-static {v1, p0}, Landroid/net/netlink/NetlinkErrorMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkErrorMessage;

    move-result-object v2

    return-object v2

    .line 56
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    return-object v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getHeader()Landroid/net/netlink/StructNlMsgHdr;
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetlinkMessage{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

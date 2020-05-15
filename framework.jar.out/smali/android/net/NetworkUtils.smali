.class public Landroid/net/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "left"    # Ljava/net/InetAddress;
    .param p1, "right"    # Ljava/net/InetAddress;

    .line 323
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static native attachControlPacketFilter(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static native attachDhcpFilter(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static native attachRaFilter(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static native bindProcessToNetwork(I)Z
.end method

.method public static native bindProcessToNetworkForHostResolution(I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native bindSocketToNetwork(II)I
.end method

.method private static deduplicatePrefixSet(Ljava/util/TreeSet;)Ljava/util/TreeSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/util/TreeSet<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 398
    .local p0, "src":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 407
    .local v0, "dst":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 408
    .local v2, "newPrefix":Landroid/net/IpPrefix;
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpPrefix;

    .line 409
    .local v4, "existingPrefix":Landroid/net/IpPrefix;
    invoke-virtual {v4, v2}, Landroid/net/IpPrefix;->containsPrefix(Landroid/net/IpPrefix;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 410
    goto :goto_0

    .line 412
    .end local v4    # "existingPrefix":Landroid/net/IpPrefix;
    :cond_0
    goto :goto_1

    .line 413
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v2    # "newPrefix":Landroid/net/IpPrefix;
    goto :goto_0

    .line 415
    :cond_2
    return-object v0
.end method

.method public static native getBoundNetworkForProcess()I
.end method

.method public static getImplicitNetmask(Ljava/net/Inet4Address;)I
    .locals 2
    .param p0, "address"    # Ljava/net/Inet4Address;

    .line 282
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 283
    .local v0, "firstByte":I
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 284
    const/16 v1, 0x8

    return v1

    .line 285
    :cond_0
    const/16 v1, 0xc0

    if-ge v0, v1, :cond_1

    .line 286
    const/16 v1, 0x10

    return v1

    .line 287
    :cond_1
    const/16 v1, 0xe0

    if-ge v0, v1, :cond_2

    .line 288
    const/16 v1, 0x18

    return v1

    .line 290
    :cond_2
    const/16 v1, 0x20

    return v1
.end method

.method public static getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 6
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    .line 266
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 267
    .local v0, "array":[B
    invoke-static {v0, p1}, Landroid/net/NetworkUtils;->maskRawAddress([BI)V

    .line 269
    const/4 v1, 0x0

    .line 271
    .local v1, "netPart":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 274
    nop

    .line 275
    return-object v1

    .line 272
    :catch_0
    move-exception v2

    .line 273
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkPart error - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 7
    .param p0, "addrHexString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 337
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s:%s:%s:%s:%s:%s:%s:%s"

    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/Object;

    .line 338
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    .line 339
    const/16 v6, 0xc

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    const/16 v4, 0x10

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 340
    const/16 v2, 0x14

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x5

    const/16 v5, 0x18

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x6

    .line 341
    const/16 v4, 0x1c

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/4 v2, 0x7

    const/16 v5, 0x20

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 337
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in hexToInet6Address("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static inetAddressToInt(Ljava/net/Inet4Address;)I
    .locals 3
    .param p0, "inetAddr"    # Ljava/net/Inet4Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 153
    .local v0, "addr":[B
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public static intToInetAddress(I)Ljava/net/InetAddress;
    .locals 4
    .param p0, "hostAddress"    # I

    .line 133
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, 0xff

    and-int v2, v1, p0

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    shr-int/lit8 v2, p0, 0x8

    and-int/2addr v2, v1

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    shr-int/lit8 v2, p0, 0x10

    and-int/2addr v2, v1

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    shr-int/lit8 v2, p0, 0x18

    and-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 139
    .local v0, "addressBytes":[B
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public static makeStrings(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 354
    .local p0, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 355
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 356
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 357
    .local v3, "addr":Ljava/net/InetAddress;
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 358
    .end local v1    # "i":I
    .end local v3    # "addr":Ljava/net/InetAddress;
    nop

    .line 356
    move v1, v4

    goto :goto_0

    .line 359
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static maskRawAddress([BI)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "prefixLength"    # I

    .line 242
    if-ltz p1, :cond_2

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    if-gt p1, v0, :cond_2

    .line 247
    div-int/lit8 v0, p1, 0x8

    .line 248
    .local v0, "offset":I
    rem-int/lit8 v1, p1, 0x8

    .line 249
    .local v1, "remainder":I
    const/16 v2, 0xff

    rsub-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    int-to-byte v2, v2

    .line 251
    .local v2, "mask":B
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    and-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 255
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 256
    const/4 v3, 0x0

    aput-byte v3, p0, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    return-void

    .line 243
    .end local v0    # "offset":I
    .end local v1    # "remainder":I
    .end local v2    # "mask":B
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP address with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes has invalid prefix length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static netmaskIntToPrefixLength(I)I
    .locals 1
    .param p0, "netmask"    # I

    .line 177
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static netmaskToPrefixLength(Ljava/net/Inet4Address;)I
    .locals 6
    .param p0, "netmask"    # Ljava/net/Inet4Address;

    .line 189
    invoke-static {p0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    .line 190
    .local v0, "i":I
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 191
    .local v1, "prefixLength":I
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .line 192
    .local v2, "trailingZeros":I
    rsub-int/lit8 v3, v1, 0x20

    if-ne v2, v3, :cond_0

    .line 195
    return v1

    .line 193
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-contiguous netmask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "addrString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 209
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected static parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "flags"    # I

    .line 217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 218
    .local v0, "addressArray":[B
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 219
    return-void
.end method

.method public static parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .param p0, "ipAndMaskString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "address":Ljava/net/InetAddress;
    const/4 v1, -0x1

    move v2, v1

    .line 302
    .local v2, "prefixLength":I
    :try_start_0
    const-string v3, "/"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "pieces":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 304
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .end local v3    # "pieces":[Ljava/lang/String;
    goto :goto_0

    .line 308
    :catch_0
    move-exception v3

    goto :goto_1

    .line 307
    :catch_1
    move-exception v3

    goto :goto_0

    .line 306
    :catch_2
    move-exception v3

    goto :goto_0

    .line 305
    :catch_3
    move-exception v3

    .line 309
    :goto_0
    nop

    .line 311
    :goto_1
    if-eqz v0, :cond_0

    if-eq v2, v1, :cond_0

    .line 315
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 312
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid IP address and mask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static prefixLengthToNetmaskInt(I)I
    .locals 2
    .param p0, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 164
    if-ltz p0, :cond_0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    .line 167
    const/4 v1, -0x1

    sub-int/2addr v0, p0

    shl-int v0, v1, v0

    .line 168
    .local v0, "value":I
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    return v1

    .line 165
    .end local v0    # "value":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid prefix length (0 <= prefix <= 32)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native protectFromVpn(I)Z
.end method

.method public static protectFromVpn(Ljava/io/FileDescriptor;)Z
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 112
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z

    move-result v0

    return v0
.end method

.method public static native queryUserAccess(II)Z
.end method

.method public static routedIPv4AddressCount(Ljava/util/TreeSet;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Landroid/net/IpPrefix;",
            ">;)J"
        }
    .end annotation

    .line 428
    .local p0, "prefixes":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    const-wide/16 v0, 0x0

    .line 429
    .local v0, "routedIPCount":J
    invoke-static {p0}, Landroid/net/NetworkUtils;->deduplicatePrefixSet(Ljava/util/TreeSet;)Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpPrefix;

    .line 430
    .local v3, "prefix":Landroid/net/IpPrefix;
    invoke-virtual {v3}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v4

    if-nez v4, :cond_0

    .line 431
    const-string v4, "NetworkUtils"

    const-string v5, "Non-IPv4 prefix in routedIPv4AddressCount"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    invoke-virtual {v3}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x20

    .line 434
    .local v4, "rank":I
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    add-long/2addr v0, v5

    .line 435
    .end local v3    # "prefix":Landroid/net/IpPrefix;
    .end local v4    # "rank":I
    goto :goto_0

    .line 436
    :cond_1
    return-wide v0
.end method

.method public static routedIPv6AddressCount(Ljava/util/TreeSet;)Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .line 447
    .local p0, "prefixes":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Landroid/net/IpPrefix;>;"
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 448
    .local v0, "routedIPCount":Ljava/math/BigInteger;
    invoke-static {p0}, Landroid/net/NetworkUtils;->deduplicatePrefixSet(Ljava/util/TreeSet;)Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 449
    .local v2, "prefix":Landroid/net/IpPrefix;
    invoke-virtual {v2}, Landroid/net/IpPrefix;->isIPv6()Z

    move-result v3

    if-nez v3, :cond_0

    .line 450
    const-string v3, "NetworkUtils"

    const-string v4, "Non-IPv6 prefix in routedIPv6AddressCount"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    invoke-virtual {v2}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v3

    rsub-int v3, v3, 0x80

    .line 453
    .local v3, "rank":I
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 454
    .end local v2    # "prefix":Landroid/net/IpPrefix;
    .end local v3    # "rank":I
    goto :goto_0

    .line 455
    :cond_1
    return-object v0
.end method

.method public static native setupRaSocket(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "addr"    # Ljava/lang/String;

    .line 372
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 373
    :cond_0
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "octets":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    return-object p0

    .line 375
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 376
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 377
    .local v3, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 379
    :try_start_0
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    return-object p0

    .line 380
    :cond_2
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    nop

    .line 384
    if-ge v4, v6, :cond_3

    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 381
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object p0

    .line 386
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    .end local v3    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method protected static unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 226
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 227
    .local v0, "addressArray":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 228
    return-object v1

    .line 231
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 232
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Ljava/net/UnknownHostException;
    return-object v1
.end method

.class public final Landroid/media/MediaPlayer2Impl$DrmInfoImpl;
.super Landroid/media/MediaPlayer2$DrmInfo;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmInfoImpl"
.end annotation


# instance fields
.field private mapPssh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation
.end field

.field private supportedSchemes:[Ljava/util/UUID;


# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 3843
    invoke-direct {p0}, Landroid/media/MediaPlayer2$DrmInfo;-><init>()V

    .line 3844
    const-string v0, "MediaPlayer2Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmInfoImpl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3847
    .local v0, "psshsize":I
    new-array v1, v0, [B

    .line 3848
    .local v1, "pssh":[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 3850
    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmInfoImpl() PSSH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->arrToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    invoke-direct {p0, v1, v0}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->parsePSSH([BI)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->mapPssh:Ljava/util/Map;

    .line 3852
    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmInfoImpl() PSSH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->mapPssh:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3855
    .local v2, "supportedDRMsCount":I
    new-array v3, v2, [Ljava/util/UUID;

    iput-object v3, p0, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->supportedSchemes:[Ljava/util/UUID;

    .line 3856
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3857
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 3858
    .local v4, "uuid":[B
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 3860
    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->supportedSchemes:[Ljava/util/UUID;

    invoke-direct {p0, v4}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v6

    aput-object v6, v5, v3

    .line 3862
    const-string v5, "MediaPlayer2Impl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DrmInfoImpl() supportedScheme["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->supportedSchemes:[Ljava/util/UUID;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    .end local v4    # "uuid":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3866
    .end local v3    # "i":I
    :cond_0
    const-string v3, "MediaPlayer2Impl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DrmInfoImpl() Parcel psshsize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " supportedDRMsCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/MediaPlayer2Impl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/MediaPlayer2Impl$1;

    .line 3816
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;[Ljava/util/UUID;)V
    .locals 0
    .param p2, "SupportedSchemes"    # [Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;[",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .line 3838
    .local p1, "Pssh":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {p0}, Landroid/media/MediaPlayer2$DrmInfo;-><init>()V

    .line 3839
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->mapPssh:Ljava/util/Map;

    .line 3840
    iput-object p2, p0, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->supportedSchemes:[Ljava/util/UUID;

    .line 3841
    return-void
.end method

.method static synthetic access$5000(Landroid/media/MediaPlayer2Impl$DrmInfoImpl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    .line 3816
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->makeCopy()Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method private arrToHex([B)Ljava/lang/String;
    .locals 7
    .param p1, "bytes"    # [B

    .line 3875
    const-string v0, "0x"

    .line 3876
    .local v0, "out":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "out":Ljava/lang/String;
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 3877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, p1, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3876
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3880
    .end local v0    # "i":I
    :cond_0
    return-object v2
.end method

.method private bytesToUUID([B)Ljava/util/UUID;
    .locals 11
    .param p1, "uuid"    # [B

    .line 3884
    const-wide/16 v0, 0x0

    .local v0, "msb":J
    const-wide/16 v2, 0x0

    .line 3885
    .local v2, "lsb":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 3886
    aget-byte v6, p1, v4

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    rsub-int/lit8 v10, v4, 0x7

    mul-int/2addr v10, v5

    shl-long/2addr v6, v10

    or-long/2addr v0, v6

    .line 3887
    add-int/lit8 v6, v4, 0x8

    aget-byte v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    rsub-int/lit8 v8, v4, 0x7

    mul-int/2addr v5, v8

    shl-long v5, v6, v5

    or-long/2addr v2, v5

    .line 3885
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3890
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object v4
.end method

.method private makeCopy()Landroid/media/MediaPlayer2Impl$DrmInfoImpl;
    .locals 3

    .line 3871
    new-instance v0, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->mapPssh:Ljava/util/Map;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->supportedSchemes:[Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;-><init>(Ljava/util/Map;[Ljava/util/UUID;)V

    return-object v0
.end method

.method private parsePSSH([BI)Ljava/util/Map;
    .locals 19
    .param p1, "pssh"    # [B
    .param p2, "psshsize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3894
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3896
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    const/16 v3, 0x10

    .line 3897
    .local v3, "UUID_SIZE":I
    const/4 v4, 0x4

    .line 3899
    .local v4, "DATALEN_SIZE":I
    move/from16 v5, p2

    .line 3900
    .local v5, "len":I
    const/4 v6, 0x0

    .line 3901
    .local v6, "numentries":I
    const/4 v7, 0x0

    move v8, v6

    move v6, v5

    move v5, v7

    .line 3903
    .local v5, "i":I
    .local v6, "len":I
    .local v8, "numentries":I
    :goto_0
    if-lez v6, :cond_4

    .line 3904
    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v6, v10, :cond_0

    .line 3905
    const-string v10, "MediaPlayer2Impl"

    const-string/jumbo v13, "parsePSSH: len is too short to parse UUID: (%d < 16) pssh: %d"

    new-array v11, v11, [Ljava/lang/Object;

    .line 3906
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v12

    .line 3905
    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3907
    return-object v9

    .line 3910
    :cond_0
    add-int/lit8 v13, v5, 0x10

    invoke-static {v1, v5, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 3911
    .local v13, "subset":[B
    invoke-direct {v0, v13}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v14

    .line 3912
    .local v14, "uuid":Ljava/util/UUID;
    add-int/lit8 v5, v5, 0x10

    .line 3913
    add-int/lit8 v6, v6, -0x10

    .line 3916
    const/4 v15, 0x4

    if-ge v6, v15, :cond_1

    .line 3917
    const-string v10, "MediaPlayer2Impl"

    const-string/jumbo v15, "parsePSSH: len is too short to parse datalen: (%d < 4) pssh: %d"

    new-array v11, v11, [Ljava/lang/Object;

    .line 3918
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v11, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v12

    .line 3917
    invoke-static {v15, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    return-object v9

    .line 3922
    :cond_1
    add-int/lit8 v15, v5, 0x4

    invoke-static {v1, v5, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 3923
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v7, 0x3

    if-ne v15, v9, :cond_2

    .line 3925
    aget-byte v9, v13, v7

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    aget-byte v15, v13, v11

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v10, v15, 0x10

    or-int/2addr v9, v10

    aget-byte v10, v13, v12

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v15, 0x0

    aget-byte v10, v13, v15

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    goto :goto_1

    .line 3927
    :cond_2
    const/4 v15, 0x0

    aget-byte v9, v13, v15

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    aget-byte v15, v13, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v10, v15, 0x10

    or-int/2addr v9, v10

    aget-byte v10, v13, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget-byte v10, v13, v7

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 3928
    .local v9, "datalen":I
    :goto_1
    add-int/lit8 v5, v5, 0x4

    .line 3929
    add-int/lit8 v6, v6, -0x4

    .line 3931
    if-ge v6, v9, :cond_3

    .line 3932
    const-string v10, "MediaPlayer2Impl"

    const-string/jumbo v15, "parsePSSH: len is too short to parse data: (%d < %d) pssh: %d"

    new-array v7, v7, [Ljava/lang/Object;

    .line 3933
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v7, v17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v7, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v11

    .line 3932
    invoke-static {v15, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    const/4 v7, 0x0

    return-object v7

    .line 3937
    :cond_3
    add-int v10, v5, v9

    invoke-static {v1, v5, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 3940
    .local v10, "data":[B
    add-int/2addr v5, v9

    .line 3941
    sub-int/2addr v6, v9

    .line 3943
    const-string v15, "MediaPlayer2Impl"

    const-string/jumbo v7, "parsePSSH[%d]: <%s, %s> pssh: %d"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    .line 3944
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v11, v17

    aput-object v14, v11, v12

    invoke-direct {v0, v10}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->arrToHex([B)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x2

    aput-object v12, v11, v16

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v16, 0x3

    aput-object v12, v11, v16

    .line 3943
    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    add-int/lit8 v8, v8, 0x1

    .line 3946
    invoke-interface {v2, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3947
    .end local v9    # "datalen":I
    .end local v10    # "data":[B
    .end local v13    # "subset":[B
    .end local v14    # "uuid":Ljava/util/UUID;
    nop

    .line 3901
    move/from16 v7, v17

    goto/16 :goto_0

    .line 3949
    :cond_4
    return-object v2
.end method


# virtual methods
.method public getPssh()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .line 3825
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->mapPssh:Ljava/util/Map;

    return-object v0
.end method

.method public getSupportedSchemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 3835
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->supportedSchemes:[Ljava/util/UUID;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

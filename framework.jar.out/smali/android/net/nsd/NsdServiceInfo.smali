.class public final Landroid/net/nsd/NsdServiceInfo;
.super Ljava/lang/Object;
.source "NsdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NsdServiceInfo"


# instance fields
.field private mHost:Ljava/net/InetAddress;

.field private mPort:I

.field private mServiceName:Ljava/lang/String;

.field private mServiceType:Ljava/lang/String;

.field private final mTxtRecord:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 356
    new-instance v0, Landroid/net/nsd/NsdServiceInfo$1;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo$1;-><init>()V

    sput-object v0, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "rt"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    .line 56
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$002(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/nsd/NsdServiceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/nsd/NsdServiceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/nsd/NsdServiceInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0
    .param p0, "x0"    # Landroid/net/nsd/NsdServiceInfo;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .line 37
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/nsd/NsdServiceInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/nsd/NsdServiceInfo;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return p1
.end method

.method static synthetic access$400(Landroid/net/nsd/NsdServiceInfo;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Landroid/net/nsd/NsdServiceInfo;

    .line 37
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private getTxtRecordSize()I
    .locals 5

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "txtRecordSize":I
    iget-object v1, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 265
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    add-int/lit8 v0, v0, 0x2

    .line 266
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 267
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 268
    .local v3, "value":[B
    if-nez v3, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    array-length v4, v3

    :goto_1
    add-int/2addr v0, v4

    .line 269
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v3    # "value":[B
    goto :goto_0

    .line 270
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/net/InetAddress;
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 92
    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtRecord()[B
    .locals 11

    .line 275
    invoke-direct {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecordSize()I

    move-result v0

    .line 276
    .local v0, "txtRecordSize":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 277
    new-array v1, v1, [B

    return-object v1

    .line 280
    :cond_0
    new-array v2, v0, [B

    .line 281
    .local v2, "txtRecord":[B
    const/4 v3, 0x0

    .line 282
    .local v3, "ptr":I
    iget-object v4, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 283
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 284
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 287
    .local v7, "value":[B
    add-int/lit8 v8, v3, 0x1

    .local v8, "ptr":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v7, :cond_1

    move v10, v1

    goto :goto_1

    :cond_1
    array-length v10, v7

    :goto_1
    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    aput-byte v9, v2, v3

    .line 292
    .end local v3    # "ptr":I
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 293
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 292
    invoke-static {v3, v1, v2, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 294
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v8, v3

    .line 297
    add-int/lit8 v3, v8, 0x1

    .restart local v3    # "ptr":I
    const/16 v9, 0x3d

    aput-byte v9, v2, v8

    .line 300
    .end local v8    # "ptr":I
    if-eqz v7, :cond_2

    .line 301
    array-length v8, v7

    invoke-static {v7, v1, v2, v3, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 302
    array-length v8, v7

    add-int/2addr v3, v8

    .line 304
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":[B
    :cond_2
    goto :goto_0

    .line 305
    :cond_3
    return-object v2
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 240
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    check-cast v0, [B

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    goto :goto_1

    .line 240
    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    nop

    .line 244
    return-void

    .line 241
    :goto_1
    nop

    .line 242
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value must be UTF-8"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 194
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 196
    .local v2, "character":C
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_1

    .line 198
    const/16 v3, 0x3d

    if-eq v2, v3, :cond_0

    .line 194
    .end local v2    # "character":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .restart local v2    # "character":C
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key strings must not include \'=\'"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key strings must be printable US-ASCII"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    .end local v1    # "i":I
    .end local v2    # "character":C
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez p2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    array-length v2, p2

    :goto_1
    add-int/2addr v1, v2

    const/16 v2, 0xff

    if-ge v1, v2, :cond_8

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_4

    .line 210
    const-string v1, "NsdServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key lengths > 9 are discouraged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_4
    invoke-direct {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecordSize()I

    move-result v1

    .line 216
    .local v1, "txtRecordSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    array-length v0, p2

    :goto_2
    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    .line 217
    .local v2, "futureSize":I
    const/16 v0, 0x514

    if-gt v2, v0, :cond_7

    .line 219
    const/16 v0, 0x190

    if-le v2, v0, :cond_6

    .line 220
    const-string v0, "NsdServiceInfo"

    const-string v3, "Total length of all attributes exceeds 400 bytes; truncation may occur"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_6
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void

    .line 218
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Total length of attributes must be < 1300 bytes"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    .end local v1    # "txtRecordSize":I
    .end local v2    # "futureSize":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length + value length must be < 255 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHost(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "s"    # Ljava/net/InetAddress;

    .line 87
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    .line 88
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "p"    # I

    .line 97
    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    .line 98
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTxtRecords(Ljava/lang/String;)V
    .locals 10
    .param p1, "rawRecords"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 130
    .local v1, "txtRecordsRawBytes":[B
    nop

    .line 131
    .local v0, "pos":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_9

    .line 133
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    .line 134
    .local v2, "recordLen":I
    add-int/lit8 v0, v0, 0x1

    .line 137
    if-eqz v2, :cond_8

    .line 139
    add-int v3, v0, v2

    :try_start_0
    array-length v4, v1

    if-le v3, v4, :cond_0

    .line 140
    const-string v3, "NsdServiceInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Corrupt record length (pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    array-length v3, v1

    sub-int v2, v3, v0

    .line 145
    :cond_0
    const/4 v3, 0x0

    .line 146
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 147
    .local v4, "value":[B
    const/4 v5, 0x0

    .line 148
    .local v5, "valueLen":I
    move v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v0

    .local v3, "i":I
    .local v4, "key":Ljava/lang/String;
    .local v5, "value":[B
    .local v6, "valueLen":I
    :goto_1
    add-int v7, v0, v2

    if-ge v3, v7, :cond_4

    .line 149
    if-nez v4, :cond_1

    .line 150
    aget-byte v7, v1, v3

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_3

    .line 151
    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v0

    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v7, v1, v0, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v7

    goto :goto_2

    .line 155
    :cond_1
    if-nez v5, :cond_2

    .line 156
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, v2, v7

    add-int/lit8 v7, v7, -0x1

    new-array v7, v7, [B

    move-object v5, v7

    .line 158
    :cond_2
    aget-byte v7, v1, v3

    aput-byte v7, v5, v6

    .line 159
    add-int/lit8 v6, v6, 0x1

    .line 148
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    .end local v3    # "i":I
    :cond_4
    if-nez v4, :cond_5

    .line 165
    new-instance v3, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v0, v2, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v3

    .line 168
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 173
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 178
    invoke-virtual {p0, v4, v5}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V

    .line 181
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":[B
    .end local v6    # "valueLen":I
    goto :goto_3

    .line 175
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "value":[B
    .restart local v6    # "valueLen":I
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid txt record (duplicate key \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid txt record (key is empty)"

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":[B
    .end local v6    # "valueLen":I
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Zero sized txt record"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :catch_0
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "NsdServiceInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "While parsing txt records (pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    add-int/2addr v0, v2

    .line 184
    .end local v2    # "recordLen":I
    goto/16 :goto_0

    .line 185
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 309
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 311
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", type: "

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", host: "

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", port: "

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecord()[B

    move-result-object v1

    .line 317
    .local v1, "txtRecord":[B
    if-eqz v1, :cond_0

    .line 318
    const-string v2, ", txtRecord: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 330
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    :goto_0
    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 343
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 344
    .local v4, "value":[B
    if-eqz v4, :cond_1

    .line 345
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    array-length v5, v4

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2

    .line 349
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":[B
    goto :goto_1

    .line 353
    :cond_2
    return-void
.end method

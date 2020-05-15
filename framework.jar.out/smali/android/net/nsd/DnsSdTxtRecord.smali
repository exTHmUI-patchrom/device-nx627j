.class public Landroid/net/nsd/DnsSdTxtRecord;
.super Ljava/lang/Object;
.source "DnsSdTxtRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/nsd/DnsSdTxtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSeperator:B = 0x3dt


# instance fields
.field private mData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 313
    new-instance v0, Landroid/net/nsd/DnsSdTxtRecord$1;

    invoke-direct {v0}, Landroid/net/nsd/DnsSdTxtRecord$1;-><init>()V

    sput-object v0, Landroid/net/nsd/DnsSdTxtRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/net/nsd/DnsSdTxtRecord;)V
    .locals 1
    .param p1, "src"    # Landroid/net/nsd/DnsSdTxtRecord;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p1, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 62
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 55
    return-void
.end method

.method static synthetic access$000(Landroid/net/nsd/DnsSdTxtRecord;)[B
    .locals 1
    .param p0, "x0"    # Landroid/net/nsd/DnsSdTxtRecord;

    .line 42
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    return-object v0
.end method

.method private getKey(I)Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "avStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 198
    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 202
    iget-object v1, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v1, v1, v0

    .line 203
    .local v1, "avLen":I
    const/4 v2, 0x0

    .line 205
    .local v2, "aLen":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 206
    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 205
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v3, v4, v5, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v3

    .line 210
    .end local v1    # "avLen":I
    .end local v2    # "aLen":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private getValue(I)[B
    .locals 8
    .param p1, "index"    # I

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "avStart":I
    const/4 v1, 0x0

    .line 222
    .local v1, "value":[B
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "avStart":I
    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 223
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v4, v4, v3

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v0, v0

    if-ge v3, v0, :cond_2

    .line 227
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v0, v0, v3

    .line 228
    .local v0, "avLen":I
    const/4 v4, 0x0

    .line 230
    .local v4, "aLen":I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    .line 231
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v6, v3, v4

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_1

    .line 232
    sub-int v5, v0, v4

    add-int/lit8 v5, v5, -0x1

    new-array v1, v5, [B

    .line 233
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v6, v3, v4

    add-int/lit8 v6, v6, 0x2

    sub-int v7, v0, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v1, v2, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 234
    goto :goto_2

    .line 230
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 238
    .end local v0    # "avLen":I
    .end local v4    # "aLen":I
    :cond_2
    :goto_2
    return-object v1
.end method

.method private getValue(Ljava/lang/String;)[B
    .locals 3
    .param p1, "forKey"    # Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    .line 250
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 252
    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(I)[B

    move-result-object v2

    return-object v2

    .line 250
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getValueAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 242
    invoke-direct {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(I)[B

    move-result-object v0

    .line 243
    .local v0, "value":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private insert([B[BI)V
    .locals 10
    .param p1, "keyBytes"    # [B
    .param p2, "value"    # [B
    .param p3, "index"    # I

    .line 169
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 170
    .local v0, "oldBytes":[B
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    array-length v2, p2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 171
    .local v2, "valLen":I
    :goto_0
    const/4 v3, 0x0

    .line 174
    .local v3, "insertion":I
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "insertion":I
    :goto_1
    const/4 v5, 0x1

    if-ge v3, p3, :cond_1

    iget-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 175
    const/16 v6, 0xff

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v7, v7, v4

    add-int/2addr v7, v5

    and-int v5, v6, v7

    add-int/2addr v4, v5

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 178
    .end local v3    # "i":I
    :cond_1
    array-length v3, p1

    add-int/2addr v3, v2

    if-eqz p2, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    add-int/2addr v3, v6

    .line 179
    .local v3, "avLen":I
    array-length v6, v0

    add-int/2addr v6, v3

    add-int/2addr v6, v5

    .line 181
    .local v6, "newLen":I
    new-array v5, v6, [B

    iput-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 182
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v0, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 183
    array-length v5, v0

    sub-int/2addr v5, v4

    .line 184
    .local v5, "secondHalfLen":I
    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    sub-int v8, v6, v5

    invoke-static {v0, v4, v7, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 185
    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    int-to-byte v8, v3

    aput-byte v8, v7, v4

    .line 186
    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v8, v4, 0x1

    array-length v9, p1

    invoke-static {p1, v1, v7, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 187
    if-eqz p2, :cond_3

    .line 188
    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v8, v4, 0x1

    array-length v9, p1

    add-int/2addr v8, v9

    const/16 v9, 0x3d

    aput-byte v9, v7, v8

    .line 189
    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v8, p1

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x2

    invoke-static {p2, v1, v7, v8, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 191
    :cond_3
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_1

    .line 153
    invoke-virtual {p1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    return v1

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public describeContents()I
    .locals 1

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 286
    if-ne p1, p0, :cond_0

    .line 287
    const/4 v0, 0x1

    return v0

    .line 289
    :cond_0
    instance-of v0, p1, Landroid/net/nsd/DnsSdTxtRecord;

    if-nez v0, :cond_1

    .line 290
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/nsd/DnsSdTxtRecord;

    .line 294
    .local v0, "record":Landroid/net/nsd/DnsSdTxtRecord;
    iget-object v1, v0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 114
    .local v0, "val":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getRawData()[B
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 299
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public keyCount()I
    .locals 4

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "nextKey":I
    :goto_0
    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 144
    const/16 v2, 0xff

    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v3, v3, v1

    add-int/lit8 v3, v3, 0x1

    and-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return v0
.end method

.method public remove(Ljava/lang/String;)I
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "avStart":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "avStart":I
    :goto_0
    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 122
    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v3, v3, v2

    .line 123
    .local v3, "avLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v3, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v3, :cond_0

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_1

    .line 125
    :cond_0
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 126
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 127
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 128
    .local v5, "oldBytes":[B
    array-length v6, v5

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [B

    iput-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 129
    iget-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v5, v1, v6, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 130
    add-int v1, v2, v3

    add-int/lit8 v1, v1, 0x1

    iget-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v7, v5

    sub-int/2addr v7, v2

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v1, v6, v2, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 132
    return v0

    .line 135
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "oldBytes":[B
    :cond_1
    const/16 v4, 0xff

    add-int/lit8 v5, v3, 0x1

    and-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 121
    .end local v3    # "avLen":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 76
    .local v1, "valBytes":[B
    array-length v2, v1

    .line 76
    .local v2, "valLen":I
    goto :goto_0

    .line 78
    .end local v1    # "valBytes":[B
    .end local v2    # "valLen":I
    :cond_0
    const/4 v1, 0x0

    .line 79
    .restart local v1    # "valBytes":[B
    move v2, v0

    .line 83
    .restart local v2    # "valLen":I
    :goto_0
    :try_start_0
    const-string v3, "US-ASCII"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v3, "keyBytes":[B
    nop

    .line 86
    nop

    .line 89
    nop

    .line 89
    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 90
    aget-byte v4, v3, v0

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_1

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "= is not a valid character in key"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    .end local v0    # "i":I
    :cond_2
    array-length v0, v3

    add-int/2addr v0, v2

    const/16 v4, 0xff

    if-ge v0, v4, :cond_4

    .line 99
    invoke-virtual {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->remove(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "currentLoc":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    .line 101
    invoke-virtual {p0}, Landroid/net/nsd/DnsSdTxtRecord;->keyCount()I

    move-result v0

    .line 103
    :cond_3
    invoke-direct {p0, v3, v1, v0}, Landroid/net/nsd/DnsSdTxtRecord;->insert([B[BI)V

    .line 104
    return-void

    .line 96
    .end local v0    # "currentLoc":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Key and Value length cannot exceed 255 bytes"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    .end local v3    # "keyBytes":[B
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "key should be US-ASCII"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public size()I
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 269
    .local v1, "i":I
    :goto_0
    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 269
    .local v3, "a":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "av":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/net/nsd/DnsSdTxtRecord;->getValueAsString(I)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "val":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 275
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    :goto_1
    if-nez v0, :cond_1

    .line 277
    move-object v0, v2

    goto :goto_2

    .line 279
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .end local v2    # "av":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v1    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 309
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 310
    return-void
.end method

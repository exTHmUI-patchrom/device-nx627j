.class public final Landroid/net/IpSecAlgorithm;
.super Ljava/lang/Object;
.source "IpSecAlgorithm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecAlgorithm$AlgorithmName;
    }
.end annotation


# static fields
.field public static final AUTH_CRYPT_AES_GCM:Ljava/lang/String; = "rfc4106(gcm(aes))"

.field public static final AUTH_HMAC_MD5:Ljava/lang/String; = "hmac(md5)"

.field public static final AUTH_HMAC_SHA1:Ljava/lang/String; = "hmac(sha1)"

.field public static final AUTH_HMAC_SHA256:Ljava/lang/String; = "hmac(sha256)"

.field public static final AUTH_HMAC_SHA384:Ljava/lang/String; = "hmac(sha384)"

.field public static final AUTH_HMAC_SHA512:Ljava/lang/String; = "hmac(sha512)"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final CRYPT_AES_CBC:Ljava/lang/String; = "cbc(aes)"

.field public static final CRYPT_NULL:Ljava/lang/String; = "ecb(cipher_null)"

.field private static final TAG:Ljava/lang/String; = "IpSecAlgorithm"


# instance fields
.field private final mKey:[B

.field private final mName:Ljava/lang/String;

.field private final mTruncLenBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 194
    new-instance v0, Landroid/net/IpSecAlgorithm$1;

    invoke-direct {v0}, Landroid/net/IpSecAlgorithm$1;-><init>()V

    sput-object v0, Landroid/net/IpSecAlgorithm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/IpSecAlgorithm;-><init>(Ljava/lang/String;[BI)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "truncLenBits"    # I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    .line 159
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    .line 160
    iput p3, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    .line 161
    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    invoke-static {v0, v1, v2}, Landroid/net/IpSecAlgorithm;->checkValidOrThrow(Ljava/lang/String;II)V

    .line 162
    return-void
.end method

.method private static checkValidOrThrow(Ljava/lang/String;II)V
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "keyLen"    # I
    .param p2, "truncLen"    # I

    .line 210
    const/4 v0, 0x1

    .line 211
    .local v0, "isValidLen":Z
    const/4 v1, 0x1

    .line 213
    .local v1, "isValidTruncLen":Z
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "hmac(sha1)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "hmac(md5)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_2
    const-string v2, "hmac(sha512)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v2, "hmac(sha384)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "hmac(sha256)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_5
    const-string v2, "cbc(aes)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :sswitch_6
    const-string/jumbo v2, "rfc4106(gcm(aes))"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/16 v5, 0xc0

    const/16 v6, 0xa0

    const/16 v7, 0x100

    const/16 v8, 0x80

    const/16 v9, 0x60

    packed-switch v2, :pswitch_data_0

    .line 243
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find an algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :pswitch_0
    if-eq p1, v6, :cond_2

    const/16 v2, 0xe0

    if-eq p1, v2, :cond_2

    const/16 v2, 0x120

    if-ne p1, v2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    goto :goto_3

    :cond_2
    :goto_2
    move v2, v4

    :goto_3
    move v0, v2

    .line 240
    const/16 v2, 0x40

    if-eq p2, v2, :cond_4

    if-eq p2, v9, :cond_4

    if-ne p2, v8, :cond_3

    goto :goto_4

    :cond_3
    goto :goto_5

    :cond_4
    :goto_4
    move v3, v4

    :goto_5
    move v1, v3

    .line 241
    goto/16 :goto_d

    .line 234
    :pswitch_1
    const/16 v2, 0x200

    if-ne p1, v2, :cond_5

    move v5, v4

    goto :goto_6

    :cond_5
    move v5, v3

    :goto_6
    move v0, v5

    .line 235
    if-lt p2, v7, :cond_6

    if-gt p2, v2, :cond_6

    move v3, v4

    nop

    :cond_6
    move v1, v3

    .line 236
    goto/16 :goto_d

    .line 230
    :pswitch_2
    const/16 v2, 0x180

    if-ne p1, v2, :cond_7

    move v6, v4

    goto :goto_7

    :cond_7
    move v6, v3

    :goto_7
    move v0, v6

    .line 231
    if-lt p2, v5, :cond_8

    if-gt p2, v2, :cond_8

    move v3, v4

    nop

    :cond_8
    move v1, v3

    .line 232
    goto :goto_d

    .line 226
    :pswitch_3
    if-ne p1, v7, :cond_9

    move v2, v4

    goto :goto_8

    :cond_9
    move v2, v3

    :goto_8
    move v0, v2

    .line 227
    if-lt p2, v9, :cond_a

    if-gt p2, v7, :cond_a

    move v3, v4

    nop

    :cond_a
    move v1, v3

    .line 228
    goto :goto_d

    .line 222
    :pswitch_4
    if-ne p1, v6, :cond_b

    move v2, v4

    goto :goto_9

    :cond_b
    move v2, v3

    :goto_9
    move v0, v2

    .line 223
    if-lt p2, v9, :cond_c

    if-gt p2, v6, :cond_c

    move v3, v4

    nop

    :cond_c
    move v1, v3

    .line 224
    goto :goto_d

    .line 218
    :pswitch_5
    if-ne p1, v8, :cond_d

    move v2, v4

    goto :goto_a

    :cond_d
    move v2, v3

    :goto_a
    move v0, v2

    .line 219
    if-lt p2, v9, :cond_e

    if-gt p2, v8, :cond_e

    move v3, v4

    nop

    :cond_e
    move v1, v3

    .line 220
    goto :goto_d

    .line 215
    :pswitch_6
    if-eq p1, v8, :cond_10

    if-eq p1, v5, :cond_10

    if-ne p1, v7, :cond_f

    goto :goto_b

    :cond_f
    goto :goto_c

    :cond_10
    :goto_b
    move v3, v4

    :goto_c
    move v0, v3

    .line 216
    nop

    .line 246
    :goto_d
    if-eqz v0, :cond_12

    .line 249
    if-eqz v1, :cond_11

    .line 252
    return-void

    .line 250
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid truncation keyLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key material keyLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x43ce71de -> :sswitch_6
        0x17881bfe -> :sswitch_5
        0x215826a1 -> :sswitch_4
        0x2158a605 -> :sswitch_3
        0x2159743e -> :sswitch_2
        0x2d40230c -> :sswitch_1
        0x7b1b4343 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z
    .locals 4
    .param p0, "lhs"    # Landroid/net/IpSecAlgorithm;
    .param p1, "rhs"    # Landroid/net/IpSecAlgorithm;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 303
    :cond_0
    iget-object v2, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    iget-object v3, p1, Landroid/net/IpSecAlgorithm;->mKey:[B

    .line 304
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    iget v3, p1, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    if-ne v2, v3, :cond_1

    .line 303
    move v0, v1

    goto :goto_0

    .line 304
    :cond_1
    nop

    .line 303
    :goto_0
    return v0

    .line 302
    :cond_2
    :goto_1
    if-ne p0, p1, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0
.end method

.method private static isUnsafeBuild()Z
    .locals 1

    .line 282
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()[B
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTruncationLengthBits()I
    .locals 1

    .line 178
    iget v0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    return v0
.end method

.method public isAead()Z
    .locals 2

    .line 276
    invoke-virtual {p0}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rfc4106(gcm(aes))"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAuthentication()Z
    .locals 4

    .line 256
    invoke-virtual {p0}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "hmac(sha1)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "hmac(md5)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "hmac(sha512)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "hmac(sha384)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "hmac(sha256)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 265
    return v2

    .line 263
    :pswitch_0
    return v3

    :sswitch_data_0
    .sparse-switch
        0x215826a1 -> :sswitch_4
        0x2158a605 -> :sswitch_3
        0x2159743e -> :sswitch_2
        0x2d40230c -> :sswitch_1
        0x7b1b4343 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isEncryption()Z
    .locals 2

    .line 271
    invoke-virtual {p0}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cbc(aes)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mName="

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mKey="

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-static {}, Landroid/net/IpSecAlgorithm;->isUnsafeBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<hidden>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTruncLenBits="

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 188
    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 190
    iget v0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return-void
.end method

.class Landroid/util/apk/ApkVerityBuilder$BufferedDigester;
.super Ljava/lang/Object;
.source "ApkVerityBuilder.java"

# interfaces
.implements Landroid/util/apk/DataDigester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkVerityBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferedDigester"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private mBytesDigestedSinceReset:I

.field private final mDigestBuffer:[B

.field private final mMd:Ljava/security/MessageDigest;

.field private final mOutput:Ljava/nio/ByteBuffer;

.field private final mSalt:[B


# direct methods
.method private constructor <init>([BLjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "salt"    # [B
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mDigestBuffer:[B

    .line 184
    iput-object p1, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mSalt:[B

    .line 185
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    .line 186
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    .line 187
    iget-object v0, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    iget-object v1, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mSalt:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    .line 189
    return-void
.end method

.method synthetic constructor <init>([BLjava/nio/ByteBuffer;Landroid/util/apk/ApkVerityBuilder$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # Ljava/nio/ByteBuffer;
    .param p3, "x2"    # Landroid/util/apk/ApkVerityBuilder$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$100(Landroid/util/apk/ApkVerityBuilder$BufferedDigester;)V
    .locals 0
    .param p0, "x0"    # Landroid/util/apk/ApkVerityBuilder$BufferedDigester;

    .line 165
    invoke-direct {p0}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->fillUpLastOutputChunk()V

    return-void
.end method

.method private fillUpLastOutputChunk()V
    .locals 3

    .line 227
    iget-object v0, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1000

    .line 228
    .local v0, "lastBlockSize":I
    if-nez v0, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    rsub-int v2, v0, 0x1000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 232
    return-void
.end method


# virtual methods
.method public assertEmptyBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 221
    iget v0, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    if-nez v0, :cond_0

    .line 224
    return-void

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer is not empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 200
    .local v0, "offset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 201
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_1

    .line 202
    iget v2, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    const/16 v3, 0x1000

    rsub-int v2, v2, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 204
    .local v2, "allowance":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 205
    iget-object v4, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    invoke-virtual {v4, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 206
    add-int/2addr v0, v2

    .line 207
    sub-int/2addr v1, v2

    .line 208
    iget v4, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    .line 210
    iget v4, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    if-ne v4, v3, :cond_0

    .line 211
    iget-object v3, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    iget-object v4, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mDigestBuffer:[B

    iget-object v5, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mDigestBuffer:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/security/MessageDigest;->digest([BII)I

    .line 212
    iget-object v3, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mDigestBuffer:[B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 214
    iget-object v3, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    iget-object v4, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mSalt:[B

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 215
    iput v6, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    .line 217
    .end local v2    # "allowance":I
    :cond_0
    goto :goto_0

    .line 218
    :cond_1
    return-void
.end method

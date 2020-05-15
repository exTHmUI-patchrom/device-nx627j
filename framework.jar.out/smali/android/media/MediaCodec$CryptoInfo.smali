.class public final Landroid/media/MediaCodec$CryptoInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$CryptoInfo$Pattern;
    }
.end annotation


# instance fields
.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I

.field private pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

.field private final zeroPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2513
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->zeroPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method private setPattern(II)V
    .locals 1
    .param p1, "blocksToEncrypt"    # I
    .param p2, "blocksToSkip"    # I

    .line 2549
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 2550
    return-void
.end method


# virtual methods
.method public set(I[I[I[B[BI)V
    .locals 1
    .param p1, "newNumSubSamples"    # I
    .param p2, "newNumBytesOfClearData"    # [I
    .param p3, "newNumBytesOfEncryptedData"    # [I
    .param p4, "newKey"    # [B
    .param p5, "newIV"    # [B
    .param p6, "newMode"    # I

    .line 2531
    iput p1, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 2532
    iput-object p2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 2533
    iput-object p3, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 2534
    iput-object p4, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 2535
    iput-object p5, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 2536
    iput p6, p0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 2537
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->zeroPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 2538
    return-void
.end method

.method public setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V
    .locals 0
    .param p1, "newPattern"    # Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 2545
    iput-object p1, p0, Landroid/media/MediaCodec$CryptoInfo;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 2546
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 2554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2555
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " subsamples, key ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    const-string v1, "0123456789abcdef"

    .line 2557
    .local v1, "hexdigits":Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2558
    iget-object v4, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2559
    iget-object v4, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    aget-byte v4, v4, v3

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2557
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2561
    .end local v3    # "i":I
    :cond_0
    const-string v3, "], iv ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    nop

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2563
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2564
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    aget-byte v3, v3, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2562
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2566
    .end local v2    # "i":I
    :cond_1
    const-string v2, "], clear "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2567
    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2568
    const-string v2, ", encrypted "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2569
    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

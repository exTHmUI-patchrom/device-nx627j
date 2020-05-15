.class Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;
.super Ljava/lang/Object;
.source "AndroidKeyStoreECDSASignatureSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TruncateToFieldSizeMessageStreamer"
.end annotation


# instance fields
.field private mConsumedInputSizeBytes:J

.field private final mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private final mGroupSizeBits:I

.field private final mInputBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;I)V
    .locals 1
    .param p1, "delegate"    # Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .param p2, "groupSizeBits"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    .line 68
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 69
    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mGroupSizeBits:I

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;ILandroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$1;

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;I)V

    return-void
.end method


# virtual methods
.method public doFinal([BII[B[B)[B
    .locals 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .param p4, "signature"    # [B
    .param p5, "additionalEntropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 85
    if-lez p3, :cond_0

    .line 86
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    .line 87
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 91
    .local v0, "bufferedInput":[B
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 93
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    const/4 v3, 0x0

    array-length v2, v0

    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mGroupSizeBits:I

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    .line 95
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 93
    move-object v2, v0

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public getConsumedInputSizeBytes()J
    .locals 2

    .line 101
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    return-wide v0
.end method

.method public getProducedOutputSizeBytes()J
    .locals 2

    .line 106
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public update([BII)[B
    .locals 4
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 75
    if-lez p3, :cond_0

    .line 76
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 77
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    .line 79
    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0
.end method

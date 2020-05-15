.class public final Landroid/media/MediaCrypto;
.super Ljava/lang/Object;
.source "MediaCrypto.java"


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Landroid/media/MediaCrypto;->native_init()V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;[B)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "initData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Landroid/media/MediaCrypto;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/media/MediaCrypto;->native_setup([B[B)V

    .line 66
    return-void
.end method

.method private static final getByteArrayFromUUID(Ljava/util/UUID;)[B
    .locals 10
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 44
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 45
    .local v0, "msb":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 47
    .local v2, "lsb":J
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 48
    .local v4, "uuidBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    .line 49
    rsub-int/lit8 v7, v5, 0x7

    mul-int/2addr v7, v6

    ushr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 50
    add-int v7, v6, v5

    rsub-int/lit8 v8, v5, 0x7

    mul-int/2addr v6, v8

    ushr-long v8, v2, v6

    long-to-int v6, v8

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    .line 48
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 53
    .end local v5    # "i":I
    :cond_0
    return-object v4
.end method

.method public static final isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 39
    invoke-static {p0}, Landroid/media/MediaCrypto;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCrypto;->isCryptoSchemeSupportedNative([B)Z

    move-result v0

    return v0
.end method

.method private static final native isCryptoSchemeSupportedNative([B)Z
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup([B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 91
    invoke-direct {p0}, Landroid/media/MediaCrypto;->native_finalize()V

    .line 92
    return-void
.end method

.method public final native release()V
.end method

.method public final native requiresSecureDecoderComponent(Ljava/lang/String;)Z
.end method

.method public final native setMediaDrmSession([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method

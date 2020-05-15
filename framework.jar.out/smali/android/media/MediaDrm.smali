.class public final Landroid/media/MediaDrm;
.super Ljava/lang/Object;
.source "MediaDrm.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDrm$MetricsConstants;,
        Landroid/media/MediaDrm$Certificate;,
        Landroid/media/MediaDrm$CertificateRequest;,
        Landroid/media/MediaDrm$CryptoSession;,
        Landroid/media/MediaDrm$ArrayProperty;,
        Landroid/media/MediaDrm$StringProperty;,
        Landroid/media/MediaDrm$SecurityLevel;,
        Landroid/media/MediaDrm$HdcpLevel;,
        Landroid/media/MediaDrm$ProvisionRequest;,
        Landroid/media/MediaDrm$KeyRequest;,
        Landroid/media/MediaDrm$KeyType;,
        Landroid/media/MediaDrm$EventHandler;,
        Landroid/media/MediaDrm$DrmEvent;,
        Landroid/media/MediaDrm$OnEventListener;,
        Landroid/media/MediaDrm$KeyStatus;,
        Landroid/media/MediaDrm$OnKeyStatusChangeListener;,
        Landroid/media/MediaDrm$OnExpirationUpdateListener;,
        Landroid/media/MediaDrm$MediaDrmStateException;,
        Landroid/media/MediaDrm$CertificateType;
    }
.end annotation


# static fields
.field public static final CERTIFICATE_TYPE_NONE:I = 0x0

.field public static final CERTIFICATE_TYPE_X509:I = 0x1

.field private static final DRM_EVENT:I = 0xc8

.field public static final EVENT_KEY_EXPIRED:I = 0x3

.field public static final EVENT_KEY_REQUIRED:I = 0x2

.field public static final EVENT_PROVISION_REQUIRED:I = 0x1

.field public static final EVENT_SESSION_RECLAIMED:I = 0x5

.field public static final EVENT_VENDOR_DEFINED:I = 0x4

.field private static final EXPIRATION_UPDATE:I = 0xc9

.field public static final HDCP_LEVEL_UNKNOWN:I = 0x0

.field public static final HDCP_NONE:I = 0x1

.field public static final HDCP_NO_DIGITAL_OUTPUT:I = 0x7fffffff

.field public static final HDCP_V1:I = 0x2

.field public static final HDCP_V2:I = 0x3

.field public static final HDCP_V2_1:I = 0x4

.field public static final HDCP_V2_2:I = 0x5

.field private static final KEY_STATUS_CHANGE:I = 0xca

.field public static final KEY_TYPE_OFFLINE:I = 0x2

.field public static final KEY_TYPE_RELEASE:I = 0x3

.field public static final KEY_TYPE_STREAMING:I = 0x1

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_DRM_CERTIFICATES"

.field public static final PROPERTY_ALGORITHMS:Ljava/lang/String; = "algorithms"

.field public static final PROPERTY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final PROPERTY_DEVICE_UNIQUE_ID:Ljava/lang/String; = "deviceUniqueId"

.field public static final PROPERTY_VENDOR:Ljava/lang/String; = "vendor"

.field public static final PROPERTY_VERSION:Ljava/lang/String; = "version"

.field public static final SECURITY_LEVEL_HW_SECURE_ALL:I = 0x5

.field public static final SECURITY_LEVEL_HW_SECURE_CRYPTO:I = 0x3

.field public static final SECURITY_LEVEL_HW_SECURE_DECODE:I = 0x4

.field public static final SECURITY_LEVEL_MAX:I = 0x6

.field public static final SECURITY_LEVEL_SW_SECURE_CRYPTO:I = 0x1

.field public static final SECURITY_LEVEL_SW_SECURE_DECODE:I = 0x2

.field public static final SECURITY_LEVEL_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaDrm"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEventHandler:Landroid/media/MediaDrm$EventHandler;

.field private mNativeContext:J

.field private mOnEventListener:Landroid/media/MediaDrm$OnEventListener;

.field private mOnExpirationUpdateEventHandler:Landroid/media/MediaDrm$EventHandler;

.field private mOnExpirationUpdateListener:Landroid/media/MediaDrm$OnExpirationUpdateListener;

.field private mOnKeyStatusChangeEventHandler:Landroid/media/MediaDrm$EventHandler;

.field private mOnKeyStatusChangeListener:Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1644
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1645
    invoke-static {}, Landroid/media/MediaDrm;->native_init()V

    .line 1646
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/media/MediaDrm;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaDrm;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 212
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    .line 212
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Landroid/media/MediaDrm$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/MediaDrm$EventHandler;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    .line 215
    new-instance v0, Landroid/media/MediaDrm$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/MediaDrm$EventHandler;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    .line 223
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 224
    invoke-static {p1}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-direct {p0, v0, v2, v3}, Landroid/media/MediaDrm;->native_setup(Ljava/lang/Object;[BLjava/lang/String;)V

    .line 226
    iget-object v0, p0, Landroid/media/MediaDrm;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "release"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaDrm;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaDrm;

    .line 124
    iget-wide v0, p0, Landroid/media/MediaDrm;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$100(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;

    .line 124
    iget-object v0, p0, Landroid/media/MediaDrm;->mOnEventListener:Landroid/media/MediaDrm$OnEventListener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/MediaDrm;[B[B[B[B)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B
    .param p4, "x4"    # [B

    .line 124
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->verifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnKeyStatusChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;

    .line 124
    iget-object v0, p0, Landroid/media/MediaDrm;->mOnKeyStatusChangeListener:Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaDrm;Landroid/os/Parcel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;
    .param p1, "x1"    # Landroid/os/Parcel;

    .line 124
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->keyStatusListFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnExpirationUpdateListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;

    .line 124
    iget-object v0, p0, Landroid/media/MediaDrm;->mOnExpirationUpdateListener:Landroid/media/MediaDrm$OnExpirationUpdateListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaDrm;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;

    .line 124
    invoke-static {p0, p1, p2}, Landroid/media/MediaDrm;->setCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaDrm;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;

    .line 124
    invoke-static {p0, p1, p2}, Landroid/media/MediaDrm;->setMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/MediaDrm;[B[B[B[B)[B
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B
    .param p4, "x4"    # [B

    .line 124
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->encryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaDrm;[B[B[B[B)[B
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B
    .param p4, "x4"    # [B

    .line 124
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->decryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaDrm;[B[B[B)[B
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B

    .line 124
    invoke-static {p0, p1, p2, p3}, Landroid/media/MediaDrm;->signNative(Landroid/media/MediaDrm;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static final native decryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
.end method

.method private static final native encryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
.end method

.method private static final getByteArrayFromUUID(Ljava/util/UUID;)[B
    .locals 10
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 187
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 188
    .local v0, "msb":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 190
    .local v2, "lsb":J
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 191
    .local v4, "uuidBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    .line 192
    rsub-int/lit8 v7, v5, 0x7

    mul-int/2addr v7, v6

    ushr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 193
    add-int v7, v6, v5

    rsub-int/lit8 v8, v5, 0x7

    mul-int/2addr v6, v8

    ushr-long v8, v2, v6

    long-to-int v6, v8

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    .line 191
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    .end local v5    # "i":I
    :cond_0
    return-object v4
.end method

.method public static final getMaxSecurityLevel()I
    .locals 1

    .line 1206
    const/4 v0, 0x6

    return v0
.end method

.method private native getMetricsNative()Landroid/os/PersistableBundle;
.end method

.method private native getProvisionRequestNative(ILjava/lang/String;)Landroid/media/MediaDrm$ProvisionRequest;
.end method

.method public static final isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 2
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 170
    invoke-static {p0}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/MediaDrm;->isCryptoSchemeSupportedNative([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;)Z
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 183
    invoke-static {p0}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/MediaDrm;->isCryptoSchemeSupportedNative([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final native isCryptoSchemeSupportedNative([BLjava/lang/String;)Z
.end method

.method private keyStatusListFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;"
        }
    .end annotation

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 601
    .local v0, "nelems":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 602
    .local v1, "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .local v2, "nelems":I
    if-lez v0, :cond_0

    .line 603
    .end local v0    # "nelems":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 604
    .local v0, "keyId":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 605
    .local v3, "keyStatusCode":I
    new-instance v4, Landroid/media/MediaDrm$KeyStatus;

    invoke-direct {v4, v0, v3}, Landroid/media/MediaDrm$KeyStatus;-><init>([BI)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    .end local v0    # "keyId":[B
    .end local v3    # "keyStatusCode":I
    nop

    .line 601
    move v0, v2

    goto :goto_0

    .line 607
    :cond_0
    return-object v1
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup(Ljava/lang/Object;[BLjava/lang/String;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "mediadrm_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "eventType"    # I
    .param p3, "extra"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 620
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDrm;

    .line 621
    .local v0, "md":Landroid/media/MediaDrm;
    if-nez v0, :cond_0

    .line 622
    return-void

    .line 624
    :cond_0
    iget-object v1, v0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, v0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaDrm$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 626
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    invoke-virtual {v2, v1}, Landroid/media/MediaDrm$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 628
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private native provideProvisionResponseNative([B)Landroid/media/MediaDrm$Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method private static final native setCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
.end method

.method private static final native setMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
.end method

.method private static final native signNative(Landroid/media/MediaDrm;[B[B[B)[B
.end method

.method private static final native signRSANative(Landroid/media/MediaDrm;[BLjava/lang/String;[B[B)[B
.end method

.method private static final native verifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1621
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    .line 1622
    return-void
.end method

.method public native closeSession([B)V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1599
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaDrm;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Landroid/media/MediaDrm;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1602
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1604
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1605
    nop

    .line 1606
    return-void

    .line 1604
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCertificateRequest(ILjava/lang/String;)Landroid/media/MediaDrm$CertificateRequest;
    .locals 4
    .param p1, "certType"    # I
    .param p2, "certAuthority"    # Ljava/lang/String;

    .line 1503
    invoke-direct {p0, p1, p2}, Landroid/media/MediaDrm;->getProvisionRequestNative(ILjava/lang/String;)Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 1504
    .local v0, "provisionRequest":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v1, Landroid/media/MediaDrm$CertificateRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    .line 1505
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/MediaDrm$CertificateRequest;-><init>([BLjava/lang/String;)V

    .line 1504
    return-object v1
.end method

.method public native getConnectedHdcpLevel()I
.end method

.method public getCryptoSession([BLjava/lang/String;Ljava/lang/String;)Landroid/media/MediaDrm$CryptoSession;
    .locals 1
    .param p1, "sessionId"    # [B
    .param p2, "cipherAlgorithm"    # Ljava/lang/String;
    .param p3, "macAlgorithm"    # Ljava/lang/String;

    .line 1454
    new-instance v0, Landroid/media/MediaDrm$CryptoSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/MediaDrm$CryptoSession;-><init>(Landroid/media/MediaDrm;[BLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public native getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation
.end method

.method public native getMaxHdcpLevel()I
.end method

.method public native getMaxSessionCount()I
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    .line 1337
    invoke-direct {p0}, Landroid/media/MediaDrm;->getMetricsNative()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1338
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method public native getOpenSessionCount()I
.end method

.method public native getPropertyByteArray(Ljava/lang/String;)[B
.end method

.method public native getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;
    .locals 2

    .line 954
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/MediaDrm;->getProvisionRequestNative(ILjava/lang/String;)Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    return-object v0
.end method

.method public native getSecureStop([B)[B
.end method

.method public native getSecureStopIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public native getSecureStops()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public native getSecurityLevel([B)I
.end method

.method public final native native_release()V
.end method

.method public openSession()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation

    .line 640
    invoke-static {}, Landroid/media/MediaDrm;->getMaxSecurityLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaDrm;->openSession(I)[B

    move-result-object v0

    return-object v0
.end method

.method public native openSession(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation
.end method

.method public provideCertificateResponse([B)Landroid/media/MediaDrm$Certificate;
    .locals 1
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 1570
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->provideProvisionResponseNative([B)Landroid/media/MediaDrm$Certificate;

    move-result-object v0

    return-object v0
.end method

.method public native provideKeyResponse([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public provideProvisionResponse([B)V
    .locals 0
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 973
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->provideProvisionResponseNative([B)Landroid/media/MediaDrm$Certificate;

    .line 974
    return-void
.end method

.method public native queryKeyStatus([B)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public release()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1629
    iget-object v0, p0, Landroid/media/MediaDrm;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 1630
    iget-object v0, p0, Landroid/media/MediaDrm;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1631
    invoke-virtual {p0}, Landroid/media/MediaDrm;->native_release()V

    .line 1633
    :cond_0
    return-void
.end method

.method public releaseAllSecureStops()V
    .locals 0

    .line 1057
    invoke-virtual {p0}, Landroid/media/MediaDrm;->removeAllSecureStops()V

    .line 1058
    return-void
.end method

.method public native releaseSecureStops([B)V
.end method

.method public native removeAllSecureStops()V
.end method

.method public native removeKeys([B)V
.end method

.method public native removeSecureStop([B)V
.end method

.method public native restoreKeys([B[B)V
.end method

.method public setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaDrm$OnEventListener;

    .line 442
    iput-object p1, p0, Landroid/media/MediaDrm;->mOnEventListener:Landroid/media/MediaDrm$OnEventListener;

    .line 443
    return-void
.end method

.method public setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaDrm$OnExpirationUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 284
    if-eqz p1, :cond_2

    .line 285
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 286
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v0, :cond_2

    .line 287
    iget-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    invoke-virtual {v1}, Landroid/media/MediaDrm$EventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 288
    :cond_1
    new-instance v1, Landroid/media/MediaDrm$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaDrm$EventHandler;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    .line 292
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_2
    iput-object p1, p0, Landroid/media/MediaDrm;->mOnExpirationUpdateListener:Landroid/media/MediaDrm$OnExpirationUpdateListener;

    .line 293
    return-void
.end method

.method public setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaDrm$OnKeyStatusChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 326
    if-eqz p1, :cond_2

    .line 327
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 328
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v0, :cond_2

    .line 329
    iget-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    invoke-virtual {v1}, Landroid/media/MediaDrm$EventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 330
    :cond_1
    new-instance v1, Landroid/media/MediaDrm$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaDrm$EventHandler;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    .line 334
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_2
    iput-object p1, p0, Landroid/media/MediaDrm;->mOnKeyStatusChangeListener:Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    .line 335
    return-void
.end method

.method public native setPropertyByteArray(Ljava/lang/String;[B)V
.end method

.method public native setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public signRSA([BLjava/lang/String;[B[B)[B
    .locals 1
    .param p1, "sessionId"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "wrappedKey"    # [B
    .param p4, "message"    # [B

    .line 1593
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->signRSANative(Landroid/media/MediaDrm;[BLjava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0
.end method

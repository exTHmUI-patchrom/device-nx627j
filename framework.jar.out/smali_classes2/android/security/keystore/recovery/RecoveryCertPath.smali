.class public final Landroid/security/keystore/recovery/RecoveryCertPath;
.super Ljava/lang/Object;
.source "RecoveryCertPath.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CERT_PATH_ENCODING:Ljava/lang/String; = "PkiPath"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEncodedCertPath:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Landroid/security/keystore/recovery/RecoveryCertPath$1;

    invoke-direct {v0}, Landroid/security/keystore/recovery/RecoveryCertPath$1;-><init>()V

    sput-object v0, Landroid/security/keystore/recovery/RecoveryCertPath;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/RecoveryCertPath;->mEncodedCertPath:[B

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/security/keystore/recovery/RecoveryCertPath$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/security/keystore/recovery/RecoveryCertPath$1;

    .line 36
    invoke-direct {p0, p1}, Landroid/security/keystore/recovery/RecoveryCertPath;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .param p1, "encodedCertPath"    # [B

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/security/keystore/recovery/RecoveryCertPath;->mEncodedCertPath:[B

    .line 71
    return-void
.end method

.method public static createRecoveryCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/RecoveryCertPath;
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 52
    :try_start_0
    new-instance v0, Landroid/security/keystore/recovery/RecoveryCertPath;

    invoke-static {p0}, Landroid/security/keystore/recovery/RecoveryCertPath;->encodeCertPath(Ljava/security/cert/CertPath;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/keystore/recovery/RecoveryCertPath;-><init>([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Failed to encode the given CertPath"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static decodeCertPath([B)Ljava/security/cert/CertPath;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 107
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 113
    nop

    .line 115
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "PkiPath"

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v1

    return-object v1

    .line 111
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static encodeCertPath(Ljava/security/cert/CertPath;)[B
    .locals 1
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 101
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "PkiPath"

    invoke-virtual {p0, v0}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryCertPath;->mEncodedCertPath:[B

    invoke-static {v0}, Landroid/security/keystore/recovery/RecoveryCertPath;->decodeCertPath([B)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryCertPath;->mEncodedCertPath:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 91
    return-void
.end method

.class Landroid/util/apk/VerbatimX509Certificate;
.super Landroid/util/apk/WrappedX509Certificate;
.source "VerbatimX509Certificate.java"


# instance fields
.field private final mEncodedVerbatim:[B

.field private mHash:I


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .locals 1
    .param p1, "wrapped"    # Ljava/security/cert/X509Certificate;
    .param p2, "encodedVerbatim"    # [B

    .line 32
    invoke-direct {p0, p1}, Landroid/util/apk/WrappedX509Certificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I

    .line 33
    iput-object p2, p0, Landroid/util/apk/VerbatimX509Certificate;->mEncodedVerbatim:[B

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    instance-of v0, p1, Landroid/util/apk/VerbatimX509Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 47
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/util/apk/VerbatimX509Certificate;->getEncoded()[B

    move-result-object v0

    .line 48
    .local v0, "a":[B
    move-object v2, p1

    check-cast v2, Landroid/util/apk/VerbatimX509Certificate;

    invoke-virtual {v2}, Landroid/util/apk/VerbatimX509Certificate;->getEncoded()[B

    move-result-object v2

    .line 49
    .local v2, "b":[B
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 50
    .end local v0    # "a":[B
    .end local v2    # "b":[B
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    return v1
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mEncodedVerbatim:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 57
    iget v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Landroid/util/apk/VerbatimX509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    const/4 v1, 0x0

    iput v1, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I

    .line 64
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I

    return v0
.end method

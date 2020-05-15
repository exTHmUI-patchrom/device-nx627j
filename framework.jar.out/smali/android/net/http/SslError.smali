.class public Landroid/net/http/SslError;
.super Ljava/lang/Object;
.source "SslError.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final SSL_DATE_INVALID:I = 0x4

.field public static final SSL_EXPIRED:I = 0x1

.field public static final SSL_IDMISMATCH:I = 0x2

.field public static final SSL_INVALID:I = 0x5

.field public static final SSL_MAX_ERROR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SSL_NOTYETVALID:I = 0x0

.field public static final SSL_UNTRUSTED:I = 0x3


# instance fields
.field final mCertificate:Landroid/net/http/SslCertificate;

.field mErrors:I

.field final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 25
    return-void
.end method

.method public constructor <init>(ILandroid/net/http/SslCertificate;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "certificate"    # Landroid/net/http/SslCertificate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "certificate"    # Landroid/net/http/SslCertificate;
    .param p3, "url"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    nop

    .line 115
    nop

    .line 116
    invoke-virtual {p0, p1}, Landroid/net/http/SslError;->addError(I)Z

    .line 117
    iput-object p2, p0, Landroid/net/http/SslError;->mCertificate:Landroid/net/http/SslCertificate;

    .line 118
    iput-object p3, p0, Landroid/net/http/SslError;->mUrl:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>(ILjava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(ILjava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p3, "url"    # Ljava/lang/String;

    .line 129
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 2
    .param p0, "error"    # I
    .param p1, "cert"    # Landroid/net/http/SslCertificate;
    .param p2, "url"    # Ljava/lang/String;

    .line 143
    nop

    .line 144
    const/16 v0, -0xc8

    if-ne p0, v0, :cond_0

    .line 145
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    return-object v0

    .line 146
    :cond_0
    const/16 v0, -0xc9

    if-ne p0, v0, :cond_1

    .line 147
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    return-object v0

    .line 148
    :cond_1
    const/16 v0, -0xca

    if-ne p0, v0, :cond_2

    .line 149
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    return-object v0

    .line 151
    :cond_2
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addError(I)Z
    .locals 3
    .param p1, "error"    # I

    .line 177
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x6

    if-ge p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 178
    .local v1, "rval":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 179
    iget v2, p0, Landroid/net/http/SslError;->mErrors:I

    shl-int/2addr v0, p1

    or-int/2addr v0, v2

    iput v0, p0, Landroid/net/http/SslError;->mErrors:I

    .line 182
    :cond_1
    return v1
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 159
    iget-object v0, p0, Landroid/net/http/SslError;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getPrimaryError()I
    .locals 3

    .line 205
    iget v0, p0, Landroid/net/http/SslError;->mErrors:I

    if-eqz v0, :cond_2

    .line 207
    const/4 v0, 0x5

    .local v0, "error":I
    :goto_0
    if-ltz v0, :cond_1

    .line 208
    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 209
    return v0

    .line 207
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 213
    .end local v0    # "error":I
    :cond_1
    nop

    .line 216
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Landroid/net/http/SslError;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasError(I)Z
    .locals 5
    .param p1, "error"    # I

    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    const/4 v2, 0x6

    if-ge p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 192
    .local v2, "rval":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 193
    iget v3, p0, Landroid/net/http/SslError;->mErrors:I

    shl-int v4, v1, p1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v0, v1

    nop

    :cond_1
    move v2, v0

    .line 196
    :cond_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "primary error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p0}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p0}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    return-object v0
.end method

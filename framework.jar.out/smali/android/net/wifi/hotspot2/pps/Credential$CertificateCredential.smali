.class public final Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CertificateCredential"
.end annotation


# static fields
.field private static final CERT_SHA256_FINGER_PRINT_LENGTH:I = 0x20

.field public static final CERT_TYPE_X509V3:Ljava/lang/String; = "x509v3"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCertSha256Fingerprint:[B

.field private mCertType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 602
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 510
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 531
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 510
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 539
    if-eqz p1, :cond_0

    .line 540
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 541
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 546
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 561
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 562
    return v0

    .line 564
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 565
    return v2

    .line 568
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 569
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 570
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 569
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCertSha256Fingerprint()[B
    .locals 1

    .line 525
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    return-object v0
.end method

.method public getCertType()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 575
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCertSha256Fingerprint([B)V
    .locals 0
    .param p1, "certSha256Fingerprint"    # [B

    .line 517
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 518
    return-void
.end method

.method public setCertType(Ljava/lang/String;)V
    .locals 0
    .param p1, "certType"    # Ljava/lang/String;

    .line 496
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CertificateType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Z
    .locals 4

    .line 590
    const-string/jumbo v0, "x509v3"

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 591
    const-string v0, "Credential"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported certificate type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return v1

    .line 594
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    array-length v0, v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 599
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 596
    :cond_2
    :goto_0
    const-string v0, "Credential"

    const-string v2, "Invalid SHA-256 fingerprint"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 555
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 557
    return-void
.end method

.class public Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV3Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV3Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedSigner"
.end annotation


# instance fields
.field public final certs:[Ljava/security/cert/X509Certificate;

.field public final por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

.field public verityRootHash:[B


# direct methods
.method public constructor <init>([Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;)V
    .locals 0
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "por"    # Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    .line 601
    iput-object p2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    .line 602
    return-void
.end method

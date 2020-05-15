.class public Landroid/util/apk/ApkSignatureVerifier$Result;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final certs:[[Ljava/security/cert/Certificate;

.field public final signatureSchemeVersion:I

.field public final sigs:[Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>([[Ljava/security/cert/Certificate;[Landroid/content/pm/Signature;I)V
    .locals 0
    .param p1, "certs"    # [[Ljava/security/cert/Certificate;
    .param p2, "sigs"    # [Landroid/content/pm/Signature;
    .param p3, "signingVersion"    # I

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p1, p0, Landroid/util/apk/ApkSignatureVerifier$Result;->certs:[[Ljava/security/cert/Certificate;

    .line 563
    iput-object p2, p0, Landroid/util/apk/ApkSignatureVerifier$Result;->sigs:[Landroid/content/pm/Signature;

    .line 564
    iput p3, p0, Landroid/util/apk/ApkSignatureVerifier$Result;->signatureSchemeVersion:I

    .line 565
    return-void
.end method

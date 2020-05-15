.class public final Landroid/content/pm/InstantAppRequest;
.super Ljava/lang/Object;
.source "InstantAppRequest.java"


# instance fields
.field public final callingPackage:Ljava/lang/String;

.field public final digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

.field public final origIntent:Landroid/content/Intent;

.field public final resolveForStart:Z

.field public final resolvedType:Ljava/lang/String;

.field public final responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

.field public final userId:I

.field public final verificationBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)V
    .locals 3
    .param p1, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "origIntent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "verificationBundle"    # Landroid/os/Bundle;
    .param p7, "resolveForStart"    # Z

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 52
    iput-object p2, p0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 53
    iput-object p3, p0, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Landroid/content/pm/InstantAppRequest;->callingPackage:Ljava/lang/String;

    .line 55
    iput p5, p0, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 56
    iput-object p6, p0, Landroid/content/pm/InstantAppRequest;->verificationBundle:Landroid/os/Bundle;

    .line 57
    iput-boolean p7, p0, Landroid/content/pm/InstantAppRequest;->resolveForStart:Z

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    goto :goto_0

    .line 62
    :cond_0
    sget-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    iput-object v0, p0, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 64
    :goto_0
    return-void
.end method

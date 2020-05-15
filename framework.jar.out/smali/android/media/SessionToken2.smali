.class public final Landroid/media/SessionToken2;
.super Ljava/lang/Object;
.source "SessionToken2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SessionToken2$TokenType;
    }
.end annotation


# static fields
.field public static final TYPE_LIBRARY_SERVICE:I = 0x2

.field public static final TYPE_SESSION:I = 0x0

.field public static final TYPE_SESSION_SERVICE:I = 0x1

.field private static final UID_UNKNOWN:I = -0x1


# instance fields
.field private final mProvider:Landroid/media/update/SessionToken2Provider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "serviceName"    # Ljava/lang/String;

    .line 69
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/SessionToken2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/media/update/StaticProvider;->createSessionToken2(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/update/SessionToken2Provider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SessionToken2;->mProvider:Landroid/media/update/SessionToken2Provider;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/media/update/SessionToken2Provider;)V
    .locals 0
    .param p1, "provider"    # Landroid/media/update/SessionToken2Provider;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/media/SessionToken2;->mProvider:Landroid/media/update/SessionToken2Provider;

    .line 94
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/media/SessionToken2;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 154
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->fromBundle_SessionToken2(Landroid/os/Bundle;)Landroid/media/SessionToken2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Landroid/media/SessionToken2;->mProvider:Landroid/media/update/SessionToken2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/SessionToken2Provider;->equals_impl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/media/SessionToken2;->mProvider:Landroid/media/update/SessionToken2Provider;

    invoke-interface {v0}, Landroid/media/update/SessionToken2Provider;->getId_imp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Landroid/media/SessionToken2;->mProvider:Landroid/media/update/SessionToken2Provider;

    invoke-interface {v0}, Landroid/media/update/SessionToken2Provider;->getPackageName_impl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Landroid/media/update/SessionToken2Provider;
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/media/SessionToken2;->mProvider:Landroid/media/update/SessionToken2Provider;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/media/SessionToken2;->mProvider:Landroid/media/update/SessionToken2Provider;

    invoke-interface {v0}, Landroid/media/update/SessionToken2Provider;->getType_impl()I

    move-result v0

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/media/SessionToken2;->mProvider:Landroid/media/update/SessionToken2Provider;

    invoke-interface {v0}, Landroid/media/update/SessionToken2Provider;->getUid_impl()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/media/SessionToken2;->mProvider:Landroid/media/update/SessionToken2Provider;

    invoke-interface {v0}, Landroid/media/update/SessionToken2Provider;->hashCode_impl()I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/media/SessionToken2;->mProvider:Landroid/media/update/SessionToken2Provider;

    invoke-interface {v0}, Landroid/media/update/SessionToken2Provider;->toBundle_impl()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Landroid/media/SessionToken2;->mProvider:Landroid/media/update/SessionToken2Provider;

    invoke-interface {v0}, Landroid/media/update/SessionToken2Provider;->toString_impl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

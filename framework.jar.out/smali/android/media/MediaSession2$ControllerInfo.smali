.class public final Landroid/media/MediaSession2$ControllerInfo;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControllerInfo"
.end annotation


# instance fields
.field private final mProvider:Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Landroid/os/IInterface;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/IInterface;

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/media/update/StaticProvider;->createMediaSession2ControllerInfo(Landroid/content/Context;Landroid/media/MediaSession2$ControllerInfo;IILjava/lang/String;Landroid/os/IInterface;)Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mProvider:Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;

    .line 711
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 752
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mProvider:Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;->equals_impl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 717
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mProvider:Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;->getPackageName_impl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;
    .locals 1

    .line 742
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mProvider:Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 724
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mProvider:Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;->getUid_impl()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 747
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mProvider:Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;->hashCode_impl()I

    move-result v0

    return v0
.end method

.method public isTrusted()Z
    .locals 1

    .line 735
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mProvider:Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;->isTrusted_impl()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 757
    iget-object v0, p0, Landroid/media/MediaSession2$ControllerInfo;->mProvider:Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;->toString_impl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

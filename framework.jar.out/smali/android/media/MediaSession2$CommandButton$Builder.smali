.class public final Landroid/media/MediaSession2$CommandButton$Builder;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSession2$CommandButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->createMediaSession2CommandButtonBuilder(Landroid/media/MediaSession2$CommandButton$Builder;)Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaSession2$CommandButton$Builder;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;

    .line 840
    return-void
.end method


# virtual methods
.method public build()Landroid/media/MediaSession2$CommandButton;
    .locals 1

    .line 863
    iget-object v0, p0, Landroid/media/MediaSession2$CommandButton$Builder;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;->build_impl()Landroid/media/MediaSession2$CommandButton;

    move-result-object v0

    return-object v0
.end method

.method public setCommand(Landroid/media/SessionCommand2;)Landroid/media/MediaSession2$CommandButton$Builder;
    .locals 1
    .param p1, "command"    # Landroid/media/SessionCommand2;

    .line 843
    iget-object v0, p0, Landroid/media/MediaSession2$CommandButton$Builder;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;->setCommand_impl(Landroid/media/SessionCommand2;)Landroid/media/MediaSession2$CommandButton$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Landroid/media/MediaSession2$CommandButton$Builder;
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;

    .line 851
    iget-object v0, p0, Landroid/media/MediaSession2$CommandButton$Builder;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;->setDisplayName_impl(Ljava/lang/String;)Landroid/media/MediaSession2$CommandButton$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)Landroid/media/MediaSession2$CommandButton$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .line 855
    iget-object v0, p0, Landroid/media/MediaSession2$CommandButton$Builder;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;->setEnabled_impl(Z)Landroid/media/MediaSession2$CommandButton$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/media/MediaSession2$CommandButton$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 859
    iget-object v0, p0, Landroid/media/MediaSession2$CommandButton$Builder;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;->setExtras_impl(Landroid/os/Bundle;)Landroid/media/MediaSession2$CommandButton$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIconResId(I)Landroid/media/MediaSession2$CommandButton$Builder;
    .locals 1
    .param p1, "resId"    # I

    .line 847
    iget-object v0, p0, Landroid/media/MediaSession2$CommandButton$Builder;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;->setIconResId_impl(I)Landroid/media/MediaSession2$CommandButton$Builder;

    move-result-object v0

    return-object v0
.end method

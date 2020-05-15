.class public final Landroid/media/MediaMetadata2$Builder;
.super Ljava/lang/Object;
.source "MediaMetadata2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaMetadata2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mProvider:Landroid/media/update/MediaMetadata2Provider$BuilderProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->createMediaMetadata2Builder(Landroid/media/MediaMetadata2$Builder;)Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaMetadata2$Builder;->mProvider:Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    .line 679
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaMetadata2;)V
    .locals 1
    .param p1, "source"    # Landroid/media/MediaMetadata2;

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/media/update/StaticProvider;->createMediaMetadata2Builder(Landroid/media/MediaMetadata2$Builder;Landroid/media/MediaMetadata2;)Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaMetadata2$Builder;->mProvider:Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    .line 690
    return-void
.end method

.method public constructor <init>(Landroid/media/update/MediaMetadata2Provider$BuilderProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput-object p1, p0, Landroid/media/MediaMetadata2$Builder;->mProvider:Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    .line 697
    return-void
.end method


# virtual methods
.method public build()Landroid/media/MediaMetadata2;
    .locals 1

    .line 850
    iget-object v0, p0, Landroid/media/MediaMetadata2$Builder;->mProvider:Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    invoke-interface {v0}, Landroid/media/update/MediaMetadata2Provider$BuilderProvider;->build_impl()Landroid/media/MediaMetadata2;

    move-result-object v0

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata2$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .line 820
    iget-object v0, p0, Landroid/media/MediaMetadata2$Builder;->mProvider:Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaMetadata2Provider$BuilderProvider;->putBitmap_impl(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/media/MediaMetadata2$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 831
    iget-object v0, p0, Landroid/media/MediaMetadata2$Builder;->mProvider:Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaMetadata2Provider$BuilderProvider;->putFloat_impl(Ljava/lang/String;F)Landroid/media/MediaMetadata2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata2$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 781
    iget-object v0, p0, Landroid/media/MediaMetadata2$Builder;->mProvider:Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/update/MediaMetadata2Provider$BuilderProvider;->putLong_impl(Ljava/lang/String;J)Landroid/media/MediaMetadata2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putRating(Ljava/lang/String;Landroid/media/Rating2;)Landroid/media/MediaMetadata2$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/media/Rating2;

    .line 798
    iget-object v0, p0, Landroid/media/MediaMetadata2$Builder;->mProvider:Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaMetadata2Provider$BuilderProvider;->putRating_impl(Ljava/lang/String;Landroid/media/Rating2;)Landroid/media/MediaMetadata2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata2$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 758
    iget-object v0, p0, Landroid/media/MediaMetadata2$Builder;->mProvider:Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaMetadata2Provider$BuilderProvider;->putString_impl(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata2$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 727
    iget-object v0, p0, Landroid/media/MediaMetadata2$Builder;->mProvider:Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaMetadata2Provider$BuilderProvider;->putText_impl(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/media/MediaMetadata2$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 841
    iget-object v0, p0, Landroid/media/MediaMetadata2$Builder;->mProvider:Landroid/media/update/MediaMetadata2Provider$BuilderProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaMetadata2Provider$BuilderProvider;->setExtras_impl(Landroid/os/Bundle;)Landroid/media/MediaMetadata2$Builder;

    move-result-object v0

    return-object v0
.end method

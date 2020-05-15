.class public interface abstract Landroid/media/update/MediaMetadata2Provider$BuilderProvider;
.super Ljava/lang/Object;
.source "MediaMetadata2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/update/MediaMetadata2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BuilderProvider"
.end annotation


# virtual methods
.method public abstract build_impl()Landroid/media/MediaMetadata2;
.end method

.method public abstract putBitmap_impl(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata2$Builder;
.end method

.method public abstract putFloat_impl(Ljava/lang/String;F)Landroid/media/MediaMetadata2$Builder;
.end method

.method public abstract putLong_impl(Ljava/lang/String;J)Landroid/media/MediaMetadata2$Builder;
.end method

.method public abstract putRating_impl(Ljava/lang/String;Landroid/media/Rating2;)Landroid/media/MediaMetadata2$Builder;
.end method

.method public abstract putString_impl(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata2$Builder;
.end method

.method public abstract putText_impl(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata2$Builder;
.end method

.method public abstract setExtras_impl(Landroid/os/Bundle;)Landroid/media/MediaMetadata2$Builder;
.end method

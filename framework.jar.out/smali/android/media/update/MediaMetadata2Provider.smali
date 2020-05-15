.class public interface abstract Landroid/media/update/MediaMetadata2Provider;
.super Ljava/lang/Object;
.source "MediaMetadata2Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/update/MediaMetadata2Provider$BuilderProvider;
    }
.end annotation


# virtual methods
.method public abstract containsKey_impl(Ljava/lang/String;)Z
.end method

.method public abstract getBitmap_impl(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract getExtras_impl()Landroid/os/Bundle;
.end method

.method public abstract getFloat_impl(Ljava/lang/String;)F
.end method

.method public abstract getLong_impl(Ljava/lang/String;)J
.end method

.method public abstract getMediaId_impl()Ljava/lang/String;
.end method

.method public abstract getRating_impl(Ljava/lang/String;)Landroid/media/Rating2;
.end method

.method public abstract getString_impl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getText_impl(Ljava/lang/String;)Ljava/lang/CharSequence;
.end method

.method public abstract keySet_impl()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract size_impl()I
.end method

.method public abstract toBundle_impl()Landroid/os/Bundle;
.end method

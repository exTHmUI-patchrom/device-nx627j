.class public final Landroid/media/Rating2;
.super Ljava/lang/Object;
.source "Rating2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Rating2$StarStyle;,
        Landroid/media/Rating2$Style;
    }
.end annotation


# static fields
.field public static final RATING_3_STARS:I = 0x3

.field public static final RATING_4_STARS:I = 0x4

.field public static final RATING_5_STARS:I = 0x5

.field public static final RATING_HEART:I = 0x1

.field public static final RATING_NONE:I = 0x0

.field public static final RATING_PERCENTAGE:I = 0x6

.field public static final RATING_THUMB_UP_DOWN:I = 0x2


# instance fields
.field private final mProvider:Landroid/media/update/Rating2Provider;


# direct methods
.method public constructor <init>(Landroid/media/update/Rating2Provider;)V
    .locals 0
    .param p1, "provider"    # Landroid/media/update/Rating2Provider;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/media/Rating2;->mProvider:Landroid/media/update/Rating2Provider;

    .line 102
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/media/Rating2;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 133
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->fromBundle_Rating2(Landroid/os/Bundle;)Landroid/media/Rating2;

    move-result-object v0

    return-object v0
.end method

.method public static newHeartRating(Z)Landroid/media/Rating2;
    .locals 1
    .param p0, "hasHeart"    # Z

    .line 165
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->newHeartRating_Rating2(Z)Landroid/media/Rating2;

    move-result-object v0

    return-object v0
.end method

.method public static newPercentageRating(F)Landroid/media/Rating2;
    .locals 1
    .param p0, "percent"    # F

    .line 204
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->newPercentageRating_Rating2(F)Landroid/media/Rating2;

    move-result-object v0

    return-object v0
.end method

.method public static newStarRating(IF)Landroid/media/Rating2;
    .locals 1
    .param p0, "starRatingStyle"    # I
    .param p1, "starRating"    # F

    .line 193
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/media/update/StaticProvider;->newStarRating_Rating2(IF)Landroid/media/Rating2;

    move-result-object v0

    return-object v0
.end method

.method public static newThumbRating(Z)Landroid/media/Rating2;
    .locals 1
    .param p0, "thumbIsUp"    # Z

    .line 176
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->newThumbRating_Rating2(Z)Landroid/media/Rating2;

    move-result-object v0

    return-object v0
.end method

.method public static newUnratedRating(I)Landroid/media/Rating2;
    .locals 1
    .param p0, "ratingStyle"    # I

    .line 154
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->newUnratedRating_Rating2(I)Landroid/media/Rating2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Landroid/media/Rating2;->mProvider:Landroid/media/update/Rating2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/Rating2Provider;->equals_impl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPercentRating()F
    .locals 1

    .line 258
    iget-object v0, p0, Landroid/media/Rating2;->mProvider:Landroid/media/update/Rating2Provider;

    invoke-interface {v0}, Landroid/media/update/Rating2Provider;->getPercentRating_impl()F

    move-result v0

    return v0
.end method

.method public getProvider()Landroid/media/update/Rating2Provider;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/media/Rating2;->mProvider:Landroid/media/update/Rating2Provider;

    return-object v0
.end method

.method public getRatingStyle()I
    .locals 1

    .line 222
    iget-object v0, p0, Landroid/media/Rating2;->mProvider:Landroid/media/update/Rating2Provider;

    invoke-interface {v0}, Landroid/media/update/Rating2Provider;->getRatingStyle_impl()I

    move-result v0

    return v0
.end method

.method public getStarRating()F
    .locals 1

    .line 249
    iget-object v0, p0, Landroid/media/Rating2;->mProvider:Landroid/media/update/Rating2Provider;

    invoke-interface {v0}, Landroid/media/update/Rating2Provider;->getStarRating_impl()F

    move-result v0

    return v0
.end method

.method public hasHeart()Z
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/media/Rating2;->mProvider:Landroid/media/update/Rating2Provider;

    invoke-interface {v0}, Landroid/media/update/Rating2Provider;->hasHeart_impl()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/media/Rating2;->mProvider:Landroid/media/update/Rating2Provider;

    invoke-interface {v0}, Landroid/media/update/Rating2Provider;->hashCode_impl()I

    move-result v0

    return v0
.end method

.method public isRated()Z
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/media/Rating2;->mProvider:Landroid/media/update/Rating2Provider;

    invoke-interface {v0}, Landroid/media/update/Rating2Provider;->isRated_impl()Z

    move-result v0

    return v0
.end method

.method public isThumbUp()Z
    .locals 1

    .line 240
    iget-object v0, p0, Landroid/media/Rating2;->mProvider:Landroid/media/update/Rating2Provider;

    invoke-interface {v0}, Landroid/media/update/Rating2Provider;->isThumbUp_impl()Z

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/media/Rating2;->mProvider:Landroid/media/update/Rating2Provider;

    invoke-interface {v0}, Landroid/media/update/Rating2Provider;->toBundle_impl()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/media/Rating2;->mProvider:Landroid/media/update/Rating2Provider;

    invoke-interface {v0}, Landroid/media/update/Rating2Provider;->toString_impl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Landroid/graphics/ImageDecoder$AssetInputStreamSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetInputStreamSource"
.end annotation


# instance fields
.field private mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mDensity:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)V
    .locals 2
    .param p1, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "value"    # Landroid/util/TypedValue;

    .line 402
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$1;)V

    .line 403
    iput-object p1, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 404
    iput-object p2, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mResources:Landroid/content/res/Resources;

    .line 406
    iget v0, p3, Landroid/util/TypedValue;->density:I

    if-nez v0, :cond_0

    .line 407
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mDensity:I

    goto :goto_0

    .line 408
    :cond_0
    iget v0, p3, Landroid/util/TypedValue;->density:I

    const v1, 0xffff

    if-eq v0, v1, :cond_1

    .line 409
    iget v0, p3, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mDensity:I

    goto :goto_0

    .line 411
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mDensity:I

    .line 413
    :goto_0
    return-void
.end method


# virtual methods
.method public createImageDecoder()Landroid/graphics/ImageDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    monitor-enter p0

    .line 430
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 434
    .local v0, "ais":Landroid/content/res/AssetManager$AssetInputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 435
    invoke-static {v0, p0}, Landroid/graphics/ImageDecoder;->access$600(Landroid/content/res/AssetManager$AssetInputStream;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 431
    .end local v0    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reuse AssetInputStreamSource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDensity()I
    .locals 1

    .line 424
    iget v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mDensity:I

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 420
    iget-object v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

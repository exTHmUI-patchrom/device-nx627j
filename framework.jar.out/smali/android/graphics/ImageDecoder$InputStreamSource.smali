.class Landroid/graphics/ImageDecoder$InputStreamSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamSource"
.end annotation


# instance fields
.field final mInputDensity:I

.field mInputStream:Ljava/io/InputStream;

.field final mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "inputDensity"    # I

    .line 362
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$1;)V

    .line 363
    if-eqz p2, :cond_1

    .line 366
    iput-object p1, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mResources:Landroid/content/res/Resources;

    .line 367
    iput-object p2, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputStream:Ljava/io/InputStream;

    .line 368
    if-eqz p1, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputDensity:I

    .line 369
    return-void

    .line 364
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createImageDecoder()Landroid/graphics/ImageDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputStream:Ljava/io/InputStream;

    .line 389
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputStream:Ljava/io/InputStream;

    .line 390
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/graphics/ImageDecoder;->access$300(Ljava/io/InputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 386
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reuse InputStreamSource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDensity()I
    .locals 1

    .line 379
    iget v0, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputDensity:I

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 376
    iget-object v0, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

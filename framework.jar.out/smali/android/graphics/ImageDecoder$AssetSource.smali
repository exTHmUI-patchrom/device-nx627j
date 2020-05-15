.class Landroid/graphics/ImageDecoder$AssetSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssetSource"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 502
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$1;)V

    .line 503
    iput-object p1, p0, Landroid/graphics/ImageDecoder$AssetSource;->mAssets:Landroid/content/res/AssetManager;

    .line 504
    iput-object p2, p0, Landroid/graphics/ImageDecoder$AssetSource;->mFileName:Ljava/lang/String;

    .line 505
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

    .line 512
    iget-object v0, p0, Landroid/graphics/ImageDecoder$AssetSource;->mAssets:Landroid/content/res/AssetManager;

    iget-object v1, p0, Landroid/graphics/ImageDecoder$AssetSource;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 513
    .local v0, "is":Ljava/io/InputStream;
    move-object v1, v0

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-static {v1, p0}, Landroid/graphics/ImageDecoder;->access$600(Landroid/content/res/AssetManager$AssetInputStream;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    return-object v1
.end method

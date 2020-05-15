.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "BitmapShader.java"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field private mTileX:I

.field private mTileY:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # I
    .param p3, "tileY"    # I

    .line 47
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 48
    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapShader;->mTileX:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapShader;->mTileY:I

    if-ne p3, v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    .line 55
    iput p2, p0, Landroid/graphics/BitmapShader;->mTileX:I

    .line 56
    iput p3, p0, Landroid/graphics/BitmapShader;->mTileY:I

    .line 57
    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # Landroid/graphics/Shader$TileMode;
    .param p3, "tileY"    # Landroid/graphics/Shader$TileMode;

    .line 44
    iget v0, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v1, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;II)V

    .line 45
    return-void
.end method

.method private static native nativeCreate(JLandroid/graphics/Bitmap;II)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 4

    .line 69
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iget v3, p0, Landroid/graphics/BitmapShader;->mTileY:I

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;II)V

    .line 70
    .local v0, "copy":Landroid/graphics/BitmapShader;
    invoke-virtual {p0, v0}, Landroid/graphics/BitmapShader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 71
    return-object v0
.end method

.method createNativeInstance(J)J
    .locals 3
    .param p1, "nativeMatrix"    # J

    .line 61
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iget v2, p0, Landroid/graphics/BitmapShader;->mTileY:I

    invoke-static {p1, p2, v0, v1, v2}, Landroid/graphics/BitmapShader;->nativeCreate(JLandroid/graphics/Bitmap;II)J

    move-result-wide v0

    return-wide v0
.end method

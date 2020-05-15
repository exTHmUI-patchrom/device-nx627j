.class public Landroid/graphics/GraphicBuffer;
.super Ljava/lang/Object;
.source "GraphicBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/GraphicBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final USAGE_HW_2D:I = 0x400

.field public static final USAGE_HW_COMPOSER:I = 0x800

.field public static final USAGE_HW_MASK:I = 0x71f00

.field public static final USAGE_HW_RENDER:I = 0x200

.field public static final USAGE_HW_TEXTURE:I = 0x100

.field public static final USAGE_HW_VIDEO_ENCODER:I = 0x10000

.field public static final USAGE_PROTECTED:I = 0x4000

.field public static final USAGE_SOFTWARE_MASK:I = 0xff

.field public static final USAGE_SW_READ_MASK:I = 0xf

.field public static final USAGE_SW_READ_NEVER:I = 0x0

.field public static final USAGE_SW_READ_OFTEN:I = 0x3

.field public static final USAGE_SW_READ_RARELY:I = 0x2

.field public static final USAGE_SW_WRITE_MASK:I = 0xf0

.field public static final USAGE_SW_WRITE_NEVER:I = 0x0

.field public static final USAGE_SW_WRITE_OFTEN:I = 0x30

.field public static final USAGE_SW_WRITE_RARELY:I = 0x20


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mDestroyed:Z

.field private final mFormat:I

.field private final mHeight:I

.field private final mNativeObject:J

.field private mSaveCount:I

.field private final mUsage:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 277
    new-instance v0, Landroid/graphics/GraphicBuffer$1;

    invoke-direct {v0}, Landroid/graphics/GraphicBuffer$1;-><init>()V

    sput-object v0, Landroid/graphics/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIIIJ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "usage"    # I
    .param p5, "nativeObject"    # J

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Landroid/graphics/GraphicBuffer;->mWidth:I

    .line 89
    iput p2, p0, Landroid/graphics/GraphicBuffer;->mHeight:I

    .line 90
    iput p3, p0, Landroid/graphics/GraphicBuffer;->mFormat:I

    .line 91
    iput p4, p0, Landroid/graphics/GraphicBuffer;->mUsage:I

    .line 92
    iput-wide p5, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    .line 93
    return-void
.end method

.method synthetic constructor <init>(IIIIJLandroid/graphics/GraphicBuffer$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # J
    .param p7, "x5"    # Landroid/graphics/GraphicBuffer$1;

    .line 28
    invoke-direct/range {p0 .. p6}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJ)V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)J
    .locals 2
    .param p0, "x0"    # Landroid/os/Parcel;

    .line 28
    invoke-static {p0}, Landroid/graphics/GraphicBuffer;->nReadGraphicBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static create(IIII)Landroid/graphics/GraphicBuffer;
    .locals 10
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "usage"    # I

    .line 77
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/GraphicBuffer;->nCreateGraphicBuffer(IIII)J

    move-result-wide v7

    .line 78
    .local v7, "nativeObject":J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v9, Landroid/graphics/GraphicBuffer;

    move-object v0, v9

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJ)V

    return-object v9

    .line 81
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createFromExisting(IIIIJ)Landroid/graphics/GraphicBuffer;
    .locals 10
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "usage"    # I
    .param p4, "unwrappedNativeObject"    # J

    .line 101
    invoke-static {p4, p5}, Landroid/graphics/GraphicBuffer;->nWrapGraphicBuffer(J)J

    move-result-wide v7

    .line 102
    .local v7, "nativeObject":J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v9, Landroid/graphics/GraphicBuffer;

    move-object v0, v9

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJ)V

    return-object v9

    .line 105
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static native nCreateGraphicBuffer(IIII)J
.end method

.method private static native nDestroyGraphicBuffer(J)V
.end method

.method private static native nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native nReadGraphicBufferFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)Z
.end method

.method private static native nWrapGraphicBuffer(J)J
.end method

.method private static native nWriteGraphicBufferToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 219
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    .line 221
    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/GraphicBuffer;->nDestroyGraphicBuffer(J)V

    .line 223
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 242
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/GraphicBuffer;->nDestroyGraphicBuffer(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 245
    nop

    .line 246
    return-void

    .line 244
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFormat()I
    .locals 1

    .line 127
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 119
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mHeight:I

    return v0
.end method

.method public getUsage()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mUsage:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 112
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mWidth:I

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/GraphicBuffer;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 4
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .line 173
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    return-object v1

    .line 177
    :cond_0
    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    .line 181
    :cond_1
    iget-wide v2, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v0, p1}, Landroid/graphics/GraphicBuffer;->nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Landroid/graphics/GraphicBuffer;->mSaveCount:I

    .line 183
    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    return-object v0

    .line 186
    :cond_2
    return-object v1
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 202
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_0

    .line 203
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/GraphicBuffer;->mSaveCount:I

    .line 206
    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    iget-object v2, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v0, v1, v2}, Landroid/graphics/GraphicBuffer;->nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)Z

    .line 208
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 265
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 270
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/GraphicBuffer;->nWriteGraphicBufferToParcel(JLandroid/os/Parcel;)V

    .line 275
    return-void

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This GraphicBuffer has been destroyed and cannot be written to a parcel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

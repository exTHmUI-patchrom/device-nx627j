.class public final Landroid/hardware/camera2/params/Face;
.super Ljava/lang/Object;
.source "Face.java"


# static fields
.field public static final ID_UNSUPPORTED:I = -0x1

.field public static final SCORE_MAX:I = 0x64

.field public static final SCORE_MIN:I = 0x1


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mId:I

.field private final mLeftEye:Landroid/graphics/Point;

.field private final mMouth:Landroid/graphics/Point;

.field private final mRightEye:Landroid/graphics/Point;

.field private final mScore:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "score"    # I

    .line 133
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "score"    # I
    .param p3, "id"    # I
    .param p4, "leftEyePosition"    # Landroid/graphics/Point;
    .param p5, "rightEyePosition"    # Landroid/graphics/Point;
    .param p6, "mouthPosition"    # Landroid/graphics/Point;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, "bounds"

    invoke-static {v0, p1}, Landroid/hardware/camera2/params/Face;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v0, 0x64

    if-gt p2, v0, :cond_3

    .line 93
    const/4 v0, -0x1

    if-gez p3, :cond_1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    :goto_0
    if-ne p3, v0, :cond_2

    .line 97
    const-string/jumbo v0, "leftEyePosition"

    invoke-static {v0, p4}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string/jumbo v0, "rightEyePosition"

    invoke-static {v0, p5}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string/jumbo v0, "mouthPosition"

    invoke-static {v0, p6}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    :cond_2
    iput-object p1, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    .line 103
    iput p2, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    .line 104
    iput p3, p0, Landroid/hardware/camera2/params/Face;->mId:I

    .line 105
    iput-object p4, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    .line 106
    iput-object p5, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    .line 107
    iput-object p6, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    .line 108
    return-void

    .line 92
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Confidence out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 255
    if-eqz p1, :cond_0

    .line 258
    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was required, but it was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 261
    if-nez p1, :cond_0

    .line 264
    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was required to be null, but it wasn\'t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 192
    iget v0, p0, Landroid/hardware/camera2/params/Face;->mId:I

    return v0
.end method

.method public getLeftEyePosition()Landroid/graphics/Point;
    .locals 1

    .line 208
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMouthPosition()Landroid/graphics/Point;
    .locals 1

    .line 241
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    return-object v0
.end method

.method public getRightEyePosition()Landroid/graphics/Point;
    .locals 1

    .line 224
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .line 168
    iget v0, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 249
    const-string/jumbo v0, "{ bounds: %s, score: %s, id: %d, leftEyePosition: %s, rightEyePosition: %s, mouthPosition: %s }"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/Face;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 249
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

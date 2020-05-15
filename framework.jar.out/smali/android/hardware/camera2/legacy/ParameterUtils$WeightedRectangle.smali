.class public Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
.super Ljava/lang/Object;
.source "ParameterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/ParameterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeightedRectangle"
.end annotation


# instance fields
.field public final rect:Landroid/graphics/Rect;

.field public final weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "weight"    # I

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-string/jumbo v0, "rect must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    .line 136
    iput p2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    .line 137
    return-void
.end method

.method private static clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "name"    # Ljava/lang/String;

    .line 213
    if-ge p0, p1, :cond_0

    .line 214
    const-string v0, "ParameterUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toMetering - Rectangle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " too small, clip to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move p0, p1

    goto :goto_0

    .line 217
    :cond_0
    if-le p0, p2, :cond_1

    .line 218
    const-string v0, "ParameterUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toMetering - Rectangle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " too small, clip to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    move p0, p2

    .line 223
    :cond_1
    :goto_0
    return p0
.end method

.method private static clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "lo"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "name"    # Ljava/lang/String;

    .line 209
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0, p2, p3}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public toFace()Landroid/hardware/camera2/params/Face;
    .locals 5

    .line 199
    iget v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    iget-object v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v2, "score"

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-static {v0, v3, v4, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, "score":I
    new-instance v1, Landroid/hardware/camera2/params/Face;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v0}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;I)V

    return-object v1
.end method

.method public toFace(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/hardware/camera2/params/Face;
    .locals 10
    .param p1, "id"    # I
    .param p2, "leftEyePosition"    # Landroid/graphics/Point;
    .param p3, "rightEyePosition"    # Landroid/graphics/Point;
    .param p4, "mouthPosition"    # Landroid/graphics/Point;

    .line 177
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, "idSafe":I
    iget v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    iget-object v2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v3, "score"

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-static {v1, v4, v5, v2, v3}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, "score":I
    new-instance v2, Landroid/hardware/camera2/params/Face;

    iget-object v4, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    move-object v3, v2

    move v5, v1

    move v6, v0

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-object v2
.end method

.method public toMetering()Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 12

    .line 147
    iget v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    iget-object v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v2, "weight"

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    invoke-static {v0, v3, v4, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "weight":I
    iget-object v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v4, "left"

    invoke-static {v1, v3, v2, v4}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v1

    .line 154
    .local v1, "x":I
    iget-object v2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v5, "top"

    invoke-static {v2, v3, v4, v5}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, "y":I
    iget-object v4, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string/jumbo v6, "width"

    invoke-static {v4, v3, v5, v6}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v4

    .line 156
    .local v4, "w":I
    iget-object v5, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    const-string v7, "height"

    invoke-static {v5, v3, v6, v7}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    move-result v3

    .line 158
    .local v3, "h":I
    new-instance v11, Landroid/hardware/camera2/params/MeteringRectangle;

    move-object v5, v11

    move v6, v1

    move v7, v2

    move v8, v4

    move v9, v3

    move v10, v0

    invoke-direct/range {v5 .. v10}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    return-object v11
.end method

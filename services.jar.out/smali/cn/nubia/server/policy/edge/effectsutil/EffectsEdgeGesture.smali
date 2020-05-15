.class public Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
.super Lcn/nubia/edgegesture/EdgeGesture;
.source "EffectsEdgeGesture.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 8
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/edgegesture/EdgeGesture;-><init>(IIIFF)V

    .line 9
    return-void
.end method

.method public constructor <init>(IIIFF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "action"    # I
    .param p3, "id"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 12
    invoke-direct/range {p0 .. p5}, Lcn/nubia/edgegesture/EdgeGesture;-><init>(IIIFF)V

    .line 13
    return-void
.end method

.method public static convertFrom(Lcn/nubia/edgegesture/EdgeGesture;)Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    .locals 8
    .param p0, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 16
    new-instance v0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;-><init>()V

    .line 17
    .local v0, "localGesture":Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    iget v1, p0, Lcn/nubia/edgegesture/EdgeGesture;->mType:I

    iput v1, v0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mType:I

    .line 18
    iget v1, p0, Lcn/nubia/edgegesture/EdgeGesture;->mAction:I

    iput v1, v0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    .line 19
    iget v1, p0, Lcn/nubia/edgegesture/EdgeGesture;->mPointerCount:I

    iput v1, v0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointerCount:I

    .line 20
    iget v1, p0, Lcn/nubia/edgegesture/EdgeGesture;->mPointerCount:I

    .line 21
    .local v1, "pointCount":I
    new-array v2, v1, [Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    iput-object v2, v0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    .line 22
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 23
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    new-instance v4, Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    iget-object v5, p0, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v5, v5, v2

    iget v5, v5, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->id:I

    iget-object v6, p0, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v6, v6, v2

    iget v6, v6, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->x:F

    iget-object v7, p0, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v7, v7, v2

    iget v7, v7, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    invoke-direct {v4, v5, v6, v7}, Lcn/nubia/edgegesture/EdgeGesture$Pointer;-><init>(IFF)V

    aput-object v4, v3, v2

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mType:I

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Gesture$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/nubia/edgegesture/EdgeGesture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

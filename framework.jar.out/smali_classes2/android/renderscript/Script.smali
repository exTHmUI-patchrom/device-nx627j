.class public Landroid/renderscript/Script;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Script$LaunchOptions;,
        Landroid/renderscript/Script$FieldBase;,
        Landroid/renderscript/Script$Builder;,
        Landroid/renderscript/Script$FieldID;,
        Landroid/renderscript/Script$InvokeID;,
        Landroid/renderscript/Script$KernelID;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mIIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$InvokeID;",
            ">;"
        }
    .end annotation
.end field

.field mInIdsBuffer:[J

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 328
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 330
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    .line 343
    iget-object v0, p0, Landroid/renderscript/Script;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 344
    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/renderscript/Allocation;I)V
    .locals 17
    .param p1, "va"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 351
    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 352
    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 353
    if-eqz v1, :cond_2

    .line 355
    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 357
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_1

    .line 358
    iget-object v3, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 359
    .local v3, "t":Landroid/renderscript/Type;
    invoke-virtual {v3}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-nez v4, :cond_0

    .line 360
    invoke-virtual {v3}, Landroid/renderscript/Type;->getZ()I

    move-result v4

    if-nez v4, :cond_0

    .end local v3    # "t":Landroid/renderscript/Type;
    goto :goto_0

    .line 362
    .restart local v3    # "t":Landroid/renderscript/Type;
    :cond_0
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    const-string v5, "API 20+ only allows simple 1D allocations to be used with bind."

    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 367
    .end local v3    # "t":Landroid/renderscript/Type;
    :cond_1
    :goto_0
    iget-object v6, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v9

    move/from16 v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    .line 368
    .end local v2    # "context":Landroid/content/Context;
    goto :goto_1

    .line 369
    :cond_2
    iget-object v11, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    move/from16 v16, p2

    invoke-virtual/range {v11 .. v16}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    .line 371
    :goto_1
    return-void
.end method

.method protected createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;
    .locals 10
    .param p1, "slot"    # I
    .param p2, "e"    # Landroid/renderscript/Element;

    .line 129
    iget-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Script$FieldID;

    .line 130
    .local v0, "f":Landroid/renderscript/Script$FieldID;
    if-eqz v0, :cond_0

    .line 131
    return-object v0

    .line 134
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptFieldIDCreate(JI)J

    move-result-wide v1

    .line 135
    .local v1, "id":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 139
    new-instance v3, Landroid/renderscript/Script$FieldID;

    iget-object v7, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v4, v3

    move-wide v5, v1

    move-object v8, p0

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/renderscript/Script$FieldID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    move-object v0, v3

    .line 140
    iget-object v3, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    return-object v0

    .line 136
    :cond_1
    new-instance v3, Landroid/renderscript/RSDriverException;

    const-string v4, "Failed to create FieldID"

    invoke-direct {v3, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected createInvokeID(I)Landroid/renderscript/Script$InvokeID;
    .locals 10
    .param p1, "slot"    # I

    .line 91
    iget-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Script$InvokeID;

    .line 92
    .local v0, "i":Landroid/renderscript/Script$InvokeID;
    if-eqz v0, :cond_0

    .line 93
    return-object v0

    .line 96
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptInvokeIDCreate(JI)J

    move-result-wide v1

    .line 97
    .local v1, "id":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 101
    new-instance v3, Landroid/renderscript/Script$InvokeID;

    iget-object v7, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v4, v3

    move-wide v5, v1

    move-object v8, p0

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/renderscript/Script$InvokeID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    move-object v0, v3

    .line 102
    iget-object v3, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    return-object v0

    .line 98
    :cond_1
    new-instance v3, Landroid/renderscript/RSDriverException;

    const-string v4, "Failed to create KernelID"

    invoke-direct {v3, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;
    .locals 11
    .param p1, "slot"    # I
    .param p2, "sig"    # I
    .param p3, "ein"    # Landroid/renderscript/Element;
    .param p4, "eout"    # Landroid/renderscript/Element;

    .line 53
    iget-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Script$KernelID;

    .line 54
    .local v0, "k":Landroid/renderscript/Script$KernelID;
    if-eqz v0, :cond_0

    .line 55
    return-object v0

    .line 58
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/renderscript/RenderScript;->nScriptKernelIDCreate(JII)J

    move-result-wide v1

    .line 59
    .local v1, "id":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 63
    new-instance v3, Landroid/renderscript/Script$KernelID;

    iget-object v7, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v4, v3

    move-wide v5, v1

    move-object v8, p0

    move v9, p1

    move v10, p2

    invoke-direct/range {v4 .. v10}, Landroid/renderscript/Script$KernelID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V

    move-object v0, v3

    .line 64
    iget-object v3, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    return-object v0

    .line 60
    :cond_1
    new-instance v3, Landroid/renderscript/RSDriverException;

    const-string v4, "Failed to create KernelID"

    invoke-direct {v3, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;

    .line 171
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 172
    return-void
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 17
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 181
    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 182
    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 183
    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 185
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "At least one of input allocation, output allocation, or LaunchOptions is required to be non-null."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 191
    .local v3, "in_ids":[J
    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 192
    iget-object v3, v0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    .line 193
    iget-object v5, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 196
    :cond_2
    const-wide/16 v5, 0x0

    .line 197
    .local v5, "out_id":J
    if-eqz v2, :cond_3

    .line 198
    iget-object v7, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    .line 201
    :cond_3
    const/4 v7, 0x0

    .line 202
    .local v7, "params":[B
    if-eqz p4, :cond_4

    .line 203
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v7

    .line 206
    .end local v7    # "params":[B
    .local v16, "params":[B
    :cond_4
    move-object/from16 v16, v7

    const/4 v7, 0x0

    .line 207
    .local v7, "limits":[I
    if-eqz p5, :cond_5

    .line 208
    const/4 v8, 0x6

    new-array v7, v8, [I

    .line 210
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v8

    aput v8, v7, v4

    .line 211
    const/4 v4, 0x1

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v8

    aput v8, v7, v4

    .line 212
    const/4 v4, 0x2

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v8

    aput v8, v7, v4

    .line 213
    const/4 v4, 0x3

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v8

    aput v8, v7, v4

    .line 214
    const/4 v4, 0x4

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v8

    aput v8, v7, v4

    .line 215
    const/4 v4, 0x5

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v8

    aput v8, v7, v4

    .line 218
    .end local v7    # "limits":[I
    .local v4, "limits":[I
    :cond_5
    move-object v4, v7

    iget-object v7, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v8}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    move/from16 v10, p1

    move-object v11, v3

    move-wide v12, v5

    move-object/from16 v14, v16

    move-object v15, v4

    invoke-virtual/range {v7 .. v15}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    .line 219
    return-void
.end method

.method protected forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;

    .line 228
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 229
    return-void
.end method

.method protected forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 17
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 238
    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 239
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 240
    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    .line 241
    .local v6, "ain":Landroid/renderscript/Allocation;
    iget-object v7, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v6}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 240
    .end local v6    # "ain":Landroid/renderscript/Allocation;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 244
    :cond_0
    iget-object v4, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4, v2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 246
    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 247
    :cond_1
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "At least one of ain or aout is required to be non-null."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 253
    array-length v4, v1

    new-array v4, v4, [J

    .line 254
    .local v4, "in_ids":[J
    move v5, v3

    .local v5, "index":I
    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_4

    .line 255
    aget-object v6, v1, v5

    iget-object v7, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 254
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 258
    .end local v4    # "in_ids":[J
    .end local v5    # "index":I
    :cond_3
    const/4 v4, 0x0

    .local v9, "in_ids":[J
    :cond_4
    move-object v9, v4

    .line 261
    const-wide/16 v4, 0x0

    .line 262
    .local v4, "out_id":J
    if-eqz v2, :cond_5

    .line 263
    iget-object v6, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    .line 266
    .end local v4    # "out_id":J
    .local v14, "out_id":J
    :cond_5
    move-wide v14, v4

    const/4 v4, 0x0

    .line 267
    .local v4, "params":[B
    if-eqz p4, :cond_6

    .line 268
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v4

    .line 271
    :cond_6
    const/4 v5, 0x0

    .line 272
    .local v5, "limits":[I
    if-eqz p5, :cond_7

    .line 273
    const/4 v6, 0x6

    new-array v5, v6, [I

    .line 275
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v6

    aput v6, v5, v3

    .line 276
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v3

    const/4 v6, 0x1

    aput v3, v5, v6

    .line 277
    const/4 v3, 0x2

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v6

    aput v6, v5, v3

    .line 278
    const/4 v3, 0x3

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v6

    aput v6, v5, v3

    .line 279
    const/4 v3, 0x4

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v6

    aput v6, v5, v3

    .line 280
    const/4 v3, 0x5

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v6

    aput v6, v5, v3

    .line 283
    .end local v5    # "limits":[I
    .local v3, "limits":[I
    :cond_7
    move-object v3, v5

    iget-object v5, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v6}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    move/from16 v8, p1

    move-wide v10, v14

    move-object v12, v4

    move-object v13, v3

    invoke-virtual/range {v5 .. v13}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    .line 284
    return-void
.end method

.method public getVarB(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 427
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVarD(I)D
    .locals 3
    .param p1, "index"    # I

    .line 392
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarD(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVarF(I)F
    .locals 3
    .param p1, "index"    # I

    .line 381
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarF(JI)F

    move-result v0

    return v0
.end method

.method public getVarI(I)I
    .locals 3
    .param p1, "index"    # I

    .line 403
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result v0

    return v0
.end method

.method public getVarJ(I)J
    .locals 3
    .param p1, "index"    # I

    .line 415
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarJ(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVarV(ILandroid/renderscript/FieldPacker;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .line 461
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/renderscript/RenderScript;->nScriptGetVarV(JI[B)V

    .line 462
    return-void
.end method

.method protected invoke(I)V
    .locals 3
    .param p1, "slot"    # I

    .line 150
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    .line 151
    return-void
.end method

.method protected invoke(ILandroid/renderscript/FieldPacker;)V
    .locals 4
    .param p1, "slot"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .line 158
    if-eqz p2, :cond_0

    .line 159
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/renderscript/RenderScript;->nScriptInvokeV(JI[B)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    .line 163
    :goto_0
    return-void
.end method

.method protected reduce(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 17
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 291
    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 292
    if-eqz v1, :cond_4

    array-length v3, v1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_4

    .line 296
    if-eqz v2, :cond_3

    .line 300
    array-length v3, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_0

    aget-object v7, v1, v6

    .line 301
    .local v7, "ain":Landroid/renderscript/Allocation;
    iget-object v8, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v7}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 300
    .end local v7    # "ain":Landroid/renderscript/Allocation;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 304
    :cond_0
    array-length v3, v1

    new-array v3, v3, [J

    .line 305
    .local v3, "in_ids":[J
    move v6, v5

    .local v6, "index":I
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_1

    .line 306
    aget-object v7, v1, v6

    iget-object v8, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    aput-wide v7, v3, v6

    .line 305
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 308
    .end local v6    # "index":I
    :cond_1
    iget-object v6, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    .line 310
    .local v14, "out_id":J
    const/4 v6, 0x0

    .line 311
    .local v6, "limits":[I
    if-eqz p4, :cond_2

    .line 312
    const/4 v7, 0x6

    new-array v6, v7, [I

    .line 314
    invoke-static/range {p4 .. p4}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v7

    aput v7, v6, v5

    .line 315
    invoke-static/range {p4 .. p4}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v6, v4

    .line 316
    const/4 v4, 0x2

    invoke-static/range {p4 .. p4}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v6, v4

    .line 317
    const/4 v4, 0x3

    invoke-static/range {p4 .. p4}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v6, v4

    .line 318
    const/4 v4, 0x4

    invoke-static/range {p4 .. p4}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v6, v4

    .line 319
    const/4 v4, 0x5

    invoke-static/range {p4 .. p4}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v5

    aput v5, v6, v4

    .line 322
    .end local v6    # "limits":[I
    .local v4, "limits":[I
    :cond_2
    move-object v4, v6

    iget-object v6, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v5, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v5}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    move/from16 v9, p1

    move-object v10, v3

    move-wide v11, v14

    move-object v13, v4

    invoke-virtual/range {v6 .. v13}, Landroid/renderscript/RenderScript;->nScriptReduce(JI[JJ[I)V

    .line 323
    return-void

    .line 297
    .end local v3    # "in_ids":[J
    .end local v4    # "limits":[I
    .end local v14    # "out_id":J
    :cond_3
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "aout is required to be non-null."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    :cond_4
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "At least one input is required."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 465
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 467
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/RenderScript;->nScriptSetTimeZone(J[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    nop

    .line 471
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVar(ID)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "v"    # D

    .line 389
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarD(JID)V

    .line 390
    return-void
.end method

.method public setVar(IF)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "v"    # F

    .line 378
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarF(JIF)V

    .line 379
    return-void
.end method

.method public setVar(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "v"    # I

    .line 400
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    .line 401
    return-void
.end method

.method public setVar(IJ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "v"    # J

    .line 412
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarJ(JIJ)V

    .line 413
    return-void
.end method

.method public setVar(ILandroid/renderscript/BaseObj;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "o"    # Landroid/renderscript/BaseObj;

    .line 435
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 436
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 437
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    if-nez p2, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide v5, v4

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    goto :goto_0

    :goto_1
    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptSetVarObj(JIJ)V

    .line 438
    return-void
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .line 445
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/renderscript/RenderScript;->nScriptSetVarV(JI[B)V

    .line 446
    return-void
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;
    .param p3, "e"    # Landroid/renderscript/Element;
    .param p4, "dims"    # [I

    .line 453
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v4

    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v3}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    move v3, p1

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[I)V

    .line 454
    return-void
.end method

.method public setVar(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "v"    # Z

    .line 424
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    .line 425
    return-void
.end method

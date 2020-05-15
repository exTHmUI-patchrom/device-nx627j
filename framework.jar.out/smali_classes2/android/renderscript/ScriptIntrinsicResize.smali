.class public final Landroid/renderscript/ScriptIntrinsicResize;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicResize.java"


# instance fields
.field private mInput:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 27
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicResize;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 40
    const/16 v0, 0xc

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 41
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicResize;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicResize;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 42
    .local v2, "si":Landroid/renderscript/ScriptIntrinsicResize;
    return-object v2
.end method


# virtual methods
.method public forEach_bicubic(Landroid/renderscript/Allocation;)V
    .locals 2
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    .line 88
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicResize;->mInput:Landroid/renderscript/Allocation;

    if-eq p1, v0, :cond_0

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 92
    return-void

    .line 89
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Output cannot be same as Input."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forEach_bicubic(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 7
    .param p1, "aout"    # Landroid/renderscript/Allocation;
    .param p2, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 104
    const/4 v0, 0x0

    move-object v3, v0

    check-cast v3, Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/ScriptIntrinsicResize;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 105
    return-void
.end method

.method public getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicResize;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_bicubic()Landroid/renderscript/Script$KernelID;
    .locals 3

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0, v0}, Landroid/renderscript/ScriptIntrinsicResize;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setInput(Landroid/renderscript/Allocation;)V
    .locals 3
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .line 53
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    .line 54
    .local v0, "e":Landroid/renderscript/Element;
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 55
    invoke-static {v1}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 56
    invoke-static {v1}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 58
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 59
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 60
    invoke-static {v1}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 61
    invoke-static {v1}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Unsupported element type."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mInput:Landroid/renderscript/Allocation;

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/renderscript/ScriptIntrinsicResize;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 67
    return-void
.end method

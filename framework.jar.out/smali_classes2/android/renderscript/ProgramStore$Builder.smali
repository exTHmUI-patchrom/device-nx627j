.class public Landroid/renderscript/ProgramStore$Builder;
.super Ljava/lang/Object;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field mColorMaskA:Z

.field mColorMaskB:Z

.field mColorMaskG:Z

.field mColorMaskR:Z

.field mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

.field mDepthMask:Z

.field mDither:Z

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 333
    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 336
    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 337
    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 338
    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 339
    sget-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 340
    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 341
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramStore;
    .locals 11

    .line 420
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 421
    iget-object v1, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-boolean v2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iget-boolean v4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iget-boolean v5, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    iget-boolean v6, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    iget-boolean v7, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iget v8, v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->mID:I

    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iget v9, v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->mID:I

    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    iget v10, v0, Landroid/renderscript/ProgramStore$DepthFunc;->mID:I

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nProgramStoreCreate(ZZZZZZIII)J

    move-result-wide v0

    .line 424
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ProgramStore;

    iget-object v3, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/ProgramStore;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 425
    .local v2, "programStore":Landroid/renderscript/ProgramStore;
    iget-object v3, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    iput-object v3, v2, Landroid/renderscript/ProgramStore;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 426
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    iput-boolean v3, v2, Landroid/renderscript/ProgramStore;->mDepthMask:Z

    .line 427
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iput-boolean v3, v2, Landroid/renderscript/ProgramStore;->mColorMaskR:Z

    .line 428
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iput-boolean v3, v2, Landroid/renderscript/ProgramStore;->mColorMaskG:Z

    .line 429
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iput-boolean v3, v2, Landroid/renderscript/ProgramStore;->mColorMaskB:Z

    .line 430
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    iput-boolean v3, v2, Landroid/renderscript/ProgramStore;->mColorMaskA:Z

    .line 431
    iget-object v3, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iput-object v3, v2, Landroid/renderscript/ProgramStore;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 432
    iget-object v3, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iput-object v3, v2, Landroid/renderscript/ProgramStore;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 433
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    iput-boolean v3, v2, Landroid/renderscript/ProgramStore;->mDither:Z

    .line 434
    return-object v2
.end method

.method public setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "src"    # Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .param p2, "dst"    # Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 398
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 399
    iput-object p2, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 400
    return-object p0
.end method

.method public setColorMaskEnabled(ZZZZ)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "r"    # Z
    .param p2, "g"    # Z
    .param p3, "b"    # Z
    .param p4, "a"    # Z

    .line 379
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 380
    iput-boolean p2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 381
    iput-boolean p3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 382
    iput-boolean p4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 383
    return-object p0
.end method

.method public setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "func"    # Landroid/renderscript/ProgramStore$DepthFunc;

    .line 351
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 352
    return-object p0
.end method

.method public setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .line 364
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    .line 365
    return-object p0
.end method

.method public setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .line 412
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    .line 413
    return-object p0
.end method

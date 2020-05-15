.class public Landroid/renderscript/Program$BaseProgramBuilder;
.super Ljava/lang/Object;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseProgramBuilder"
.end annotation


# instance fields
.field mConstantCount:I

.field mConstants:[Landroid/renderscript/Type;

.field mInputCount:I

.field mInputs:[Landroid/renderscript/Element;

.field mOutputCount:I

.field mOutputs:[Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mShader:Ljava/lang/String;

.field mTextureCount:I

.field mTextureNames:[Ljava/lang/String;

.field mTextureTypes:[Landroid/renderscript/Program$TextureType;

.field mTextures:[Landroid/renderscript/Type;


# direct methods
.method protected constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 218
    const/16 v0, 0x8

    new-array v1, v0, [Landroid/renderscript/Element;

    iput-object v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    .line 219
    new-array v1, v0, [Landroid/renderscript/Element;

    iput-object v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    .line 220
    new-array v1, v0, [Landroid/renderscript/Type;

    iput-object v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    .line 221
    const/4 v1, 0x0

    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    .line 222
    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    .line 223
    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 224
    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 225
    new-array v1, v0, [Landroid/renderscript/Program$TextureType;

    iput-object v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    .line 226
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    .line 227
    return-void
.end method


# virtual methods
.method public addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 2
    .param p1, "t"    # Landroid/renderscript/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 311
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 314
    invoke-virtual {p1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    aput-object p1, v0, v1

    .line 318
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 319
    return-object p0

    .line 315
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Complex elements not allowed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Max input count exceeded."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 2
    .param p1, "texType"    # Landroid/renderscript/Program$TextureType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 331
    return-object p0
.end method

.method public addTexture(Landroid/renderscript/Program$TextureType;Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 2
    .param p1, "texType"    # Landroid/renderscript/Program$TextureType;
    .param p2, "texName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 345
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    aput-object p1, v0, v1

    .line 349
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    aput-object p2, v0, v1

    .line 350
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 351
    return-object p0

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max texture count exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentConstantIndex()I
    .locals 1

    .line 291
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurrentTextureIndex()I
    .locals 1

    .line 299
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected initProgram(Landroid/renderscript/Program;)V
    .locals 4
    .param p1, "p"    # Landroid/renderscript/Program;

    .line 355
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    new-array v0, v0, [Landroid/renderscript/Element;

    iput-object v0, p1, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    .line 356
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    iget-object v1, p1, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    new-array v0, v0, [Landroid/renderscript/Element;

    iput-object v0, p1, Landroid/renderscript/Program;->mOutputs:[Landroid/renderscript/Element;

    .line 358
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    iget-object v1, p1, Landroid/renderscript/Program;->mOutputs:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    new-array v0, v0, [Landroid/renderscript/Type;

    iput-object v0, p1, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    .line 360
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    iget-object v1, p1, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    iput v0, p1, Landroid/renderscript/Program;->mTextureCount:I

    .line 362
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    new-array v0, v0, [Landroid/renderscript/Program$TextureType;

    iput-object v0, p1, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    .line 363
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    iget-object v1, p1, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p1, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    .line 365
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    iget-object v1, p1, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    return-void
.end method

.method public setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 7
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    .line 251
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 254
    .local v0, "is":Ljava/io/InputStream;
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    .line 255
    .local v1, "str":[B
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .line 257
    .local v1, "strLength":I
    .local v3, "str":[B
    :goto_0
    array-length v4, v3

    sub-int/2addr v4, v1

    .line 258
    .local v4, "bytesLeft":I
    if-nez v4, :cond_0

    .line 259
    array-length v5, v3

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    .line 260
    .local v5, "buf2":[B
    array-length v6, v3

    invoke-static {v3, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 261
    move-object v3, v5

    .line 262
    array-length v6, v3

    sub-int v4, v6, v1

    .line 264
    .end local v5    # "buf2":[B
    :cond_0
    invoke-virtual {v0, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .local v5, "bytesRead":I
    if-gtz v5, :cond_1

    .line 266
    nop

    .line 271
    .end local v4    # "bytesLeft":I
    .end local v5    # "bytesRead":I
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    nop

    .line 271
    nop

    .line 275
    nop

    .line 274
    nop

    .line 278
    :try_start_2
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v2, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    goto :goto_1

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "RenderScript shader creation"

    const-string v5, "Could not decode shader string"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    return-object p0

    .line 268
    .restart local v4    # "bytesLeft":I
    .restart local v5    # "bytesRead":I
    :cond_1
    add-int/2addr v1, v5

    .line 269
    .end local v4    # "bytesLeft":I
    .end local v5    # "bytesRead":I
    goto :goto_0

    .line 271
    .end local v1    # "strLength":I
    .end local v3    # "str":[B
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 273
    :catch_1
    move-exception v1

    .line 274
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2
.end method

.method public setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 236
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;

    .line 237
    return-object p0
.end method

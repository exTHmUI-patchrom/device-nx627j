.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .line 39
    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 50
    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceID"    # I

    .line 60
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 61
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide v2

    .line 62
    .local v2, "id":J
    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/ScriptC;->setID(J)V

    .line 66
    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Loading of ScriptC script failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "bitcode32"    # [B
    .param p4, "bitcode64"    # [B

    .line 74
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 75
    const-wide/16 v2, 0x0

    .line 76
    .local v2, "id":J
    sget v4, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 77
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v2

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p1, p2, p4}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v2

    .line 81
    :goto_0
    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/ScriptC;->setID(J)V

    .line 85
    return-void

    .line 82
    :cond_1
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Loading of ScriptC script failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .locals 8
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    const-class v0, Landroid/renderscript/ScriptC;

    monitor-enter v0

    .line 90
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    .local v1, "is":Ljava/io/InputStream;
    const/16 v2, 0x400

    :try_start_1
    new-array v2, v2, [B

    .line 94
    .local v2, "pgm":[B
    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    .line 96
    .local v2, "pgmLength":I
    .local v4, "pgm":[B
    :goto_0
    array-length v5, v4

    sub-int/2addr v5, v2

    .line 97
    .local v5, "bytesLeft":I
    if-nez v5, :cond_0

    .line 98
    array-length v6, v4

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [B

    .line 99
    .local v6, "buf2":[B
    array-length v7, v4

    invoke-static {v4, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 100
    move-object v4, v6

    .line 101
    array-length v7, v4

    sub-int v5, v7, v2

    .line 103
    .end local v6    # "buf2":[B
    :cond_0
    invoke-virtual {v1, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .local v6, "bytesRead":I
    if-gtz v6, :cond_1

    .line 105
    nop

    .line 110
    .end local v5    # "bytesLeft":I
    .end local v6    # "bytesRead":I
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    nop

    .line 110
    move-object v3, v4

    .line 114
    .end local v4    # "pgm":[B
    .local v3, "pgm":[B
    nop

    .line 113
    nop

    .line 116
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "resName":Ljava/lang/String;
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3, v2}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-wide v5

    .line 107
    .end local v3    # "pgm":[B
    .local v4, "pgm":[B
    .restart local v5    # "bytesLeft":I
    .restart local v6    # "bytesRead":I
    :cond_1
    add-int/2addr v2, v6

    .line 108
    .end local v5    # "bytesLeft":I
    .end local v6    # "bytesRead":I
    goto :goto_0

    .line 110
    .end local v2    # "pgmLength":I
    .end local v4    # "pgm":[B
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v3}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 89
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "resourceID":I
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "bitcode"    # [B

    const-class v0, Landroid/renderscript/ScriptC;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "resName":Ljava/lang/String;
    .end local p2    # "bitcode":[B
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

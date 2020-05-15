.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private mCurrentIndent:[C

.field private mCurrentLength:I

.field private mEmptyLine:Z

.field private mIndentBuilder:Ljava/lang/StringBuilder;

.field private mSingleChar:[C

.field private final mSingleIndent:Ljava/lang/String;

.field private final mWrapLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;

    .line 51
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "wrapLength"    # I

    .line 55
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 48
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleChar:[C

    .line 56
    iput-object p2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    .line 57
    iput p3, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    .line 58
    return-void
.end method

.method private maybeWriteIndent()V
    .locals 3

    .line 165
    iget-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_1

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 167
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    iget-object v2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    array-length v2, v2

    invoke-super {p0, v1, v0, v2}, Ljava/io/PrintWriter;->write([CII)V

    .line 174
    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 84
    return-object p0
.end method

.method public increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 78
    return-object p0
.end method

.method public printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 99
    return-object p0
.end method

.method public printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 89
    return-object p0
.end method

.method public printPair(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 94
    return-object p0
.end method

.method public println()V
    .locals 1

    .line 104
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->write(I)V

    .line 105
    return-void
.end method

.method public setIndent(I)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 2
    .param p1, "indent"    # I

    .line 68
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 69
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    if-ge v0, p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 69
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 2
    .param p1, "indent"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 62
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 64
    return-object p0
.end method

.method public write(I)V
    .locals 3
    .param p1, "c"    # I

    .line 109
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleChar:[C

    int-to-char v1, p1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 110
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleChar:[C

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->write([CII)V

    .line 111
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 115
    new-array v0, p3, [C

    .line 116
    .local v0, "buf":[C
    sub-int v1, p3, p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 117
    invoke-virtual {p0, v0, v2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->write([CII)V

    .line 118
    return-void
.end method

.method public write([CII)V
    .locals 10
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 122
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 123
    .local v0, "indentLength":I
    add-int v1, p2, p3

    .line 124
    .local v1, "bufferEnd":I
    move v2, p2

    .line 125
    .local v2, "lineStart":I
    move v3, v2

    .line 128
    .local v2, "lineEnd":I
    .local v3, "lineStart":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 129
    add-int/lit8 v4, v2, 0x1

    .local v4, "lineEnd":I
    aget-char v2, p1, v2

    .line 130
    .local v2, "ch":C
    iget v5, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    .line 131
    const/4 v5, 0x0

    const/16 v7, 0xa

    if-ne v2, v7, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 133
    sub-int v8, v4, v3

    invoke-super {p0, p1, v3, v8}, Ljava/io/PrintWriter;->write([CII)V

    .line 134
    move v3, v4

    .line 135
    iput-boolean v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 136
    iput v5, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    .line 140
    :cond_0
    iget v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    if-lez v8, :cond_2

    iget v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    iget v9, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    sub-int/2addr v9, v0

    if-lt v8, v9, :cond_2

    .line 141
    iget-boolean v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-nez v8, :cond_1

    .line 143
    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    .line 144
    iput-boolean v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 145
    sub-int v5, v4, v3

    iput v5, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    goto :goto_1

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 149
    sub-int v8, v4, v3

    invoke-super {p0, p1, v3, v8}, Ljava/io/PrintWriter;->write([CII)V

    .line 150
    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    .line 151
    iput-boolean v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 152
    move v3, v4

    .line 153
    iput v5, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    .line 156
    .end local v2    # "ch":C
    :cond_2
    :goto_1
    nop

    .line 125
    move v2, v4

    goto :goto_0

    .line 158
    .end local v4    # "lineEnd":I
    .local v2, "lineEnd":I
    :cond_3
    if-eq v3, v2, :cond_4

    .line 159
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 160
    sub-int v4, v2, v3

    invoke-super {p0, p1, v3, v4}, Ljava/io/PrintWriter;->write([CII)V

    .line 162
    :cond_4
    return-void
.end method

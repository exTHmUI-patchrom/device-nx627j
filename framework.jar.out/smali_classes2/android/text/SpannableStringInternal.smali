.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field static final EMPTY:[Ljava/lang/Object;

.field private static final END:I = 0x1

.field private static final FLAGS:I = 0x2

.field private static final START:I


# instance fields
.field private mSpanCount:I

.field private mSpanData:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 552
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;IIZ)V
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ignoreNoCopySpan"    # Z

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    .line 35
    :goto_0
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 37
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 39
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 40
    instance-of v0, p1, Landroid/text/SpannableStringInternal;

    if-eqz v0, :cond_1

    .line 41
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringInternal;

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/SpannableStringInternal;IIZ)V

    goto :goto_1

    .line 43
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/Spanned;IIZ)V

    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 462
    if-lt p3, p2, :cond_2

    .line 468
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    .line 470
    .local v0, "len":I
    if-gt p2, v0, :cond_1

    if-gt p3, v0, :cond_1

    .line 476
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 481
    return-void

    .line 477
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    .end local v0    # "len":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has end before start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copySpans(Landroid/text/SpannableStringInternal;II)V
    .locals 1
    .param p1, "src"    # Landroid/text/SpannableStringInternal;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 542
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/SpannableStringInternal;IIZ)V

    .line 543
    return-void
.end method

.method private copySpans(Landroid/text/SpannableStringInternal;IIZ)V
    .locals 17
    .param p1, "src"    # Landroid/text/SpannableStringInternal;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ignoreNoCopySpan"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 96
    const/4 v4, 0x0

    .line 97
    .local v4, "count":I
    iget-object v5, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 98
    .local v5, "srcData":[I
    iget-object v6, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 99
    .local v6, "srcSpans":[Ljava/lang/Object;
    iget v7, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 100
    .local v7, "limit":I
    const/4 v8, 0x0

    .line 102
    .local v8, "hasNoCopySpan":Z
    const/4 v9, 0x0

    move v10, v8

    move v8, v4

    move v4, v9

    .local v4, "i":I
    .local v8, "count":I
    .local v10, "hasNoCopySpan":Z
    :goto_0
    if-ge v4, v7, :cond_2

    .line 103
    mul-int/lit8 v11, v4, 0x3

    add-int/2addr v11, v9

    aget v11, v5, v11

    .line 104
    .local v11, "spanStart":I
    mul-int/lit8 v12, v4, 0x3

    add-int/lit8 v12, v12, 0x1

    aget v12, v5, v12

    .line 105
    .local v12, "spanEnd":I
    invoke-direct {v0, v2, v3, v11, v12}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v13

    if-eqz v13, :cond_0

    .end local v11    # "spanStart":I
    .end local v12    # "spanEnd":I
    goto :goto_1

    .line 106
    .restart local v11    # "spanStart":I
    .restart local v12    # "spanEnd":I
    :cond_0
    aget-object v13, v6, v4

    instance-of v13, v13, Landroid/text/NoCopySpan;

    if-eqz v13, :cond_1

    .line 107
    const/4 v10, 0x1

    .line 108
    if-eqz p4, :cond_1

    .line 109
    goto :goto_1

    .line 112
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 102
    .end local v11    # "spanStart":I
    .end local v12    # "spanEnd":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    .end local v4    # "i":I
    :cond_2
    if-nez v8, :cond_3

    return-void

    .line 117
    :cond_3
    if-nez v10, :cond_4

    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringInternal;->length()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 118
    iget-object v4, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 119
    iget-object v4, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 120
    iget v4, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iput v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 121
    iget-object v4, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v11, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v12, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v12, v12

    invoke-static {v4, v9, v11, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object v4, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v11, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v12, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v12, v12

    invoke-static {v4, v9, v11, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 124
    :cond_4
    iput v8, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 125
    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 126
    iget-object v4, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x3

    new-array v4, v4, [I

    iput-object v4, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 127
    const/4 v4, 0x0

    .restart local v4    # "i":I
    move v11, v4

    move v4, v9

    .local v4, "j":I
    .local v11, "i":I
    :goto_2
    if-ge v11, v7, :cond_9

    .line 128
    mul-int/lit8 v12, v11, 0x3

    add-int/2addr v12, v9

    aget v12, v5, v12

    .line 129
    .local v12, "spanStart":I
    mul-int/lit8 v13, v11, 0x3

    add-int/lit8 v13, v13, 0x1

    aget v13, v5, v13

    .line 130
    .local v13, "spanEnd":I
    invoke-direct {v0, v2, v3, v12, v13}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v14

    if-nez v14, :cond_8

    if-eqz p4, :cond_5

    aget-object v14, v6, v11

    instance-of v14, v14, Landroid/text/NoCopySpan;

    if-eqz v14, :cond_5

    .line 132
    goto :goto_3

    .line 134
    :cond_5
    if-ge v12, v2, :cond_6

    move v12, v2

    .line 135
    :cond_6
    if-le v13, v3, :cond_7

    move v13, v3

    .line 137
    :cond_7
    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v15, v6, v11

    aput-object v15, v14, v4

    .line 138
    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v15, v4, 0x3

    add-int/2addr v15, v9

    sub-int v16, v12, v2

    aput v16, v14, v15

    .line 139
    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v15, v4, 0x3

    add-int/lit8 v15, v15, 0x1

    sub-int v16, v13, v2

    aput v16, v14, v15

    .line 140
    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v15, v4, 0x3

    add-int/lit8 v15, v15, 0x2

    mul-int/lit8 v16, v11, 0x3

    add-int/lit8 v16, v16, 0x2

    aget v16, v5, v16

    aput v16, v14, v15

    .line 141
    add-int/lit8 v4, v4, 0x1

    .line 127
    .end local v12    # "spanStart":I
    .end local v13    # "spanEnd":I
    :cond_8
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 144
    .end local v4    # "j":I
    .end local v11    # "i":I
    :cond_9
    :goto_4
    return-void
.end method

.method private copySpans(Landroid/text/Spanned;II)V
    .locals 1
    .param p1, "src"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/Spanned;IIZ)V

    .line 539
    return-void
.end method

.method private copySpans(Landroid/text/Spanned;IIZ)V
    .locals 11
    .param p1, "src"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ignoreNoCopySpan"    # Z

    .line 66
    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "spans":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 69
    if-eqz p4, :cond_0

    aget-object v2, v0, v1

    instance-of v2, v2, Landroid/text/NoCopySpan;

    if-eqz v2, :cond_0

    .line 70
    goto :goto_1

    .line 72
    :cond_0
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 73
    .local v2, "st":I
    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 74
    .local v3, "en":I
    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 76
    .local v4, "fl":I
    if-ge v2, p2, :cond_1

    .line 77
    move v2, p2

    .line 78
    :cond_1
    if-le v3, p3, :cond_2

    .line 79
    move v3, p3

    .line 81
    :cond_2
    aget-object v6, v0, v1

    sub-int v7, v2, p2

    sub-int v8, v3, p2

    const/4 v10, 0x0

    move-object v5, p0

    move v9, v4

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    .line 68
    .end local v2    # "st":I
    .end local v3    # "en":I
    .end local v4    # "fl":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private isIndexFollowsNextLine(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 182
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isOutOfCopyRange(IIII)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "spanStart"    # I
    .param p4, "spanEnd"    # I

    .line 152
    const/4 v0, 0x1

    if-gt p3, p2, :cond_3

    if-ge p4, p1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    if-eq p3, p4, :cond_2

    if-eq p1, p2, :cond_2

    .line 154
    if-eq p3, p2, :cond_1

    if-ne p4, p1, :cond_2

    :cond_1
    return v0

    .line 156
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_3
    :goto_0
    return v0
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 430
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 431
    .local v0, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 433
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 434
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "s"    # I
    .param p3, "e"    # I
    .param p4, "st"    # I
    .param p5, "en"    # I

    .line 448
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 450
    .local v0, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 452
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 453
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 439
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 440
    .local v0, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 442
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 443
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private setSpan(Ljava/lang/Object;IIIZ)V
    .locals 18
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I
    .param p5, "enforceParagraph"    # Z

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 186
    move v10, v8

    .line 187
    .local v10, "nstart":I
    move v11, v9

    .line 189
    .local v11, "nend":I
    const-string/jumbo v0, "setSpan"

    invoke-direct {v6, v0, v8, v9}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    .line 191
    and-int/lit8 v0, p4, 0x33

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    .line 192
    invoke-direct {v6, v8}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    if-nez p5, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " follows "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v8, -0x1

    .line 198
    invoke-virtual {v6, v2}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    invoke-direct {v6, v9}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    if-nez p5, :cond_2

    .line 204
    return-void

    .line 206
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " follows "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v9, -0x1

    .line 207
    invoke-virtual {v6, v2}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_3
    iget v12, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 212
    .local v12, "count":I
    iget-object v13, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 213
    .local v13, "spans":[Ljava/lang/Object;
    iget-object v5, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 215
    .local v5, "data":[I
    const/4 v0, 0x0

    move v1, v0

    .line 215
    .local v1, "i":I
    :goto_0
    move v4, v1

    .line 215
    .end local v1    # "i":I
    .local v4, "i":I
    if-ge v4, v12, :cond_5

    .line 216
    aget-object v1, v13, v4

    if-ne v1, v7, :cond_4

    .line 217
    mul-int/lit8 v1, v4, 0x3

    add-int/2addr v1, v0

    aget v14, v5, v1

    .line 218
    .local v14, "ostart":I
    mul-int/lit8 v1, v4, 0x3

    add-int/lit8 v1, v1, 0x1

    aget v15, v5, v1

    .line 220
    .local v15, "oend":I
    mul-int/lit8 v1, v4, 0x3

    add-int/2addr v1, v0

    aput v8, v5, v1

    .line 221
    mul-int/lit8 v0, v4, 0x3

    add-int/lit8 v0, v0, 0x1

    aput v9, v5, v0

    .line 222
    mul-int/lit8 v0, v4, 0x3

    add-int/lit8 v0, v0, 0x2

    aput p4, v5, v0

    .line 224
    move-object v0, v6

    move-object v1, v7

    move v2, v14

    move v3, v15

    move/from16 v16, v4

    move v4, v10

    .line 224
    .end local v4    # "i":I
    .local v16, "i":I
    move-object/from16 v17, v5

    move v5, v11

    .line 224
    .end local v5    # "data":[I
    .local v17, "data":[I
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 225
    return-void

    .line 215
    .end local v14    # "ostart":I
    .end local v15    # "oend":I
    .end local v16    # "i":I
    .end local v17    # "data":[I
    .restart local v4    # "i":I
    .restart local v5    # "data":[I
    :cond_4
    move/from16 v16, v4

    move-object/from16 v17, v5

    .line 215
    .end local v4    # "i":I
    .end local v5    # "data":[I
    .restart local v16    # "i":I
    .restart local v17    # "data":[I
    add-int/lit8 v1, v16, 0x1

    .line 215
    .end local v16    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 229
    .end local v1    # "i":I
    .end local v17    # "data":[I
    .restart local v5    # "data":[I
    :cond_5
    move-object/from16 v17, v5

    .line 229
    .end local v5    # "data":[I
    .restart local v17    # "data":[I
    iget v1, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_6

    .line 230
    iget v1, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 231
    invoke-static {v1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 230
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 232
    .local v1, "newtags":[Ljava/lang/Object;
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [I

    .line 234
    .local v2, "newdata":[I
    iget-object v3, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v4, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v3, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-object v3, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v4, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iput-object v1, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 238
    iput-object v2, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 241
    .end local v1    # "newtags":[Ljava/lang/Object;
    .end local v2    # "newdata":[I
    :cond_6
    iget-object v1, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v2, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    aput-object v7, v1, v2

    .line 242
    iget-object v1, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v2, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v0

    aput v8, v1, v2

    .line 243
    iget-object v0, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v1, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    aput v9, v0, v1

    .line 244
    iget-object v0, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v1, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    aput p4, v0, v1

    .line 245
    iget v0, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 247
    instance-of v0, v6, Landroid/text/Spannable;

    if-eqz v0, :cond_7

    .line 248
    invoke-direct {v6, v7, v10, v11}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 249
    :cond_7
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1
    .param p1, "i"    # I

    .line 164
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 486
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 487
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 488
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 490
    .local v0, "other":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 491
    .local v2, "otherSpans":[Ljava/lang/Object;
    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    array-length v4, v2

    if-ne v3, v4, :cond_5

    .line 492
    move v3, v1

    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v3, v4, :cond_4

    .line 493
    iget-object v4, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v4, v4, v3

    .line 494
    .local v4, "thisSpan":Ljava/lang/Object;
    aget-object v5, v2, v3

    .line 495
    .local v5, "otherSpan":Ljava/lang/Object;
    if-ne v4, p0, :cond_1

    .line 496
    if-ne v0, v5, :cond_0

    .line 497
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 498
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 499
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 500
    :cond_0
    return v1

    .line 502
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 503
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 504
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 505
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_2

    goto :goto_1

    .line 492
    .end local v4    # "thisSpan":Ljava/lang/Object;
    .end local v5    # "otherSpan":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 506
    .restart local v4    # "thisSpan":Ljava/lang/Object;
    .restart local v5    # "otherSpan":Ljava/lang/Object;
    :cond_3
    :goto_1
    return v1

    .line 509
    .end local v3    # "i":I
    .end local v4    # "thisSpan":Ljava/lang/Object;
    .end local v5    # "otherSpan":Ljava/lang/Object;
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 512
    .end local v0    # "other":Landroid/text/Spanned;
    .end local v2    # "otherSpans":[Ljava/lang/Object;
    :cond_5
    return v1
.end method

.method public final getChars(II[CI)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    .line 174
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 175
    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;

    .line 299
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 300
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 301
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 303
    .local v2, "data":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 304
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_0

    .line 305
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    return v4

    .line 303
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 309
    .end local v3    # "i":I
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;

    .line 313
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 314
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 315
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 317
    .local v2, "data":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 318
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_0

    .line 319
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v4, v2, v4

    return v4

    .line 317
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 323
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;

    .line 285
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 286
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 287
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 289
    .local v2, "data":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 290
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_0

    .line 291
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v2, v4

    return v4

    .line 289
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 295
    .end local v3    # "i":I
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 19
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 327
    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 329
    .local v4, "count":I
    iget v5, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 330
    .local v5, "spanCount":I
    iget-object v6, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 331
    .local v6, "spans":[Ljava/lang/Object;
    iget-object v7, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 332
    .local v7, "data":[I
    const/4 v8, 0x0

    .line 333
    .local v8, "ret":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 335
    .local v9, "ret1":Ljava/lang/Object;
    const/4 v10, 0x0

    move-object v11, v9

    move-object v9, v8

    move v8, v4

    move v4, v10

    .local v4, "i":I
    .local v8, "count":I
    .local v9, "ret":[Ljava/lang/Object;
    .local v11, "ret1":Ljava/lang/Object;
    :goto_0
    const/4 v12, 0x1

    if-ge v4, v5, :cond_a

    .line 336
    mul-int/lit8 v13, v4, 0x3

    add-int/2addr v13, v10

    aget v13, v7, v13

    .line 337
    .local v13, "spanStart":I
    mul-int/lit8 v14, v4, 0x3

    add-int/2addr v14, v12

    aget v14, v7, v14

    .line 339
    .local v14, "spanEnd":I
    if-le v13, v2, :cond_0

    .line 340
    goto/16 :goto_3

    .line 342
    :cond_0
    if-ge v14, v1, :cond_1

    .line 343
    goto/16 :goto_3

    .line 346
    :cond_1
    if-eq v13, v14, :cond_3

    if-eq v1, v2, :cond_3

    .line 347
    if-ne v13, v2, :cond_2

    .line 348
    goto :goto_3

    .line 350
    :cond_2
    if-ne v14, v1, :cond_3

    .line 351
    goto :goto_3

    .line 356
    :cond_3
    if-eqz v3, :cond_4

    const-class v15, Ljava/lang/Object;

    if-eq v3, v15, :cond_4

    aget-object v15, v6, v4

    invoke-virtual {v3, v15}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 357
    goto :goto_3

    .line 360
    :cond_4
    if-nez v8, :cond_5

    .line 361
    aget-object v11, v6, v4

    .line 362
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 364
    :cond_5
    if-ne v8, v12, :cond_6

    .line 365
    sub-int v15, v5, v4

    add-int/2addr v15, v12

    invoke-static {v3, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v12

    move-object v9, v12

    check-cast v9, [Ljava/lang/Object;

    .line 366
    aput-object v11, v9, v10

    .line 369
    :cond_6
    mul-int/lit8 v12, v4, 0x3

    add-int/lit8 v12, v12, 0x2

    aget v12, v7, v12

    const/high16 v15, 0xff0000

    and-int/2addr v12, v15

    .line 370
    .local v12, "prio":I
    if-eqz v12, :cond_9

    .line 373
    move/from16 v16, v10

    .local v16, "j":I
    :goto_1
    move/from16 v17, v16

    .end local v16    # "j":I
    .local v17, "j":I
    move/from16 v10, v17

    if-ge v10, v8, :cond_8

    .line 374
    .end local v17    # "j":I
    .local v10, "j":I
    aget-object v1, v9, v10

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, v15

    .line 376
    .local v1, "p":I
    if-le v12, v1, :cond_7

    .line 377
    goto :goto_2

    .line 373
    .end local v1    # "p":I
    :cond_7
    add-int/lit8 v16, v10, 0x1

    .end local v10    # "j":I
    .restart local v16    # "j":I
    move/from16 v1, p1

    const/4 v10, 0x0

    goto :goto_1

    .line 381
    .end local v16    # "j":I
    .restart local v10    # "j":I
    :cond_8
    :goto_2
    add-int/lit8 v1, v10, 0x1

    sub-int v15, v8, v10

    invoke-static {v9, v10, v9, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    aget-object v1, v6, v4

    aput-object v1, v9, v10

    .line 383
    add-int/lit8 v8, v8, 0x1

    .line 384
    .end local v10    # "j":I
    goto :goto_3

    .line 385
    :cond_9
    add-int/lit8 v1, v8, 0x1

    .local v1, "count":I
    aget-object v10, v6, v4

    aput-object v10, v9, v8

    .line 335
    .end local v8    # "count":I
    .end local v12    # "prio":I
    .end local v13    # "spanStart":I
    .end local v14    # "spanEnd":I
    move v8, v1

    .end local v1    # "count":I
    .restart local v8    # "count":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p1

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 390
    .end local v4    # "i":I
    :cond_a
    if-nez v8, :cond_b

    .line 391
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 393
    :cond_b
    if-ne v8, v12, :cond_c

    .line 394
    invoke-static {v3, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 395
    .end local v9    # "ret":[Ljava/lang/Object;
    .local v1, "ret":[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object v11, v1, v4

    .line 396
    return-object v1

    .line 398
    .end local v1    # "ret":[Ljava/lang/Object;
    .restart local v9    # "ret":[Ljava/lang/Object;
    :cond_c
    array-length v1, v9

    if-ne v8, v1, :cond_d

    .line 399
    return-object v9

    .line 402
    :cond_d
    invoke-static {v3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 403
    .local v1, "nret":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {v9, v4, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    return-object v1
.end method

.method public hashCode()I
    .locals 5

    .line 518
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 519
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/2addr v1, v2

    .line 520
    .end local v0    # "hash":I
    .local v1, "hash":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v0, v2, :cond_1

    .line 521
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 522
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_0

    .line 523
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 525
    :cond_0
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 526
    .end local v1    # "hash":I
    .local v3, "hash":I
    mul-int/lit8 v1, v3, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    .line 527
    .end local v3    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v1, v3, v4

    .line 520
    .end local v2    # "span":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public final length()I
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 8
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .line 408
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 409
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 410
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 412
    .local v2, "data":[I
    if-nez p3, :cond_0

    .line 413
    const-class p3, Ljava/lang/Object;

    .line 416
    :cond_0
    const/4 v3, 0x0

    move v4, p2

    move p2, v3

    .local v4, "limit":I
    .local p2, "i":I
    :goto_0
    if-ge p2, v0, :cond_3

    .line 417
    mul-int/lit8 v5, p2, 0x3

    add-int/2addr v5, v3

    aget v5, v2, v5

    .line 418
    .local v5, "st":I
    mul-int/lit8 v6, p2, 0x3

    add-int/lit8 v6, v6, 0x1

    aget v6, v2, v6

    .line 420
    .local v6, "en":I
    if-le v5, p1, :cond_1

    if-ge v5, v4, :cond_1

    aget-object v7, v1, p2

    invoke-virtual {p3, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 421
    move v4, v5

    .line 422
    :cond_1
    if-le v6, p1, :cond_2

    if-ge v6, v4, :cond_2

    aget-object v7, v1, p2

    invoke-virtual {p3, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 423
    move v4, v6

    .line 416
    .end local v5    # "st":I
    .end local v6    # "en":I
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 426
    .end local p2    # "i":I
    :cond_3
    return v4
.end method

.method removeSpan(Ljava/lang/Object;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Object;

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;I)V

    .line 253
    return-void
.end method

.method public removeSpan(Ljava/lang/Object;I)V
    .locals 10
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .line 259
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 260
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 261
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 263
    .local v2, "data":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 264
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_1

    .line 265
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v2, v4

    .line 266
    .local v4, "ostart":I
    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    .line 268
    .local v5, "oend":I
    add-int/lit8 v6, v3, 0x1

    sub-int v6, v0, v6

    .line 270
    .local v6, "c":I
    add-int/lit8 v7, v3, 0x1

    invoke-static {v1, v7, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    add-int/lit8 v7, v3, 0x1

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v8, v3, 0x3

    mul-int/lit8 v9, v6, 0x3

    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 276
    and-int/lit16 v7, p2, 0x200

    if-nez v7, :cond_0

    .line 277
    invoke-direct {p0, p1, v4, v5}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 279
    :cond_0
    return-void

    .line 263
    .end local v4    # "ostart":I
    .end local v5    # "oend":I
    .end local v6    # "c":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 282
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method setSpan(Ljava/lang/Object;III)V
    .locals 6
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 178
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    .line 179
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method

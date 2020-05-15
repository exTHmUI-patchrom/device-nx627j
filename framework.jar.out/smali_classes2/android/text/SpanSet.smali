.class public Landroid/text/SpanSet;
.super Ljava/lang/Object;
.source "SpanSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final classType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TE;>;"
        }
    .end annotation
.end field

.field numberOfSpans:I

.field spanEnds:[I

.field spanFlags:[I

.field spanStarts:[I

.field spans:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TE;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 43
    return-void
.end method


# virtual methods
.method getNextTransition(II)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 101
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_2

    .line 102
    iget-object v1, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v0

    .line 103
    .local v1, "spanStart":I
    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v0

    .line 104
    .local v2, "spanEnd":I
    if-le v1, p1, :cond_0

    if-ge v1, p2, :cond_0

    move p2, v1

    .line 105
    :cond_0
    if-le v2, p1, :cond_1

    if-ge v2, p2, :cond_1

    move p2, v2

    .line 101
    .end local v1    # "spanStart":I
    .end local v2    # "spanEnd":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_2
    return p2
.end method

.method public hasSpansIntersecting(II)Z
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 89
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v2, :cond_2

    .line 91
    iget-object v2, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v1

    if-ge v2, p2, :cond_1

    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v1

    if-gt v2, p1, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public init(Landroid/text/Spanned;II)V
    .locals 10
    .param p1, "spanned"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 47
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    iget-object v0, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "allSpans":[Ljava/lang/Object;, "[TE;"
    array-length v1, v0

    .line 50
    .local v1, "length":I
    if-lez v1, :cond_1

    iget-object v2, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 52
    :cond_0
    iget-object v2, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    .line 53
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/text/SpanSet;->spanStarts:[I

    .line 54
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    .line 55
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/text/SpanSet;->spanFlags:[I

    .line 58
    :cond_1
    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 59
    .local v2, "prevNumberOfSpans":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 60
    nop

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 61
    aget-object v4, v0, v3

    .line 63
    .local v4, "span":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 64
    .local v5, "spanStart":I
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 65
    .local v6, "spanEnd":I
    if-ne v5, v6, :cond_2

    .end local v4    # "span":Ljava/lang/Object;, "TE;"
    .end local v5    # "spanStart":I
    .end local v6    # "spanEnd":I
    goto :goto_1

    .line 67
    .restart local v4    # "span":Ljava/lang/Object;, "TE;"
    .restart local v5    # "spanStart":I
    .restart local v6    # "spanEnd":I
    :cond_2
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 69
    .local v7, "spanFlag":I
    iget-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput-object v4, v8, v9

    .line 70
    iget-object v8, p0, Landroid/text/SpanSet;->spanStarts:[I

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v5, v8, v9

    .line 71
    iget-object v8, p0, Landroid/text/SpanSet;->spanEnds:[I

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v6, v8, v9

    .line 72
    iget-object v8, p0, Landroid/text/SpanSet;->spanFlags:[I

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v7, v8, v9

    .line 74
    iget v8, p0, Landroid/text/SpanSet;->numberOfSpans:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 60
    .end local v4    # "span":Ljava/lang/Object;, "TE;"
    .end local v5    # "spanStart":I
    .end local v6    # "spanEnd":I
    .end local v7    # "spanFlag":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    .end local v3    # "i":I
    :cond_3
    iget v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v3, v2, :cond_4

    .line 80
    iget-object v3, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 82
    :cond_4
    return-void
.end method

.method public recycle()V
    .locals 4

    .line 114
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 117
    :cond_0
    return-void
.end method

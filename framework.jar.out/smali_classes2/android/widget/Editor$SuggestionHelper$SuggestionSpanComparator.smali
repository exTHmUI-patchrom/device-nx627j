.class Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionSpanComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/text/style/SuggestionSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionHelper;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$SuggestionHelper;)V
    .locals 0

    .line 3422
    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionHelper;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor$SuggestionHelper;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .line 3422
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionHelper;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I
    .locals 8
    .param p1, "span1"    # Landroid/text/style/SuggestionSpan;
    .param p2, "span2"    # Landroid/text/style/SuggestionSpan;

    .line 3424
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 3425
    .local v0, "flag1":I
    invoke-virtual {p2}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v1

    .line 3426
    .local v1, "flag2":I
    if-eq v0, v1, :cond_7

    .line 3428
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 3429
    .local v2, "easy1":Z
    :goto_0
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 3430
    .local v5, "easy2":Z
    :goto_1
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    .line 3431
    .local v6, "misspelled1":Z
    :goto_2
    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_3

    move v3, v4

    nop

    .line 3432
    .local v3, "misspelled2":Z
    :cond_3
    const/4 v7, -0x1

    if-eqz v2, :cond_4

    if-nez v6, :cond_4

    return v7

    .line 3433
    :cond_4
    if-eqz v5, :cond_5

    if-nez v3, :cond_5

    return v4

    .line 3434
    :cond_5
    if-eqz v6, :cond_6

    return v7

    .line 3435
    :cond_6
    if-eqz v3, :cond_7

    return v4

    .line 3438
    .end local v2    # "easy1":Z
    .end local v3    # "misspelled2":Z
    .end local v5    # "easy2":Z
    .end local v6    # "misspelled1":Z
    :cond_7
    iget-object v2, p0, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionHelper;

    invoke-static {v2}, Landroid/widget/Editor$SuggestionHelper;->access$2600(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionHelper;

    invoke-static {v3}, Landroid/widget/Editor$SuggestionHelper;->access$2600(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3422
    check-cast p1, Landroid/text/style/SuggestionSpan;

    check-cast p2, Landroid/text/style/SuggestionSpan;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I

    move-result p1

    return p1
.end method

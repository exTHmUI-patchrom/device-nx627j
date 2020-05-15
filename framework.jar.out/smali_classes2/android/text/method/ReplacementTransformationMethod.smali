.class public abstract Landroid/text/method/ReplacementTransformationMethod;
.super Ljava/lang/Object;
.source "ReplacementTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;,
        Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getOriginal()[C
.end method

.method protected abstract getReplacement()[C
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "v"    # Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getOriginal()[C

    move-result-object v0

    .line 54
    .local v0, "original":[C
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getReplacement()[C

    move-result-object v1

    .line 59
    .local v1, "replacement":[C
    instance-of v2, p1, Landroid/text/Editable;

    if-nez v2, :cond_4

    .line 64
    const/4 v2, 0x1

    .line 65
    .local v2, "doNothing":Z
    array-length v3, v0

    .line 66
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 67
    aget-char v5, v0, v4

    invoke-static {p1, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    if-ltz v5, :cond_0

    .line 68
    const/4 v2, 0x0

    .line 69
    goto :goto_1

    .line 66
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    .end local v4    # "i":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 73
    return-object p1

    .line 76
    :cond_2
    instance-of v4, p1, Landroid/text/Spannable;

    if-nez v4, :cond_4

    .line 82
    instance-of v4, p1, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    .line 83
    new-instance v4, Landroid/text/SpannedString;

    new-instance v5, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    move-object v6, p1

    check-cast v6, Landroid/text/Spanned;

    invoke-direct {v5, v6, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    invoke-direct {v4, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v4

    .line 87
    :cond_3
    new-instance v4, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    invoke-direct {v4, p1, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    .line 89
    invoke-virtual {v4}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    return-object v4

    .line 94
    .end local v2    # "doNothing":Z
    .end local v3    # "n":I
    :cond_4
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    .line 95
    new-instance v2, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    move-object v3, p1

    check-cast v3, Landroid/text/Spanned;

    invoke-direct {v2, v3, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    return-object v2

    .line 98
    :cond_5
    new-instance v2, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    invoke-direct {v2, p1, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    return-object v2
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 106
    return-void
.end method

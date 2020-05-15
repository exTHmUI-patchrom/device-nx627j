.class public final Landroid/text/SpannedString;
.super Landroid/text/SpannableStringInternal;
.source "SpannedString.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;Z)V

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "ignoreNoCopySpan"    # Z

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 57
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p0

    check-cast v0, Landroid/text/SpannedString;

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getSpanEnd(Ljava/lang/Object;)I
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSpanFlags(Ljava/lang/Object;)I
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSpanStart(Ljava/lang/Object;)I
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 25
    invoke-super {p0}, Landroid/text/SpannableStringInternal;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic nextSpanTransition(IILjava/lang/Class;)I
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic removeSpan(Ljava/lang/Object;I)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;I)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 53
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

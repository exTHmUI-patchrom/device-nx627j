.class public Landroid/text/InputFilter$AllCaps;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllCaps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;
    }
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/InputFilter$AllCaps;->mLocale:Ljava/util/Locale;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Landroid/text/InputFilter$AllCaps;->mLocale:Ljava/util/Locale;

    .line 72
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 76
    new-instance v0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;

    invoke-direct {v0, p1, p2, p3}, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;-><init>(Ljava/lang/CharSequence;II)V

    .line 78
    .local v0, "wrapper":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 79
    .local v1, "lowerOrTitleFound":Z
    sub-int v2, p3, p2

    .line 80
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 83
    invoke-static {v0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 84
    .local v4, "cp":I
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 85
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 86
    nop

    .line 89
    .end local v3    # "i":I
    .end local v4    # "cp":I
    :cond_2
    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 90
    return-object v3

    .line 93
    :cond_3
    instance-of v4, p1, Landroid/text/Spanned;

    .line 94
    .local v4, "copySpans":Z
    iget-object v5, p0, Landroid/text/InputFilter$AllCaps;->mLocale:Ljava/util/Locale;

    invoke-static {v5, v0, v4}, Landroid/text/TextUtils;->toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v5

    .line 95
    .local v5, "upper":Ljava/lang/CharSequence;
    if-ne v5, v0, :cond_4

    .line 99
    return-object v3

    .line 102
    :cond_4
    if-eqz v4, :cond_5

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    return-object v3
.end method

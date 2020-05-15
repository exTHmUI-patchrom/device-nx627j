.class public abstract Landroid/text/LoginFilter;
.super Ljava/lang/Object;
.source "LoginFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/LoginFilter$PasswordFilterGMail;,
        Landroid/text/LoginFilter$UsernameFilterGeneric;,
        Landroid/text/LoginFilter$UsernameFilterGMail;
    }
.end annotation


# instance fields
.field private mAppendInvalid:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    .line 38
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "appendInvalid"    # Z

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    .line 31
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 52
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStart()V

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_1

    .line 57
    invoke-interface {p4, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    .line 58
    .local v1, "c":C
    invoke-virtual {p0, v1}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    .line 56
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 63
    .local v0, "modification":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .line 65
    .local v1, "modoff":I
    move-object v2, v0

    move v0, p2

    .local v0, "i":I
    .local v2, "modification":Landroid/text/SpannableStringBuilder;
    :goto_1
    if-ge v0, p3, :cond_5

    .line 66
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 67
    .local v3, "c":C
    invoke-virtual {p0, v3}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 71
    :cond_2
    iget-boolean v4, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    if-eqz v4, :cond_3

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 74
    :cond_3
    if-nez v2, :cond_4

    .line 75
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    move-object v2, v4

    .line 76
    sub-int v1, v0, p2

    .line 79
    :cond_4
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 82
    :goto_2
    invoke-virtual {p0, v3}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    .line 65
    .end local v3    # "c":C
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "i":I
    :cond_5
    move v0, p6

    .restart local v0    # "i":I
    :goto_4
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 89
    invoke-interface {p4, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v3

    .line 90
    .restart local v3    # "c":C
    invoke-virtual {p0, v3}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0, v3}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    .line 88
    .end local v3    # "c":C
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 93
    .end local v0    # "i":I
    :cond_7
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStop()V

    .line 97
    return-object v2
.end method

.method public abstract isAllowed(C)Z
.end method

.method public onInvalidCharacter(C)V
    .locals 0
    .param p1, "c"    # C

    .line 113
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 105
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 120
    return-void
.end method

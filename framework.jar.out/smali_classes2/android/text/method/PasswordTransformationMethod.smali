.class public Landroid/text/method/PasswordTransformationMethod;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/PasswordTransformationMethod$ViewReference;,
        Landroid/text/method/PasswordTransformationMethod$Visible;,
        Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
    }
.end annotation


# static fields
.field private static DOT:C

.field private static sInstance:Landroid/text/method/PasswordTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 265
    const/16 v0, 0x2022

    sput-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()C
    .locals 1

    .line 34
    sget-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return v0
.end method

.method public static getInstance()Landroid/text/method/PasswordTransformationMethod;
    .locals 1

    .line 63
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    .line 67
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    return-object v0
.end method

.method private static removeVisibleSpans(Landroid/text/Spannable;)V
    .locals 3
    .param p0, "sp"    # Landroid/text/Spannable;

    .line 132
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/PasswordTransformationMethod$Visible;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 133
    .local v0, "old":[Landroid/text/method/PasswordTransformationMethod$Visible;
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 134
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 133
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 136
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 117
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 73
    return-void
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .line 38
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    .line 39
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    .line 47
    .local v0, "sp":Landroid/text/Spannable;
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 49
    .local v1, "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    move v2, v3

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 50
    aget-object v4, v1, v2

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 55
    new-instance v2, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-direct {v2, p2}, Landroid/text/method/PasswordTransformationMethod$ViewReference;-><init>(Landroid/view/View;)V

    const/16 v4, 0x22

    invoke-interface {v0, v2, v3, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 59
    .end local v0    # "sp":Landroid/text/Spannable;
    .end local v1    # "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_1
    new-instance v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;

    invoke-direct {v0, p1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 122
    if-nez p3, :cond_0

    .line 123
    instance-of v0, p2, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 124
    move-object v0, p2

    check-cast v0, Landroid/text/Spannable;

    .line 126
    .local v0, "sp":Landroid/text/Spannable;
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 129
    .end local v0    # "sp":Landroid/text/Spannable;
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 77
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_3

    .line 78
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    .line 79
    .local v0, "sp":Landroid/text/Spannable;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 81
    .local v1, "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 82
    return-void

    .line 92
    :cond_0
    const/4 v2, 0x0

    .line 93
    .local v2, "v":Landroid/view/View;
    nop

    .local v3, "i":I
    :goto_0
    if-nez v2, :cond_1

    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 94
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/text/method/PasswordTransformationMethod$ViewReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/view/View;

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v3    # "i":I
    :cond_1
    if-nez v2, :cond_2

    .line 98
    return-void

    .line 101
    :cond_2
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v3

    .line 102
    .local v3, "pref":I
    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_3

    .line 103
    if-lez p4, :cond_3

    .line 104
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 106
    const/4 v4, 0x1

    if-ne p4, v4, :cond_3

    .line 107
    new-instance v4, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-direct {v4, v0, p0}, Landroid/text/method/PasswordTransformationMethod$Visible;-><init>(Landroid/text/Spannable;Landroid/text/method/PasswordTransformationMethod;)V

    add-int v5, p2, p4

    const/16 v6, 0x21

    invoke-interface {v0, v4, p2, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 113
    .end local v0    # "sp":Landroid/text/Spannable;
    .end local v1    # "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "pref":I
    :cond_3
    return-void
.end method

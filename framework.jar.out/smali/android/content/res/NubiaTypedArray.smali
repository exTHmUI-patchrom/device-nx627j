.class public Landroid/content/res/NubiaTypedArray;
.super Landroid/content/res/TypedArray;
.source "NubiaTypedArray.java"


# instance fields
.field private mIsNubiaResources:Z


# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "data"    # [I
    .param p3, "indices"    # [I
    .param p4, "len"    # I

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    .line 9
    invoke-virtual {p0}, Landroid/content/res/NubiaTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Landroid/content/res/NubiaResources;

    iput-boolean v0, p0, Landroid/content/res/NubiaTypedArray;->mIsNubiaResources:Z

    .line 13
    return-void
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "index"    # I

    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "str":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Landroid/content/res/NubiaTypedArray;->mIsNubiaResources:Z

    if-eqz v1, :cond_0

    .line 18
    iget-object v1, p0, Landroid/content/res/NubiaTypedArray;->mData:[I

    add-int/lit8 v2, p1, 0x0

    aget v1, v1, v2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 19
    iget-object v1, p0, Landroid/content/res/NubiaTypedArray;->mData:[I

    add-int/lit8 v2, p1, 0x3

    aget v1, v1, v2

    .line 20
    .local v1, "id":I
    invoke-virtual {p0}, Landroid/content/res/NubiaTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    check-cast v2, Landroid/content/res/NubiaResources;

    .line 21
    invoke-virtual {v2, v1}, Landroid/content/res/NubiaResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 24
    .end local v1    # "id":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 30
    mul-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0}, Landroid/content/res/NubiaTypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 32
    .local v0, "value":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 34
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I

    .line 39
    mul-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0}, Landroid/content/res/NubiaTypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 41
    .local v0, "value":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 42
    return-object v0

    .line 43
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

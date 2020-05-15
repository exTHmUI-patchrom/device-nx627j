.class final Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FasterStringBuilder"
.end annotation


# instance fields
.field private mChars:[C

.field private mLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 802
    return-void
.end method

.method private reserve(I)I
    .locals 7
    .param p1, "length"    # I

    .line 890
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 891
    .local v0, "oldLength":I
    iget v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v1, p1

    .line 892
    .local v1, "newLength":I
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 893
    .local v2, "oldChars":[C
    array-length v3, v2

    .line 894
    .local v3, "oldCapacity":I
    if-le v1, v3, :cond_0

    .line 895
    mul-int/lit8 v4, v3, 0x2

    .line 896
    .local v4, "newCapacity":I
    new-array v5, v4, [C

    .line 897
    .local v5, "newChars":[C
    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 898
    iput-object v5, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 900
    .end local v4    # "newCapacity":I
    .end local v5    # "newChars":[C
    :cond_0
    return v0
.end method


# virtual methods
.method public append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 5
    .param p1, "value"    # F
    .param p2, "precision"    # I

    .line 866
    const/4 v0, 0x1

    .line 867
    .local v0, "scale":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 868
    mul-int/lit8 v0, v0, 0xa

    .line 867
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    .end local v1    # "i":I
    :cond_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-float p1, v1

    .line 872
    float-to-int v1, p1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 874
    if-eqz p2, :cond_1

    .line 875
    const-string v1, "."

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 876
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 877
    float-to-double v1, p1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float p1, v1

    .line 878
    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 881
    :cond_1
    return-object p0
.end method

.method public append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1
    .param p1, "value"    # I

    .line 818
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 9
    .param p1, "value"    # I
    .param p2, "zeroPadWidth"    # I

    .line 822
    const/4 v0, 0x1

    if-gez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 823
    .local v1, "negative":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 824
    neg-int p1, p1

    .line 825
    if-gez p1, :cond_1

    .line 826
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 827
    return-object p0

    .line 831
    :cond_1
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v2

    .line 832
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 834
    .local v3, "chars":[C
    const/16 v4, 0x30

    if-nez p1, :cond_2

    .line 835
    add-int/lit8 v5, v2, 0x1

    .local v5, "index":I
    aput-char v4, v3, v2

    .line 836
    .end local v2    # "index":I
    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 837
    return-object p0

    .line 840
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_2
    if-eqz v1, :cond_3

    .line 841
    add-int/lit8 v0, v2, 0x1

    .local v0, "index":I
    const/16 v5, 0x2d

    aput-char v5, v3, v2

    .end local v2    # "index":I
    goto :goto_1

    .line 844
    .end local v0    # "index":I
    .restart local v2    # "index":I
    :cond_3
    move v0, v2

    .end local v2    # "index":I
    .restart local v0    # "index":I
    :goto_1
    const v2, 0x3b9aca00

    .line 845
    .local v2, "divisor":I
    const/16 v5, 0xa

    move v6, v0

    move v0, v5

    .line 846
    .local v0, "numberWidth":I
    .local v6, "index":I
    :cond_4
    :goto_2
    if-ge p1, v2, :cond_5

    .line 847
    div-int/lit8 v2, v2, 0xa

    .line 848
    add-int/lit8 v0, v0, -0x1

    .line 849
    if-ge v0, p2, :cond_4

    .line 850
    add-int/lit8 v7, v6, 0x1

    .local v7, "index":I
    aput-char v4, v3, v6

    .line 845
    .end local v6    # "index":I
    move v6, v7

    goto :goto_2

    .line 855
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_5
    :goto_3
    div-int v4, p1, v2

    .line 856
    .local v4, "digit":I
    mul-int v7, v4, v2

    sub-int/2addr p1, v7

    .line 857
    div-int/2addr v2, v5

    .line 858
    add-int/lit8 v7, v6, 0x1

    .restart local v7    # "index":I
    add-int/lit8 v8, v4, 0x30

    int-to-char v8, v8

    aput-char v8, v3, v6

    .line 859
    .end local v4    # "digit":I
    .end local v6    # "index":I
    if-nez v2, :cond_6

    .line 861
    iput v7, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 862
    return-object p0

    .line 855
    :cond_6
    move v6, v7

    goto :goto_3
.end method

.method public append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 810
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 811
    .local v0, "valueLength":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v1

    .line 812
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 813
    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 814
    return-object p0
.end method

.method public clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1

    .line 805
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 806
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 886
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

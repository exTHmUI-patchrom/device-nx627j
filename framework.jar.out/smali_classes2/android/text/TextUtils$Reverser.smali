.class Landroid/text/TextUtils$Reverser;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reverser"
.end annotation


# instance fields
.field private mEnd:I

.field private mSource:Ljava/lang/CharSequence;

.field private mStart:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p1, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    .line 573
    iput p2, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    .line 574
    iput p3, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    .line 575
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "off"    # I

    .line 594
    iget-object v0, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public getChars(II[CI)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .line 599
    iget-object v0, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 601
    sub-int v0, p2, p1

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    .line 603
    sub-int v0, p2, p1

    .line 604
    .local v0, "len":I
    sub-int v2, p2, p1

    div-int/lit8 v2, v2, 0x2

    .line 605
    .local v2, "n":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 606
    add-int v3, p4, v1

    aget-char v3, p3, v3

    .line 608
    .local v3, "tmp":C
    add-int v4, p4, v1

    add-int v5, p4, v0

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-char v5, p3, v5

    aput-char v5, p3, v4

    .line 609
    add-int v4, p4, v0

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aput-char v3, p3, v4

    .line 605
    .end local v3    # "tmp":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public length()I
    .locals 2

    .line 578
    iget v0, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 582
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 584
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/TextUtils$Reverser;->getChars(II[CI)V

    .line 585
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 590
    invoke-virtual {p0}, Landroid/text/TextUtils$Reverser;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/text/TextUtils$Reverser;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

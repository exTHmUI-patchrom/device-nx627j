.class public Landroid/app/assist/AssistStructure$ViewNode;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewNode"
.end annotation


# static fields
.field static final FLAGS_ACCESSIBILITY_FOCUSED:I = 0x1000

.field static final FLAGS_ACTIVATED:I = 0x2000

.field static final FLAGS_ALL_CONTROL:I = -0x100000

.field static final FLAGS_ASSIST_BLOCKED:I = 0x80

.field static final FLAGS_CHECKABLE:I = 0x100

.field static final FLAGS_CHECKED:I = 0x200

.field static final FLAGS_CLICKABLE:I = 0x400

.field static final FLAGS_CONTEXT_CLICKABLE:I = 0x4000

.field static final FLAGS_DISABLED:I = 0x1

.field static final FLAGS_FOCUSABLE:I = 0x10

.field static final FLAGS_FOCUSED:I = 0x20

.field static final FLAGS_HAS_ALPHA:I = 0x20000000

.field static final FLAGS_HAS_AUTOFILL_DATA:I = -0x80000000

.field static final FLAGS_HAS_CHILDREN:I = 0x100000

.field static final FLAGS_HAS_COMPLEX_TEXT:I = 0x800000

.field static final FLAGS_HAS_CONTENT_DESCRIPTION:I = 0x2000000

.field static final FLAGS_HAS_ELEVATION:I = 0x10000000

.field static final FLAGS_HAS_EXTRAS:I = 0x400000

.field static final FLAGS_HAS_ID:I = 0x200000

.field static final FLAGS_HAS_INPUT_TYPE:I = 0x40000

.field static final FLAGS_HAS_LARGE_COORDS:I = 0x4000000

.field static final FLAGS_HAS_LOCALE_LIST:I = 0x10000

.field static final FLAGS_HAS_MATRIX:I = 0x40000000

.field static final FLAGS_HAS_SCROLL:I = 0x8000000

.field static final FLAGS_HAS_TEXT:I = 0x1000000

.field static final FLAGS_HAS_URL:I = 0x80000

.field static final FLAGS_LONG_CLICKABLE:I = 0x800

.field static final FLAGS_OPAQUE:I = 0x8000

.field static final FLAGS_SELECTED:I = 0x40

.field static final FLAGS_VISIBILITY_MASK:I = 0xc

.field public static final TEXT_COLOR_UNDEFINED:I = 0x1

.field public static final TEXT_STYLE_BOLD:I = 0x1

.field public static final TEXT_STYLE_ITALIC:I = 0x2

.field public static final TEXT_STYLE_STRIKE_THRU:I = 0x8

.field public static final TEXT_STYLE_UNDERLINE:I = 0x4


# instance fields
.field mAlpha:F

.field mAutofillHints:[Ljava/lang/String;

.field mAutofillId:Landroid/view/autofill/AutofillId;

.field mAutofillOptions:[Ljava/lang/CharSequence;

.field mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

.field mAutofillType:I

.field mAutofillValue:Landroid/view/autofill/AutofillValue;

.field mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

.field mClassName:Ljava/lang/String;

.field mContentDescription:Ljava/lang/CharSequence;

.field mElevation:F

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field mHeight:I

.field mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

.field mId:I

.field mIdEntry:Ljava/lang/String;

.field mIdPackage:Ljava/lang/String;

.field mIdType:Ljava/lang/String;

.field mImportantForAutofill:I

.field mInputType:I

.field mLocaleList:Landroid/os/LocaleList;

.field mMatrix:Landroid/graphics/Matrix;

.field mMaxEms:I

.field mMaxLength:I

.field mMinEms:I

.field mSanitized:Z

.field mScrollX:I

.field mScrollY:I

.field mText:Landroid/app/assist/AssistStructure$ViewNodeText;

.field mTextIdEntry:Ljava/lang/String;

.field mWebDomain:Ljava/lang/String;

.field mWebScheme:Ljava/lang/String;

.field mWidth:I

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 631
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 637
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    .line 638
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    .line 639
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    .line 655
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 708
    return-void
.end method

.method constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V
    .locals 8
    .param p1, "reader"    # Landroid/app/assist/AssistStructure$ParcelTransferReader;
    .param p2, "nestingLevel"    # I

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 631
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 637
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    .line 638
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    .line 639
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    .line 655
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 711
    const v2, 0x22222222

    invoke-virtual {p1, v2, p2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v2

    .line 712
    .local v2, "in":Landroid/os/Parcel;
    iget v3, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    .line 713
    iget-object v3, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    .line 714
    .local v3, "preader":Landroid/os/PooledStringReader;
    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    .line 715
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 716
    iget v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 717
    .local v5, "flags":I
    const/high16 v6, 0x200000

    and-int/2addr v6, v5

    if-eqz v6, :cond_0

    .line 718
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 719
    iget v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eq v6, v0, :cond_0

    .line 720
    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    .line 721
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    .line 723
    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    .line 728
    :cond_0
    const/high16 v0, -0x80000000

    and-int/2addr v0, v5

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    .line 729
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    .line 730
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 731
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 732
    invoke-virtual {v2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    .line 733
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillValue;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 734
    invoke-virtual {v2}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    .line 735
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 736
    .local v0, "p":Landroid/os/Parcelable;
    instance-of v7, v0, Landroid/view/ViewStructure$HtmlInfo;

    if-eqz v7, :cond_2

    .line 737
    move-object v7, v0

    check-cast v7, Landroid/view/ViewStructure$HtmlInfo;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    .line 739
    :cond_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    .line 740
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    .line 741
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    .line 742
    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    .line 743
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    .line 745
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_3
    const/high16 v0, 0x4000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_4

    .line 746
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 747
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 748
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 749
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    goto :goto_1

    .line 751
    :cond_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 752
    .local v0, "val":I
    and-int/lit16 v7, v0, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 753
    shr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 754
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 755
    and-int/lit16 v7, v0, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 756
    shr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    .line 758
    .end local v0    # "val":I
    :goto_1
    const/high16 v0, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_5

    .line 759
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    .line 760
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    .line 762
    :cond_5
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v5

    if-eqz v0, :cond_6

    .line 763
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    .line 764
    iget-object v0, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 765
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->setValues([F)V

    .line 767
    :cond_6
    const/high16 v0, 0x10000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_7

    .line 768
    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    .line 770
    :cond_7
    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_8

    .line 771
    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 773
    :cond_8
    const/high16 v0, 0x2000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_9

    .line 774
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    .line 776
    :cond_9
    const/high16 v0, 0x1000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_b

    .line 777
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v7, 0x800000

    and-int/2addr v7, v5

    if-nez v7, :cond_a

    goto :goto_2

    :cond_a
    move v4, v1

    :goto_2
    invoke-direct {v0, v2, v4}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>(Landroid/os/Parcel;Z)V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 779
    :cond_b
    const/high16 v0, 0x40000

    and-int/2addr v0, v5

    if-eqz v0, :cond_c

    .line 780
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    .line 782
    :cond_c
    const/high16 v0, 0x80000

    and-int/2addr v0, v5

    if-eqz v0, :cond_d

    .line 783
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    .line 784
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    .line 786
    :cond_d
    const/high16 v0, 0x10000

    and-int/2addr v0, v5

    if-eqz v0, :cond_e

    .line 787
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    .line 789
    :cond_e
    const/high16 v0, 0x400000

    and-int/2addr v0, v5

    if-eqz v0, :cond_f

    .line 790
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    .line 792
    :cond_f
    const/high16 v0, 0x100000

    and-int/2addr v0, v5

    if-eqz v0, :cond_10

    .line 793
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 798
    .local v0, "NCHILDREN":I
    new-array v4, v0, [Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    .line 799
    nop

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_10

    .line 800
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v6, Landroid/app/assist/AssistStructure$ViewNode;

    add-int/lit8 v7, p2, 0x1

    invoke-direct {v6, p1, v7}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    aput-object v6, v4, v1

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 803
    .end local v0    # "NCHILDREN":I
    .end local v1    # "i":I
    :cond_10
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 1174
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return v0
.end method

.method public getAutofillHints()[Ljava/lang/String;
    .locals 1

    .line 1027
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getAutofillId()Landroid/view/autofill/AutofillId;
    .locals 1

    .line 1001
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getAutofillOptions()[Ljava/lang/CharSequence;
    .locals 1

    .line 1061
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    .line 1013
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .line 1040
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method public getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1
    .param p1, "index"    # I

    .line 1505
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 1497
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1282
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1290
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .line 1162
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1490
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1138
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .line 1483
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHtmlInfo()Landroid/view/ViewStructure$HtmlInfo;
    .locals 1

    .line 1349
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 962
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    return v0
.end method

.method public getIdEntry()Ljava/lang/String;
    .locals 1

    .line 989
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getIdPackage()Ljava/lang/String;
    .locals 1

    .line 971
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()Ljava/lang/String;
    .locals 1

    .line 980
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    return-object v0
.end method

.method public getImportantForAutofill()I
    .locals 1

    .line 1548
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .line 1070
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 1101
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    return v0
.end method

.method public getLocaleList()Landroid/os/LocaleList;
    .locals 1

    .line 1356
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getMaxTextEms()I
    .locals 1

    .line 1527
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    return v0
.end method

.method public getMaxTextLength()I
    .locals 1

    .line 1538
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    return v0
.end method

.method public getMinTextEms()I
    .locals 1

    .line 1516
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .line 1116
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 1124
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1364
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextBackgroundColor()I
    .locals 1

    .line 1410
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1396
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getTextIdEntry()Ljava/lang/String;
    .locals 1

    .line 1475
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getTextLineBaselines()[I
    .locals 1

    .line 1464
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextLineCharOffsets()[I
    .locals 1

    .line 1451
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    .line 1386
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTextSelectionStart()I
    .locals 1

    .line 1374
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 1423
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTextStyle()I
    .locals 1

    .line 1438
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTop()I
    .locals 1

    .line 1108
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    return v0
.end method

.method public getTransformation()Landroid/graphics/Matrix;
    .locals 1

    .line 1150
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 1182
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getWebDomain()Ljava/lang/String;
    .locals 1

    .line 1307
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getWebScheme()Ljava/lang/String;
    .locals 1

    .line 1336
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1131
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    .line 1226
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivated()Z
    .locals 1

    .line 1254
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAssistBlocked()Z
    .locals 1

    .line 1189
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 1233
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1240
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClickable()Z
    .locals 1

    .line 1203
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContextClickable()Z
    .locals 1

    .line 1273
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 1196
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFocusable()Z
    .locals 1

    .line 1210
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 1218
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    .line 1266
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpaque()Z
    .locals 2

    .line 1260
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSanitized()Z
    .locals 1

    .line 1075
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1247
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V
    .locals 0
    .param p1, "overlay"    # Landroid/app/assist/AssistStructure$AutofillOverlay;

    .line 1045
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    .line 1046
    return-void
.end method

.method public setWebDomain(Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .line 1314
    if-nez p1, :cond_0

    return-void

    .line 1316
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1317
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 1319
    const-string v1, "AssistStructure"

    const-string v2, "Failed to parse web domain"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    return-void

    .line 1322
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    .line 1323
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    .line 1324
    return-void
.end method

.method public updateAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .locals 2
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 1088
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 1089
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-nez v0, :cond_0

    .line 1091
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 1093
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 1095
    :cond_1
    return-void
.end method

.method writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Z[F)I
    .locals 23
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p3, "sanitizeOnWrite"    # Z
    .param p4, "tmpMatrix"    # [F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 808
    move-object/from16 v3, p4

    const/4 v4, 0x1

    .line 810
    .local v4, "writeSensitive":Z
    iget v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v6, 0xfffff

    and-int/2addr v5, v6

    .line 812
    .local v5, "flags":I
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/high16 v7, 0x200000

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 813
    or-int/2addr v5, v7

    .line 815
    :cond_0
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    const/high16 v9, -0x80000000

    if-eqz v6, :cond_1

    .line 816
    or-int/2addr v5, v9

    .line 818
    :cond_1
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    and-int/lit16 v6, v6, -0x8000

    const/high16 v10, 0x4000000

    const/4 v12, 0x0

    if-nez v6, :cond_4

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    and-int/lit16 v6, v6, -0x8000

    if-nez v6, :cond_4

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    and-int/lit16 v6, v6, -0x8000

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move v6, v12

    :goto_0
    iget v13, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    and-int/lit16 v13, v13, -0x8000

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    move v13, v12

    :goto_1
    or-int/2addr v6, v13

    if-eqz v6, :cond_5

    .line 820
    :cond_4
    or-int/2addr v5, v10

    .line 822
    :cond_5
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    const/high16 v13, 0x8000000

    if-nez v6, :cond_6

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    if-eqz v6, :cond_7

    .line 823
    :cond_6
    or-int/2addr v5, v13

    .line 825
    :cond_7
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v6, :cond_8

    .line 826
    or-int/2addr v5, v14

    .line 828
    :cond_8
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    const/4 v15, 0x0

    cmpl-float v6, v6, v15

    const/high16 v15, 0x10000000

    if-eqz v6, :cond_9

    .line 829
    or-int/2addr v5, v15

    .line 831
    :cond_9
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v16

    const/high16 v16, 0x20000000

    if-eqz v6, :cond_a

    .line 832
    or-int v5, v5, v16

    .line 834
    :cond_a
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    const/high16 v17, 0x2000000

    if-eqz v6, :cond_b

    .line 835
    or-int v5, v5, v17

    .line 837
    :cond_b
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v18, 0x800000

    const/high16 v19, 0x1000000

    if-eqz v6, :cond_c

    .line 838
    or-int v5, v5, v19

    .line 839
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {v6}, Landroid/app/assist/AssistStructure$ViewNodeText;->isSimple()Z

    move-result v6

    if-nez v6, :cond_c

    .line 840
    or-int v5, v5, v18

    .line 843
    :cond_c
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    const/high16 v20, 0x40000

    if-eqz v6, :cond_d

    .line 844
    or-int v5, v5, v20

    .line 846
    :cond_d
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    if-nez v6, :cond_e

    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 847
    :cond_e
    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    .line 849
    :cond_f
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v6, :cond_10

    .line 850
    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    .line 852
    :cond_10
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    if-eqz v6, :cond_11

    .line 853
    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    .line 855
    :cond_11
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v6, :cond_12

    .line 856
    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    .line 859
    :cond_12
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 861
    move v6, v5

    .line 862
    .local v6, "writtenFlags":I
    and-int v21, v5, v9

    if-eqz v21, :cond_14

    iget-boolean v11, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v11, :cond_13

    if-nez p3, :cond_14

    .line 864
    :cond_13
    and-int/lit16 v6, v5, -0x201

    .line 866
    :cond_14
    iget-object v11, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v11, :cond_16

    .line 867
    iget-object v11, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-boolean v11, v11, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v11, :cond_15

    .line 868
    or-int/lit8 v6, v6, 0x20

    goto :goto_2

    .line 870
    :cond_15
    and-int/lit8 v6, v6, -0x21

    .line 874
    :cond_16
    :goto_2
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    and-int/2addr v7, v5

    if-eqz v7, :cond_17

    .line 876
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eq v7, v8, :cond_17

    .line 878
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 879
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v7, :cond_17

    .line 880
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 881
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 886
    :cond_17
    and-int v7, v5, v9

    if-eqz v7, :cond_1d

    .line 887
    iget-boolean v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v7, :cond_19

    if-nez p3, :cond_18

    goto :goto_3

    :cond_18
    move v7, v12

    goto :goto_4

    :cond_19
    :goto_3
    const/4 v7, 0x1

    :goto_4
    move v4, v7

    .line 888
    iget-boolean v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v7, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 890
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 893
    if-eqz v4, :cond_1a

    .line 894
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .local v7, "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :goto_5
    goto :goto_6

    .line 895
    .end local v7    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_1a
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v7, :cond_1b

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-object v7, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    if-eqz v7, :cond_1b

    .line 896
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-object v7, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    goto :goto_5

    .line 898
    :cond_1b
    const/4 v7, 0x0

    .line 900
    .restart local v7    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :goto_6
    invoke-virtual {v1, v7, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 901
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 902
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    instance-of v8, v8, Landroid/os/Parcelable;

    if-eqz v8, :cond_1c

    .line 903
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v1, v8, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_7

    .line 905
    :cond_1c
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 907
    :goto_7
    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 911
    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    .end local v7    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_1d
    and-int v7, v5, v10

    if-eqz v7, :cond_1e

    .line 914
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 919
    :cond_1e
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    :goto_8
    and-int v7, v5, v13

    if-eqz v7, :cond_1f

    .line 923
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    :cond_1f
    and-int v7, v5, v14

    if-eqz v7, :cond_20

    .line 927
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 928
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 930
    :cond_20
    and-int v7, v5, v15

    if-eqz v7, :cond_21

    .line 931
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 933
    :cond_21
    and-int v7, v5, v16

    if-eqz v7, :cond_22

    .line 934
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 936
    :cond_22
    and-int v7, v5, v17

    if-eqz v7, :cond_23

    .line 937
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v7, v1, v12}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 939
    :cond_23
    and-int v7, v5, v19

    if-eqz v7, :cond_25

    .line 940
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    and-int v8, v5, v18

    if-nez v8, :cond_24

    const/4 v8, 0x1

    goto :goto_9

    :cond_24
    move v8, v12

    :goto_9
    invoke-virtual {v7, v1, v8, v4}, Landroid/app/assist/AssistStructure$ViewNodeText;->writeToParcel(Landroid/os/Parcel;ZZ)V

    .line 942
    :cond_25
    and-int v7, v5, v20

    if-eqz v7, :cond_26

    .line 943
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    :cond_26
    const/high16 v7, 0x80000

    and-int/2addr v7, v5

    if-eqz v7, :cond_27

    .line 946
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 947
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 949
    :cond_27
    const/high16 v7, 0x10000

    and-int/2addr v7, v5

    if-eqz v7, :cond_28

    .line 950
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v7, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 952
    :cond_28
    const/high16 v7, 0x400000

    and-int/2addr v7, v5

    if-eqz v7, :cond_29

    .line 953
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 955
    :cond_29
    return v5
.end method

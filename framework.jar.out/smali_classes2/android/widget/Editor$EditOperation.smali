.class public Landroid/widget/Editor$EditOperation;
.super Landroid/content/UndoOperation;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/UndoOperation<",
        "Landroid/widget/Editor;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Landroid/widget/Editor$EditOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_DELETE:I = 0x1

.field private static final TYPE_INSERT:I = 0x0

.field private static final TYPE_REPLACE:I = 0x2


# instance fields
.field private mFrozen:Z

.field private mIsComposition:Z

.field private mNewCursorPos:I

.field private mNewText:Ljava/lang/String;

.field private mOldCursorPos:I

.field private mOldText:Ljava/lang/String;

.field private mStart:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6848
    new-instance v0, Landroid/widget/Editor$EditOperation$1;

    invoke-direct {v0}, Landroid/widget/Editor$EditOperation$1;-><init>()V

    sput-object v0, Landroid/widget/Editor$EditOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 6612
    invoke-direct {p0, p1, p2}, Landroid/content/UndoOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 6613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 6614
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 6615
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 6616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 6617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 6618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 6619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    .line 6620
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 6621
    return-void
.end method

.method public constructor <init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "oldText"    # Ljava/lang/String;
    .param p3, "dstart"    # I
    .param p4, "newText"    # Ljava/lang/String;
    .param p5, "isComposition"    # Z

    .line 6591
    invoke-static {p1}, Landroid/widget/Editor;->access$8400(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/UndoOperation;-><init>(Landroid/content/UndoOwner;)V

    .line 6592
    iput-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 6593
    iput-object p4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 6596
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 6597
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    goto :goto_0

    .line 6598
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 6599
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    goto :goto_0

    .line 6601
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 6604
    :goto_0
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 6606
    invoke-static {p1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 6607
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 6608
    iput-boolean p5, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 6609
    return-void
.end method

.method static synthetic access$8102(Landroid/widget/Editor$EditOperation;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$EditOperation;
    .param p1, "x1"    # Z

    .line 6570
    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    return p1
.end method

.method static synthetic access$8200(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$EditOperation;

    .line 6570
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8300(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$EditOperation;

    .line 6570
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8500(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$EditOperation;
    .param p1, "x1"    # Landroid/widget/Editor$EditOperation;

    .line 6570
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    return v0
.end method

.method private getNewTextEnd()I
    .locals 2

    .line 6636
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getOldTextEnd()I
    .locals 2

    .line 6640
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 1

    .line 6824
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 6832
    const-string v0, ""

    return-object v0

    .line 6830
    :pswitch_0
    const-string/jumbo v0, "replace"

    return-object v0

    .line 6828
    :pswitch_1
    const-string v0, "delete"

    return-object v0

    .line 6826
    :pswitch_2
    const-string v0, "insert"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 4
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .line 6720
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 6721
    return v1

    .line 6724
    :cond_0
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 6725
    return v1

    .line 6727
    :cond_1
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 6728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 6729
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 6730
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 6731
    return v2
.end method

.method private mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 6
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .line 6694
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 6696
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-eq v0, v3, :cond_0

    .line 6697
    return v2

    .line 6699
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 6700
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 6701
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    .line 6702
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 6703
    return v1

    .line 6705
    :cond_1
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-gt v0, v3, :cond_2

    .line 6706
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 6708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v4, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 6709
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    iget v4, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 6710
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 6711
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 6712
    return v1

    .line 6714
    :cond_2
    return v2
.end method

.method private mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 6
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .line 6735
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    iget v2, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-ne v0, v2, :cond_0

    .line 6737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 6738
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 6739
    return v1

    .line 6741
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 6742
    return v2

    .line 6744
    :cond_1
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-gt v0, v3, :cond_3

    .line 6745
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 6747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v4, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 6748
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    iget v4, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 6749
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6750
    iput v1, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 6752
    :cond_2
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 6753
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 6754
    return v1

    .line 6756
    :cond_3
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget-object v3, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 6757
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6759
    iget-object v0, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 6760
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 6761
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 6762
    return v1

    .line 6764
    :cond_4
    return v2
.end method

.method private mergeWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 2
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .line 6677
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6678
    return v1

    .line 6681
    :cond_0
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 6689
    return v1

    .line 6687
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    return v0

    .line 6685
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    return v0

    .line 6683
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "deleteFrom"    # I
    .param p2, "deleteTo"    # I
    .param p3, "newText"    # Ljava/lang/CharSequence;
    .param p4, "newTextInsertAt"    # I
    .param p5, "newCursorPos"    # I

    .line 6806
    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->access$8600(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6807
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    if-gt p4, v0, :cond_1

    .line 6808
    if-eq p1, p2, :cond_0

    .line 6809
    invoke-interface {p0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 6811
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 6812
    invoke-interface {p0, p4, p3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 6818
    :cond_1
    if-ltz p5, :cond_2

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt p5, v0, :cond_2

    .line 6819
    invoke-static {p0, p5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6821
    :cond_2
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 0

    .line 6645
    return-void
.end method

.method public forceMergeWith(Landroid/widget/Editor$EditOperation;)V
    .locals 11
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .line 6773
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6774
    return-void

    .line 6776
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    .line 6782
    .local v0, "editor":Landroid/widget/Editor;
    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 6783
    .local v1, "editable":Landroid/text/Editable;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6786
    .local v2, "originalText":Landroid/text/Editable;
    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    iget v8, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v9, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    move-object v4, v2

    invoke-static/range {v4 .. v9}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 6789
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6790
    .local v3, "finalText":Landroid/text/Editable;
    iget v6, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v7

    iget-object v8, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v9, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v10, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    move-object v5, v3

    invoke-static/range {v5 .. v10}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 6794
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 6795
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 6796
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 6797
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 6798
    iget v4, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v4, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 6799
    iget-boolean v4, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v4, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 6801
    return-void
.end method

.method public redo()V
    .locals 8

    .line 6660
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    .line 6661
    .local v0, "editor":Landroid/widget/Editor;
    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 6662
    .local v1, "text":Landroid/text/Editable;
    iget v3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v6, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v7, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 6663
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 6838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOldText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNewText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOldCursorPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNewCursorPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFrozen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsComposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public undo()V
    .locals 8

    .line 6651
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    .line 6652
    .local v0, "editor":Landroid/widget/Editor;
    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 6653
    .local v1, "text":Landroid/text/Editable;
    iget v3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    iget v6, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v7, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 6654
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6625
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6626
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6627
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6628
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6629
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6630
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6631
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6632
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6633
    return-void
.end method

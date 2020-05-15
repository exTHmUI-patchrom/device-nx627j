.class final Landroid/app/assist/AssistStructure$ViewNodeText;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewNodeText"
.end annotation


# instance fields
.field mHint:Ljava/lang/String;

.field mLineBaselines:[I

.field mLineCharOffsets:[I

.field mText:Ljava/lang/CharSequence;

.field mTextBackgroundColor:I

.field mTextColor:I

.field mTextSelectionEnd:I

.field mTextSelectionStart:I

.field mTextSize:F

.field mTextStyle:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    .line 436
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    .line 444
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Z)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "simple"    # Z

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    .line 436
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    .line 453
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    .line 457
    if-nez p2, :cond_0

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    .line 465
    :cond_0
    return-void
.end method


# virtual methods
.method isSimple()Z
    .locals 2

    .line 447
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method writeToParcel(Landroid/os/Parcel;ZZ)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "simple"    # Z
    .param p3, "writeSensitive"    # Z

    .line 468
    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 469
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 470
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    if-nez p2, :cond_1

    .line 473
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 477
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 478
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    :cond_1
    return-void
.end method

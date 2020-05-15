.class public final Landroid/view/textclassifier/TextClassification$Request;
.super Ljava/lang/Object;
.source "TextClassification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassification$Request$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassification$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDefaultLocales:Landroid/os/LocaleList;

.field private final mEndIndex:I

.field private final mReferenceTime:Ljava/time/ZonedDateTime;

.field private final mStartIndex:I

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 633
    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassification$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mText:Ljava/lang/CharSequence;

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mStartIndex:I

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mEndIndex:I

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    :goto_0
    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 652
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassification$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/textclassifier/TextClassification$1;

    .line 486
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassification$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "defaultLocales"    # Landroid/os/LocaleList;
    .param p5, "referenceTime"    # Ljava/time/ZonedDateTime;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request;->mText:Ljava/lang/CharSequence;

    .line 501
    iput p2, p0, Landroid/view/textclassifier/TextClassification$Request;->mStartIndex:I

    .line 502
    iput p3, p0, Landroid/view/textclassifier/TextClassification$Request;->mEndIndex:I

    .line 503
    iput-object p4, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    .line 504
    iput-object p5, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 505
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/view/textclassifier/TextClassification$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/os/LocaleList;
    .param p5, "x4"    # Ljava/time/ZonedDateTime;
    .param p6, "x5"    # Landroid/view/textclassifier/TextClassification$1;

    .line 486
    invoke-direct/range {p0 .. p5}, Landroid/view/textclassifier/TextClassification$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultLocales()Landroid/os/LocaleList;
    .locals 1

    .line 538
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 529
    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mEndIndex:I

    return v0
.end method

.method public getReferenceTime()Ljava/time/ZonedDateTime;
    .locals 1

    .line 547
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 521
    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mStartIndex:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 513
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 620
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mEndIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 627
    :cond_1
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_3

    .line 629
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 631
    :cond_3
    return-void
.end method

.class public final Landroid/view/textclassifier/TextLinks$Request;
.super Ljava/lang/Object;
.source "TextLinks.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLinks$Request$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextLinks$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallingPackageName:Ljava/lang/String;

.field private final mDefaultLocales:Landroid/os/LocaleList;

.field private final mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

.field private final mLegacyFallback:Z

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 476
    new-instance v0, Landroid/view/textclassifier/TextLinks$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLinks$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextLinks$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mText:Ljava/lang/CharSequence;

    .line 491
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
    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    .line 493
    goto :goto_1

    :cond_1
    sget-object v0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    :goto_1
    iput-object v1, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mLegacyFallback:Z

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mCallingPackageName:Ljava/lang/String;

    .line 496
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextLinks$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/textclassifier/TextLinks$1;

    .line 302
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextLinks$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultLocales"    # Landroid/os/LocaleList;
    .param p3, "entityConfig"    # Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .param p4, "legacyFallback"    # Z
    .param p5, "callingPackageName"    # Ljava/lang/String;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request;->mText:Ljava/lang/CharSequence;

    .line 317
    iput-object p2, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    .line 318
    iput-object p3, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 319
    iput-boolean p4, p0, Landroid/view/textclassifier/TextLinks$Request;->mLegacyFallback:Z

    .line 320
    iput-object p5, p0, Landroid/view/textclassifier/TextLinks$Request;->mCallingPackageName:Ljava/lang/String;

    .line 321
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/lang/String;Landroid/view/textclassifier/TextLinks$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Landroid/os/LocaleList;
    .param p3, "x2"    # Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Landroid/view/textclassifier/TextLinks$1;

    .line 302
    invoke-direct/range {p0 .. p5}, Landroid/view/textclassifier/TextLinks$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public getCallingPackageName()Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mCallingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultLocales()Landroid/os/LocaleList;
    .locals 1

    .line 337
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 1

    .line 346
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 328
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isLegacyFallback()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mLegacyFallback:Z

    return v0
.end method

.method setCallingPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "callingPackageName"    # Ljava/lang/String;

    .line 363
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request;->mCallingPackageName:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 464
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 469
    :cond_1
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    if-eqz v0, :cond_3

    .line 471
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 473
    :cond_3
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    return-void
.end method

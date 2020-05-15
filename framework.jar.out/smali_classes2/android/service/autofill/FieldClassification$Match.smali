.class public final Landroid/service/autofill/FieldClassification$Match;
.super Ljava/lang/Object;
.source "FieldClassification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FieldClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Match"
.end annotation


# instance fields
.field private final mCategoryId:Ljava/lang/String;

.field private final mScore:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p2, "score"    # F

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/FieldClassification$Match;->mCategoryId:Ljava/lang/String;

    .line 117
    iput p2, p0, Landroid/service/autofill/FieldClassification$Match;->mScore:F

    .line 118
    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/FieldClassification$Match;)F
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/FieldClassification$Match;

    .line 109
    iget v0, p0, Landroid/service/autofill/FieldClassification$Match;->mScore:F

    return v0
.end method

.method static synthetic access$100(Landroid/service/autofill/FieldClassification$Match;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/autofill/FieldClassification$Match;
    .param p1, "x1"    # Landroid/os/Parcel;

    .line 109
    invoke-direct {p0, p1}, Landroid/service/autofill/FieldClassification$Match;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$200(Landroid/os/Parcel;)Landroid/service/autofill/FieldClassification$Match;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .line 109
    invoke-static {p0}, Landroid/service/autofill/FieldClassification$Match;->readFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FieldClassification$Match;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FieldClassification$Match;
    .locals 3
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 163
    new-instance v0, Landroid/service/autofill/FieldClassification$Match;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/service/autofill/FieldClassification$Match;-><init>(Ljava/lang/String;F)V

    return-object v0
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 158
    iget-object v0, p0, Landroid/service/autofill/FieldClassification$Match;->mCategoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget v0, p0, Landroid/service/autofill/FieldClassification$Match;->mScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 160
    return-void
.end method


# virtual methods
.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Landroid/service/autofill/FieldClassification$Match;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()F
    .locals 1

    .line 145
    iget v0, p0, Landroid/service/autofill/FieldClassification$Match;->mScore:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 150
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Match: categoryId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "string":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/service/autofill/FieldClassification$Match;->mCategoryId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 154
    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/autofill/FieldClassification$Match;->mScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public final Landroid/service/autofill/UserData$Builder;
.super Ljava/lang/Object;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mAlgorithmArgs:Landroid/os/Bundle;

.field private final mCategoryIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private final mId:Ljava/lang/String;

.field private final mUniqueCategoryIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "categoryId"    # Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Landroid/service/autofill/UserData$Builder;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData$Builder;->mId:Ljava/lang/String;

    .line 183
    const-string v0, "categoryId"

    invoke-direct {p0, v0, p3}, Landroid/service/autofill/UserData$Builder;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    invoke-direct {p0, p2}, Landroid/service/autofill/UserData$Builder;->checkValidValue(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxUserDataSize()I

    move-result v0

    .line 186
    .local v0, "maxUserDataSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/service/autofill/UserData$Builder;->mCategoryIds:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    .line 188
    new-instance v1, Landroid/util/ArraySet;

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    .line 190
    invoke-direct {p0, p2, p3}, Landroid/service/autofill/UserData$Builder;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/UserData$Builder;

    .line 138
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/UserData$Builder;

    .line 138
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/autofill/UserData$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/UserData$Builder;

    .line 138
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mAlgorithmArgs:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/UserData$Builder;

    .line 138
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/UserData$Builder;

    .line 138
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "categoryId"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method private checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 271
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "%s cannot be empty"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 273
    return-object p2
.end method

.method private checkValidValue(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 277
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 279
    .local v0, "length":I
    invoke-static {}, Landroid/service/autofill/UserData;->getMinValueLength()I

    move-result v1

    .line 280
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxValueLength()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "value length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 281
    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    .line 299
    iget-boolean v0, p0, Landroid/service/autofill/UserData$Builder;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 302
    return-void

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Landroid/service/autofill/UserData$Builder;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "categoryId"    # Ljava/lang/String;

    .line 243
    invoke-direct {p0}, Landroid/service/autofill/UserData$Builder;->throwIfDestroyed()V

    .line 244
    const-string v0, "categoryId"

    invoke-direct {p0, v0, p2}, Landroid/service/autofill/UserData$Builder;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    invoke-direct {p0, p1}, Landroid/service/autofill/UserData$Builder;->checkValidValue(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already added "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    .line 250
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " unique category ids"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 254
    :cond_1
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v3, "already has entry with same value"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 257
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxUserDataSize()I

    move-result v3

    if-ge v0, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already added "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " elements"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 259
    invoke-direct {p0, p1, p2}, Landroid/service/autofill/UserData$Builder;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-object p0
.end method

.method public build()Landroid/service/autofill/UserData;
    .locals 2

    .line 293
    invoke-direct {p0}, Landroid/service/autofill/UserData$Builder;->throwIfDestroyed()V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/UserData$Builder;->mDestroyed:Z

    .line 295
    new-instance v0, Landroid/service/autofill/UserData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/UserData;-><init>(Landroid/service/autofill/UserData$Builder;Landroid/service/autofill/UserData$1;)V

    return-object v0
.end method

.method public setFieldClassificationAlgorithm(Ljava/lang/String;Landroid/os/Bundle;)Landroid/service/autofill/UserData$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 210
    invoke-direct {p0}, Landroid/service/autofill/UserData$Builder;->throwIfDestroyed()V

    .line 211
    iput-object p1, p0, Landroid/service/autofill/UserData$Builder;->mAlgorithm:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Landroid/service/autofill/UserData$Builder;->mAlgorithmArgs:Landroid/os/Bundle;

    .line 213
    return-object p0
.end method

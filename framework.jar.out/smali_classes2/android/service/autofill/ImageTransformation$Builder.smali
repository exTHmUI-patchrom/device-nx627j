.class public Landroid/service/autofill/ImageTransformation$Builder;
.super Ljava/lang/Object;
.source "ImageTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDestroyed:Z

.field private final mId:Landroid/view/autofill/AutofillId;

.field private final mOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/ImageTransformation$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;I)V
    .locals 1
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "regex"    # Ljava/util/regex/Pattern;
    .param p3, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    .line 130
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mId:Landroid/view/autofill/AutofillId;

    .line 131
    invoke-virtual {p0, p2, p3}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "regex"    # Ljava/util/regex/Pattern;
    .param p3, "resId"    # I
    .param p4, "contentDescription"    # Ljava/lang/CharSequence;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    .line 146
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mId:Landroid/view/autofill/AutofillId;

    .line 147
    invoke-virtual {p0, p2, p3, p4}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)Landroid/service/autofill/ImageTransformation$Builder;

    .line 148
    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/ImageTransformation$Builder;)Landroid/view/autofill/AutofillId;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/ImageTransformation$Builder;

    .line 111
    iget-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/autofill/ImageTransformation$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/ImageTransformation$Builder;

    .line 111
    iget-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addOptionInternal(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "regex"    # Ljava/util/regex/Pattern;
    .param p2, "resId"    # I
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;

    .line 186
    invoke-direct {p0}, Landroid/service/autofill/ImageTransformation$Builder;->throwIfDestroyed()V

    .line 188
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 191
    iget-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    new-instance v1, Landroid/service/autofill/ImageTransformation$Option;

    invoke-direct {v1, p1, p2, p3}, Landroid/service/autofill/ImageTransformation$Option;-><init>(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    .line 205
    iget-boolean v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Already called build()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 206
    return-void
.end method


# virtual methods
.method public addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;
    .locals 1
    .param p1, "regex"    # Ljava/util/regex/Pattern;
    .param p2, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/service/autofill/ImageTransformation$Builder;->addOptionInternal(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V

    .line 164
    return-object p0
.end method

.method public addOption(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)Landroid/service/autofill/ImageTransformation$Builder;
    .locals 1
    .param p1, "regex"    # Ljava/util/regex/Pattern;
    .param p2, "resId"    # I
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;

    .line 180
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, p1, p2, v0}, Landroid/service/autofill/ImageTransformation$Builder;->addOptionInternal(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V

    .line 181
    return-object p0
.end method

.method public build()Landroid/service/autofill/ImageTransformation;
    .locals 2

    .line 199
    invoke-direct {p0}, Landroid/service/autofill/ImageTransformation$Builder;->throwIfDestroyed()V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mDestroyed:Z

    .line 201
    new-instance v0, Landroid/service/autofill/ImageTransformation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/ImageTransformation;-><init>(Landroid/service/autofill/ImageTransformation$Builder;Landroid/service/autofill/ImageTransformation$1;)V

    return-object v0
.end method

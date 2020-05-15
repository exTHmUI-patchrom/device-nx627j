.class public Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodSubtype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodSubtypeBuilder"
.end annotation


# instance fields
.field private mIsAsciiCapable:Z

.field private mIsAuxiliary:Z

.field private mOverridesImplicitlyEnabledSubtype:Z

.field private mSubtypeExtraValue:Ljava/lang/String;

.field private mSubtypeIconResId:I

.field private mSubtypeId:I

.field private mSubtypeLanguageTag:Ljava/lang/String;

.field private mSubtypeLocale:Ljava/lang/String;

.field private mSubtypeMode:Ljava/lang/String;

.field private mSubtypeNameResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    .line 126
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    .line 138
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    .line 147
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    .line 159
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    .line 172
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    .line 181
    const-string v0, ""

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    .line 190
    const-string v0, ""

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 199
    const-string v0, ""

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 97
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    return v0
.end method

.method static synthetic access$1000(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 97
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # I

    .line 97
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    return p1
.end method

.method static synthetic access$200(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 97
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    return v0
.end method

.method static synthetic access$202(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # I

    .line 97
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    return p1
.end method

.method static synthetic access$300(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 97
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 97
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 97
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 97
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    return v0
.end method

.method static synthetic access$602(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # Z

    .line 97
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    return p1
.end method

.method static synthetic access$700(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 97
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    return v0
.end method

.method static synthetic access$702(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # Z

    .line 97
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    return p1
.end method

.method static synthetic access$800(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 97
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    return v0
.end method

.method static synthetic access$802(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # I

    .line 97
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    return p1
.end method

.method static synthetic access$900(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 97
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    return v0
.end method

.method static synthetic access$902(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # Z

    .line 97
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    return p1
.end method


# virtual methods
.method public build()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    .line 215
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Landroid/view/inputmethod/InputMethodSubtype$1;)V

    return-object v0
.end method

.method public setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "isAsciiCapable"    # Z

    .line 135
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    .line 136
    return-object p0
.end method

.method public setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "isAuxiliary"    # Z

    .line 109
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    .line 110
    return-object p0
.end method

.method public setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 1
    .param p1, "languageTag"    # Ljava/lang/String;

    .line 187
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public setOverridesImplicitlyEnabledSubtype(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "overridesImplicitlyEnabledSubtype"    # Z

    .line 123
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    .line 124
    return-object p0
.end method

.method public setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 1
    .param p1, "subtypeExtraValue"    # Ljava/lang/String;

    .line 206
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeIconResId"    # I

    .line 144
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    .line 145
    return-object p0
.end method

.method public setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeId"    # I

    .line 169
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    .line 170
    return-object p0
.end method

.method public setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 1
    .param p1, "subtypeLocale"    # Ljava/lang/String;

    .line 178
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 1
    .param p1, "subtypeMode"    # Ljava/lang/String;

    .line 196
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeNameResId"    # I

    .line 156
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    .line 157
    return-object p0
.end method

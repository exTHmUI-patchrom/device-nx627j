.class public Lcom/android/internal/app/LocaleStore$LocaleInfo;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocaleStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation


# static fields
.field private static final SUGGESTION_TYPE_CFG:I = 0x2

.field private static final SUGGESTION_TYPE_NONE:I = 0x0

.field private static final SUGGESTION_TYPE_SIM:I = 0x1


# instance fields
.field private mFullCountryNameNative:Ljava/lang/String;

.field private mFullNameNative:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private mIsChecked:Z

.field private mIsPseudo:Z

.field private mIsTranslated:Z

.field private mLangScriptKey:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private final mParent:Ljava/util/Locale;

.field private mSuggestionFlags:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "localeId"    # Ljava/lang/String;

    .line 64
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/internal/app/LocaleStore$1;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    .line 55
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    .line 58
    iput v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 59
    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Locale;
    .param p2, "x1"    # Lcom/android/internal/app/LocaleStore$1;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method static synthetic access$076(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p1, "x1"    # I

    .line 34
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 34
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 34
    invoke-direct {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLangScriptKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggestionOfType(I)Z

    move-result v0

    return v0
.end method

.method private getLangScriptKey()Ljava/lang/String;
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    .line 150
    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    const/16 v1, 0x75

    const-string v2, ""

    .line 151
    invoke-virtual {v0, v1, v2}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 153
    .local v0, "baseLocale":Ljava/util/Locale;
    invoke-static {v0}, Lcom/android/internal/app/LocaleHelper;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 154
    .local v1, "parentWithScript":Ljava/util/Locale;
    nop

    .line 155
    if-nez v1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    .line 159
    .end local v0    # "baseLocale":Ljava/util/Locale;
    .end local v1    # "parentWithScript":Ljava/util/Locale;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    return-object v0
.end method

.method private static getParent(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 68
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    .line 72
    invoke-virtual {v0, p0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    const-string v1, ""

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    const/16 v1, 0x75

    const-string v2, ""

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method private isSuggestionOfType(I)Z
    .locals 2
    .param p1, "suggestionMask"    # I

    .line 111
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    return v1

    .line 114
    :cond_0
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    return v0
.end method

.method getContentDescription(Z)Ljava/lang/String;
    .locals 1
    .param p1, "countryMode"    # Z

    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFullCountryNameInUiLanguage()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFullCountryNameNative()Ljava/lang/String;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    return-object v0
.end method

.method public getFullNameInUiLanguage()Ljava/lang/String;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullNameNative()Ljava/lang/String;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    const/4 v2, 0x1

    .line 120
    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method getLabel(Z)Ljava/lang/String;
    .locals 1
    .param p1, "countryMode"    # Z

    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameNative()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getParent()Ljava/util/Locale;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    return-object v0
.end method

.method isSuggested()Z
    .locals 2

    .line 104
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    return v1

    .line 107
    :cond_0
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isTranslated()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 183
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    .line 184
    return-void
.end method

.method public setTranslated(Z)V
    .locals 0
    .param p1, "isTranslated"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

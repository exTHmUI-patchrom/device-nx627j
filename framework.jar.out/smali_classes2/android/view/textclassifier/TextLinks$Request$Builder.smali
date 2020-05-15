.class public final Landroid/view/textclassifier/TextLinks$Request$Builder;
.super Ljava/lang/Object;
.source "TextLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCallingPackageName:Ljava/lang/String;

.field private mDefaultLocales:Landroid/os/LocaleList;

.field private mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

.field private mLegacyFallback:Z

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mLegacyFallback:Z

    .line 379
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mText:Ljava/lang/CharSequence;

    .line 380
    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextLinks$Request;
    .locals 8

    .line 440
    new-instance v7, Landroid/view/textclassifier/TextLinks$Request;

    iget-object v1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    iget-object v3, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    iget-boolean v4, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mLegacyFallback:Z

    iget-object v5, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mCallingPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/TextLinks$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/lang/String;Landroid/view/textclassifier/TextLinks$1;)V

    return-object v7
.end method

.method public setCallingPackageName(Ljava/lang/String;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .locals 0
    .param p1, "callingPackageName"    # Ljava/lang/String;

    .line 431
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mCallingPackageName:Ljava/lang/String;

    .line 432
    return-object p0
.end method

.method public setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .locals 0
    .param p1, "defaultLocales"    # Landroid/os/LocaleList;

    .line 390
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    .line 391
    return-object p0
.end method

.method public setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .locals 0
    .param p1, "entityConfig"    # Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 404
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 405
    return-object p0
.end method

.method public setLegacyFallback(Z)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .locals 0
    .param p1, "legacyFallback"    # Z

    .line 419
    iput-boolean p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mLegacyFallback:Z

    .line 420
    return-object p0
.end method

.class public final Landroid/view/textclassifier/TextLinks$Options;
.super Ljava/lang/Object;
.source "TextLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field private mApplyStrategy:I

.field private mCallingPackageName:Ljava/lang/String;

.field private mDefaultLocales:Landroid/os/LocaleList;

.field private mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

.field private mLegacyFallback:Z

.field private final mRequest:Landroid/view/textclassifier/TextLinks$Request;

.field private final mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private mSpanFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 656
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/textclassifier/TextLinks$Options;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;)V

    .line 657
    return-void
.end method

.method private constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextLinks$Request;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 662
    iput-object p2, p0, Landroid/view/textclassifier/TextLinks$Options;->mRequest:Landroid/view/textclassifier/TextLinks$Request;

    .line 663
    return-void
.end method

.method private static checkValidApplyStrategy(I)V
    .locals 2
    .param p0, "applyStrategy"    # I

    .line 750
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 751
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid apply strategy. See TextLinks.ApplyStrategy for options."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_1
    :goto_0
    return-void
.end method

.method public static from(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks$Options;
    .locals 2
    .param p0, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p1, "request"    # Landroid/view/textclassifier/TextLinks$Request;

    .line 667
    new-instance v0, Landroid/view/textclassifier/TextLinks$Options;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextLinks$Options;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;)V

    .line 668
    .local v0, "options":Landroid/view/textclassifier/TextLinks$Options;
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextLinks$Options;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextLinks$Options;

    .line 669
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextLinks$Options;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Options;

    .line 670
    return-object v0
.end method

.method public static fromLinkMask(I)Landroid/view/textclassifier/TextLinks$Options;
    .locals 3
    .param p0, "mask"    # I

    .line 675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v0, "entitiesToFind":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 678
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 681
    const-string v1, "email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 684
    const-string/jumbo v1, "phone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 687
    const-string v1, "address"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_3
    new-instance v1, Landroid/view/textclassifier/TextLinks$Options;

    invoke-direct {v1}, Landroid/view/textclassifier/TextLinks$Options;-><init>()V

    .line 691
    invoke-static {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->createWithEntityList(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v2

    .line 690
    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextLinks$Options;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Options;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getApplyStrategy()I
    .locals 1

    .line 731
    iget v0, p0, Landroid/view/textclassifier/TextLinks$Options;->mApplyStrategy:I

    return v0
.end method

.method public getDefaultLocales()Landroid/os/LocaleList;
    .locals 1

    .line 721
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Options;->mDefaultLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 1

    .line 726
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Options;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object v0
.end method

.method public getRequest()Landroid/view/textclassifier/TextLinks$Request;
    .locals 1

    .line 741
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Options;->mRequest:Landroid/view/textclassifier/TextLinks$Request;

    return-object v0
.end method

.method public getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;
    .locals 1

    .line 746
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Options;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    return-object v0
.end method

.method public getSpanFactory()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;"
        }
    .end annotation

    .line 736
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Options;->mSpanFactory:Ljava/util/function/Function;

    return-object v0
.end method

.method public setApplyStrategy(I)Landroid/view/textclassifier/TextLinks$Options;
    .locals 0
    .param p1, "applyStrategy"    # I

    .line 708
    invoke-static {p1}, Landroid/view/textclassifier/TextLinks$Options;->checkValidApplyStrategy(I)V

    .line 709
    iput p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mApplyStrategy:I

    .line 710
    return-object p0
.end method

.method public setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextLinks$Options;
    .locals 0
    .param p1, "defaultLocales"    # Landroid/os/LocaleList;

    .line 696
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mDefaultLocales:Landroid/os/LocaleList;

    .line 697
    return-object p0
.end method

.method public setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Options;
    .locals 0
    .param p1, "entityConfig"    # Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 702
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 703
    return-object p0
.end method

.method public setSpanFactory(Ljava/util/function/Function;)Landroid/view/textclassifier/TextLinks$Options;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;)",
            "Landroid/view/textclassifier/TextLinks$Options;"
        }
    .end annotation

    .line 715
    .local p1, "spanFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/view/textclassifier/TextLinks$TextLink;Landroid/view/textclassifier/TextLinks$TextLinkSpan;>;"
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mSpanFactory:Ljava/util/function/Function;

    .line 716
    return-object p0
.end method

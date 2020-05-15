.class public final Landroid/view/textclassifier/TextClassification$Builder;
.super Ljava/lang/Object;
.source "TextClassification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntityConfidence:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mLegacyIcon:Landroid/graphics/drawable/Drawable;

.field private mLegacyIntent:Landroid/content/Intent;

.field private mLegacyLabel:Ljava/lang/String;

.field private mLegacyOnClickListener:Landroid/view/View$OnClickListener;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActions:Ljava/util/List;

    .line 355
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mEntityConfidence:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/RemoteAction;

    .line 396
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 397
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    return-object p0
.end method

.method public build()Landroid/view/textclassifier/TextClassification;
    .locals 11

    .line 478
    new-instance v10, Landroid/view/textclassifier/TextClassification;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyLabel:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyIntent:Landroid/content/Intent;

    iget-object v5, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v6, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActions:Ljava/util/List;

    iget-object v7, p0, Landroid/view/textclassifier/TextClassification$Builder;->mEntityConfidence:Ljava/util/Map;

    iget-object v8, p0, Landroid/view/textclassifier/TextClassification$Builder;->mId:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/view/textclassifier/TextClassification;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Landroid/view/textclassifier/TextClassification$1;)V

    return-object v10
.end method

.method public setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "confidenceScore"    # F

    .line 385
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mEntityConfidence:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 413
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    .line 414
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 469
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mId:Ljava/lang/String;

    .line 470
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyIntent:Landroid/content/Intent;

    .line 445
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 429
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyLabel:Ljava/lang/String;

    .line 430
    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    .line 461
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 368
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mText:Ljava/lang/String;

    .line 369
    return-object p0
.end method

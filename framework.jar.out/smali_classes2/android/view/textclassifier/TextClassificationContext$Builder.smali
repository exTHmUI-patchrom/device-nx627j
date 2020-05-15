.class public final Landroid/view/textclassifier/TextClassificationContext$Builder;
.super Ljava/lang/Object;
.source "TextClassificationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassificationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mWidgetType:Ljava/lang/String;

.field private mWidgetVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetType"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mPackageName:Ljava/lang/String;

    .line 102
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetType:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextClassificationContext;
    .locals 5

    .line 122
    new-instance v0, Landroid/view/textclassifier/TextClassificationContext;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetType:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetVersion:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextClassificationContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/TextClassificationContext$1;)V

    return-object v0
.end method

.method public setWidgetVersion(Ljava/lang/String;)Landroid/view/textclassifier/TextClassificationContext$Builder;
    .locals 0
    .param p1, "widgetVersion"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetVersion:Ljava/lang/String;

    .line 112
    return-object p0
.end method

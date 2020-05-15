.class final Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;
.super Landroid/view/ViewStructure$HtmlInfo$Builder;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HtmlInfoNodeBuilder"
.end annotation


# instance fields
.field private mNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 2018
    invoke-direct {p0}, Landroid/view/ViewStructure$HtmlInfo$Builder;-><init>()V

    .line 2019
    iput-object p1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mTag:Ljava/lang/String;

    .line 2020
    return-void
.end method

.method static synthetic access$300(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;

    .line 2013
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;

    .line 2013
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;

    .line 2013
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mValues:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2024
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2025
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    .line 2026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mValues:Ljava/util/ArrayList;

    .line 2028
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2029
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2030
    return-object p0
.end method

.method public build()Landroid/app/assist/AssistStructure$HtmlInfoNode;
    .locals 2

    .line 2035
    new-instance v0, Landroid/app/assist/AssistStructure$HtmlInfoNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/assist/AssistStructure$HtmlInfoNode;-><init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;Landroid/app/assist/AssistStructure$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Landroid/view/ViewStructure$HtmlInfo;
    .locals 1

    .line 2013
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->build()Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object v0

    return-object v0
.end method

.class public Landroid/webkit/TracingConfig$Builder;
.super Ljava/lang/Object;
.source "TracingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/TracingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mCustomIncludedCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPredefinedCategories:I

.field private mTracingMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/TracingConfig$Builder;->mPredefinedCategories:I

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/TracingConfig$Builder;->mCustomIncludedCategories:Ljava/util/List;

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Landroid/webkit/TracingConfig$Builder;->mTracingMode:I

    .line 197
    return-void
.end method


# virtual methods
.method public addCategories(Ljava/util/Collection;)Landroid/webkit/TracingConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/TracingConfig$Builder;"
        }
    .end annotation

    .line 256
    .local p1, "categories":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/TracingConfig$Builder;->mCustomIncludedCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    return-object p0
.end method

.method public varargs addCategories([I)Landroid/webkit/TracingConfig$Builder;
    .locals 4
    .param p1, "predefinedCategories"    # [I

    .line 222
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 223
    .local v2, "categorySet":I
    iget v3, p0, Landroid/webkit/TracingConfig$Builder;->mPredefinedCategories:I

    or-int/2addr v3, v2

    iput v3, p0, Landroid/webkit/TracingConfig$Builder;->mPredefinedCategories:I

    .line 222
    .end local v2    # "categorySet":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    return-object p0
.end method

.method public varargs addCategories([Ljava/lang/String;)Landroid/webkit/TracingConfig$Builder;
    .locals 4
    .param p1, "categories"    # [Ljava/lang/String;

    .line 241
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 242
    .local v2, "category":Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/TracingConfig$Builder;->mCustomIncludedCategories:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v2    # "category":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_0
    return-object p0
.end method

.method public build()Landroid/webkit/TracingConfig;
    .locals 4

    .line 205
    new-instance v0, Landroid/webkit/TracingConfig;

    iget v1, p0, Landroid/webkit/TracingConfig$Builder;->mPredefinedCategories:I

    iget-object v2, p0, Landroid/webkit/TracingConfig$Builder;->mCustomIncludedCategories:Ljava/util/List;

    iget v3, p0, Landroid/webkit/TracingConfig$Builder;->mTracingMode:I

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/TracingConfig;-><init>(ILjava/util/List;I)V

    return-object v0
.end method

.method public setTracingMode(I)Landroid/webkit/TracingConfig$Builder;
    .locals 0
    .param p1, "tracingMode"    # I

    .line 269
    iput p1, p0, Landroid/webkit/TracingConfig$Builder;->mTracingMode:I

    .line 270
    return-object p0
.end method

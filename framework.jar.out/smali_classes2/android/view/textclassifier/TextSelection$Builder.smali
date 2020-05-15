.class public final Landroid/view/textclassifier/TextSelection$Builder;
.super Ljava/lang/Object;
.source "TextSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mEndIndex:I

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

.field private final mStartIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Ljava/util/Map;

    .line 131
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 132
    if-le p2, p1, :cond_1

    move v0, v1

    nop

    :cond_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 133
    iput p1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mStartIndex:I

    .line 134
    iput p2, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEndIndex:I

    .line 135
    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextSelection;
    .locals 7

    .line 167
    new-instance v6, Landroid/view/textclassifier/TextSelection;

    iget v1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mStartIndex:I

    iget v2, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEndIndex:I

    iget-object v3, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Ljava/util/Map;

    iget-object v4, p0, Landroid/view/textclassifier/TextSelection$Builder;->mId:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/TextSelection;-><init>(IILjava/util/Map;Ljava/lang/String;Landroid/view/textclassifier/TextSelection$1;)V

    return-object v6
.end method

.method public setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "confidenceScore"    # F

    .line 148
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 158
    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mId:Ljava/lang/String;

    .line 159
    return-object p0
.end method

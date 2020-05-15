.class final Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
.super Ljava/lang/Object;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SmartSelectSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RectangleWithTextSelectionLayout"
.end annotation


# instance fields
.field private final mRectangle:Landroid/graphics/RectF;

.field private final mTextSelectionLayout:I


# direct methods
.method constructor <init>(Landroid/graphics/RectF;I)V
    .locals 1
    .param p1, "rectangle"    # Landroid/graphics/RectF;
    .param p2, "textSelectionLayout"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mRectangle:Landroid/graphics/RectF;

    .line 79
    iput p2, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mTextSelectionLayout:I

    .line 80
    return-void
.end method


# virtual methods
.method public getRectangle()Landroid/graphics/RectF;
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mRectangle:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getTextSelectionLayout()I
    .locals 1

    .line 88
    iget v0, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mTextSelectionLayout:I

    return v0
.end method

.class public Landroid/accessibilityservice/GestureDescription$Builder;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;
    .locals 4
    .param p1, "strokeDescription"    # Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 175
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-static {v0}, Landroid/accessibilityservice/GestureDescription;->access$000(Ljava/util/List;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 187
    return-object p0

    .line 183
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Gesture would exceed maximum duration with new stroke"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to add too many strokes to a gesture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroid/accessibilityservice/GestureDescription;
    .locals 3

    .line 191
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Landroid/accessibilityservice/GestureDescription;

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;Landroid/accessibilityservice/GestureDescription$1;)V

    return-object v0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Gestures must have at least one stroke"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

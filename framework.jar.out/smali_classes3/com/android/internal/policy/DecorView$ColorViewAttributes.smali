.class public Lcom/android/internal/policy/DecorView$ColorViewAttributes;
.super Ljava/lang/Object;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorViewAttributes"
.end annotation


# instance fields
.field final hideWindowFlag:I

.field final horizontalGravity:I

.field final id:I

.field final seascapeGravity:I

.field final systemUiHideFlag:I

.field final transitionName:Ljava/lang/String;

.field final translucentFlag:I

.field final verticalGravity:I


# direct methods
.method private constructor <init>(IIIIILjava/lang/String;II)V
    .locals 0
    .param p1, "systemUiHideFlag"    # I
    .param p2, "translucentFlag"    # I
    .param p3, "verticalGravity"    # I
    .param p4, "horizontalGravity"    # I
    .param p5, "seascapeGravity"    # I
    .param p6, "transitionName"    # Ljava/lang/String;
    .param p7, "id"    # I
    .param p8, "hideWindowFlag"    # I

    .line 2817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2818
    iput p7, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    .line 2819
    iput p1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->systemUiHideFlag:I

    .line 2820
    iput p2, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    .line 2821
    iput p3, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    .line 2822
    iput p4, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    .line 2823
    iput p5, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    .line 2824
    iput-object p6, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    .line 2825
    iput p8, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->hideWindowFlag:I

    .line 2826
    return-void
.end method

.method synthetic constructor <init>(IIIIILjava/lang/String;IILcom/android/internal/policy/DecorView$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # I
    .param p8, "x7"    # I
    .param p9, "x8"    # Lcom/android/internal/policy/DecorView$1;

    .line 2804
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIIILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public isPresent(IIZ)Z
    .locals 1
    .param p1, "sysUiVis"    # I
    .param p2, "windowFlags"    # I
    .param p3, "force"    # Z

    .line 2829
    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->systemUiHideFlag:I

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->hideWindowFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible(IIIZ)Z
    .locals 2
    .param p1, "sysUiVis"    # I
    .param p2, "color"    # I
    .param p3, "windowFlags"    # I
    .param p4, "force"    # Z

    .line 2842
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(IIZ)Z

    move-result v0

    .line 2843
    .local v0, "present":Z
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v1

    return v1
.end method

.method public isVisible(ZIIZ)Z
    .locals 1
    .param p1, "present"    # Z
    .param p2, "color"    # I
    .param p3, "windowFlags"    # I
    .param p4, "force"    # Z

    .line 2836
    if-eqz p1, :cond_1

    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

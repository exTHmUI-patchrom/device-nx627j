.class Landroid/widget/AbsListView$CheckForLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# static fields
.field private static final INVALID_COORD:I = -0x1


# instance fields
.field private mX:F

.field private mY:F

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .line 3183
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    .line 3185
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    .line 3186
    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .line 3183
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView$CheckForLongPress;FF)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView$CheckForLongPress;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 3183
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$CheckForLongPress;->setCoords(FF)V

    return-void
.end method

.method private setCoords(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3189
    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    .line 3190
    iput p2, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    .line 3191
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 3195
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3196
    .local v0, "motionPosition":I
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3197
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 3198
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3199
    .local v2, "longPressPosition":I
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 3201
    .local v10, "longPressId":J
    const/4 v12, 0x0

    .line 3202
    .local v12, "handled":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView$CheckForLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v3, :cond_1

    .line 3203
    iget v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 3204
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v8, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    iget v9, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    move-object v4, v1

    move v5, v2

    move-wide v6, v10

    invoke-virtual/range {v3 .. v9}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result v12

    goto :goto_0

    .line 3206
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1, v2, v10, v11}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v12

    .line 3210
    :cond_1
    :goto_0
    if-eqz v12, :cond_2

    .line 3211
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/widget/AbsListView;->access$902(Landroid/widget/AbsListView;Z)Z

    .line 3212
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v4, -0x1

    iput v4, v3, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3213
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3214
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 3216
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v4, 0x2

    iput v4, v3, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3219
    .end local v2    # "longPressPosition":I
    .end local v10    # "longPressId":J
    .end local v12    # "handled":Z
    :cond_3
    :goto_1
    return-void
.end method

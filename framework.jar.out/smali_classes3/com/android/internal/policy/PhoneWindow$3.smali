.class Lcom/android/internal/policy/PhoneWindow$3;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;

    .line 3042
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 4
    .param p1, "layout"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .line 3062
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3065
    .local v0, "newParams":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 3066
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3067
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3068
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3069
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    const/16 v2, 0x400

    const/16 v3, 0x600

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 3071
    :cond_1
    return-void
.end method

.method public onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V
    .locals 4
    .param p1, "layout"    # Lcom/android/internal/widget/SwipeDismissLayout;
    .param p2, "alpha"    # F
    .param p3, "translate"    # F

    .line 3046
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3047
    .local v0, "newParams":Landroid/view/WindowManager$LayoutParams;
    float-to-int v1, p3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3048
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3049
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3051
    const/4 v1, 0x0

    .line 3052
    .local v1, "flags":I
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_0

    .line 3053
    const/16 v1, 0x400

    goto :goto_0

    .line 3055
    :cond_0
    const/16 v1, 0x200

    .line 3057
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    const/16 v3, 0x600

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 3058
    return-void
.end method

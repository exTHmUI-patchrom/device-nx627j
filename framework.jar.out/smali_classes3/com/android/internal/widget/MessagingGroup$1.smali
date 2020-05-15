.class Lcom/android/internal/widget/MessagingGroup$1;
.super Ljava/lang/Object;
.source "MessagingGroup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MessagingGroup;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MessagingGroup;

.field final synthetic val$firstLayout:Z


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MessagingGroup;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/MessagingGroup;

    .line 459
    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup$1;->this$0:Lcom/android/internal/widget/MessagingGroup;

    iput-boolean p2, p0, Lcom/android/internal/widget/MessagingGroup$1;->val$firstLayout:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 462
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup$1;->this$0:Lcom/android/internal/widget/MessagingGroup;

    invoke-static {v0}, Lcom/android/internal/widget/MessagingGroup;->access$000(Lcom/android/internal/widget/MessagingGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 463
    .local v1, "message":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 464
    goto :goto_0

    .line 466
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->fadeIn(Landroid/view/View;)V

    .line 467
    iget-boolean v2, p0, Lcom/android/internal/widget/MessagingGroup$1;->val$firstLayout:Z

    if-nez v2, :cond_1

    .line 468
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v2

    .line 469
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Lcom/android/internal/widget/MessagingLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 468
    invoke-static {v2, v3, v4}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startLocalTranslationFrom(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    .line 472
    .end local v1    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_1
    goto :goto_0

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup$1;->this$0:Lcom/android/internal/widget/MessagingGroup;

    invoke-static {v0}, Lcom/android/internal/widget/MessagingGroup;->access$000(Lcom/android/internal/widget/MessagingGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 474
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup$1;->this$0:Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 475
    const/4 v0, 0x1

    return v0
.end method

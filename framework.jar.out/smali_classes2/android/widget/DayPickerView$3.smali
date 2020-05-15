.class Landroid/widget/DayPickerView$3;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DayPickerView;


# direct methods
.method constructor <init>(Landroid/widget/DayPickerView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/DayPickerView;

    .line 429
    iput-object p1, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 433
    iget-object v0, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v0}, Landroid/widget/DayPickerView;->access$100(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 434
    const/4 v0, -0x1

    .local v0, "direction":I
    :goto_0
    goto :goto_1

    .line 435
    .end local v0    # "direction":I
    :cond_0
    iget-object v0, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v0}, Landroid/widget/DayPickerView;->access$200(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 436
    const/4 v0, 0x1

    goto :goto_0

    .line 438
    .restart local v0    # "direction":I
    :goto_1
    nop

    .line 443
    iget-object v1, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v1}, Landroid/widget/DayPickerView;->access$400(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 447
    .local v1, "animate":Z
    iget-object v2, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v2}, Landroid/widget/DayPickerView;->access$500(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v0

    .line 448
    .local v2, "nextItem":I
    iget-object v3, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v3}, Landroid/widget/DayPickerView;->access$500(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    .line 449
    return-void

    .line 438
    .end local v0    # "direction":I
    .end local v1    # "animate":Z
    .end local v2    # "nextItem":I
    :cond_1
    return-void
.end method

.class Lcom/android/internal/widget/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ViewPager;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ViewPager;)V
    .locals 0

    .line 2755
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager$PagerObserver;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ViewPager;Lcom/android/internal/widget/ViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/ViewPager;
    .param p2, "x1"    # Lcom/android/internal/widget/ViewPager$1;

    .line 2755
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager$PagerObserver;-><init>(Lcom/android/internal/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 2758
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$PagerObserver;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->dataSetChanged()V

    .line 2759
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 2762
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$PagerObserver;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->dataSetChanged()V

    .line 2763
    return-void
.end method

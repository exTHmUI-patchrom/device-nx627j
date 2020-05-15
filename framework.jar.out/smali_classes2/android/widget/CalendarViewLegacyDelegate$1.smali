.class Landroid/widget/CalendarViewLegacyDelegate$1;
.super Landroid/database/DataSetObserver;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/CalendarViewLegacyDelegate;->setUpAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .line 698
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$1;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 6

    .line 701
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$1;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$600(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$1;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$700(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->getSelectedDay()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 703
    .local v0, "selectedDay":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$1;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$600(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$1;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v2, v2, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    const/4 v3, 0x1

    .line 704
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 705
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 706
    invoke-virtual {v0, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    .line 703
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/widget/CalendarView$OnDateChangeListener;->onSelectedDayChange(Landroid/widget/CalendarView;III)V

    .line 708
    .end local v0    # "selectedDay":Landroid/icu/util/Calendar;
    :cond_0
    return-void
.end method

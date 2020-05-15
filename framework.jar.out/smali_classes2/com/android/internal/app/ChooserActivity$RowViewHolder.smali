.class Lcom/android/internal/app/ChooserActivity$RowViewHolder;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RowViewHolder"
.end annotation


# instance fields
.field final cells:[Landroid/view/View;

.field itemIndices:[I

.field measuredRowHeight:I

.field final row:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "row"    # Landroid/view/ViewGroup;
    .param p2, "cellCount"    # I

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1411
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 1412
    new-array v0, p2, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    .line 1413
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    .line 1414
    return-void
.end method


# virtual methods
.method public measure()V
    .locals 2

    .line 1417
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1418
    .local v0, "spec":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 1419
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    .line 1420
    return-void
.end method

.class public Lcom/android/internal/widget/AccountViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AccountViewAdapter$AccountElements;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AccountViewAdapter$AccountElements;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AccountViewAdapter$AccountElements;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/widget/AccountViewAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 67
    if-nez p2, :cond_0

    .line 68
    new-instance v0, Lcom/android/internal/widget/AccountItemView;

    iget-object v1, p0, Lcom/android/internal/widget/AccountViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/AccountItemView;-><init>(Landroid/content/Context;)V

    .local v0, "view":Lcom/android/internal/widget/AccountItemView;
    goto :goto_0

    .line 70
    .end local v0    # "view":Lcom/android/internal/widget/AccountItemView;
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/AccountItemView;

    .line 72
    .restart local v0    # "view":Lcom/android/internal/widget/AccountItemView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AccountViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;

    .line 73
    .local v1, "elements":Lcom/android/internal/widget/AccountViewAdapter$AccountElements;
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AccountItemView;->setViewItem(Lcom/android/internal/widget/AccountViewAdapter$AccountElements;)V

    .line 74
    return-object v0
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/AccountViewAdapter$AccountElements;>;"
    iput-object p1, p0, Lcom/android/internal/widget/AccountViewAdapter;->mData:Ljava/util/List;

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/widget/AccountViewAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method
